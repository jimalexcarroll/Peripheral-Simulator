#include "DummyAccess.h"
#include <linux/interrupt.h>
#include <linux/time.h>

MODULE_LICENSE("Dual BSD/GPL");

module_init(DummyAccess_Init);
module_exit(DummyAccess_Exit);

struct DummyAccess global_dev;
void DummyAccess_DoTasklet(unsigned long);

struct timeval tv_before;
struct timeval tv_after;

DECLARE_TASKLET(dummy_tasklet, DummyAccess_DoTasklet, (unsigned long)&global_dev);

void DummyAccess_DoTasklet(unsigned long data)
{
    struct DummyAccess *dev;

    DummyAccess_EndTimer("tasklt handler");
    dev = (struct DummyAccess*)(data);
    if (dev->asyncqueue)
    {
      kill_fasync(&dev->asyncqueue, SIGIO, POLL_IN);
    }
}

// Timer output
void DummyAccess_StartTimer(char *logstring)
{
    __TRACE1__("START: %s \n", logstring)
    do_gettimeofday(&tv_before);
}

void DummyAccess_EndTimer(char *logstring)
{
    long sec_diff; 
    long usec_diff; 

    do_gettimeofday(&tv_after);

    sec_diff = tv_after.tv_sec - tv_before.tv_sec;
    usec_diff = tv_after.tv_usec - tv_before.tv_usec;

    __TRACE2__("DIFF: %lds %ldus \n", sec_diff, usec_diff)
    __TRACE1__("END: %s \n", logstring)
}


ssize_t DummyAccess_Read(struct file *filp, char __user *buf, size_t count,
                loff_t *f_pos)
{
    __TRACE__("DummyAccess_Read\n")
    return 0;
}


ssize_t DummyAccess_Write(struct file *filp, const char __user *buf, size_t count,
                loff_t *f_pos)
{
   __TRACE__("DummyAccess_Write\n")
    return 0;
}




int DummyAccess_Ioctl(struct inode *inode, struct file *filp,
                 unsigned int cmd, unsigned long arg)
{
    int err = 0;


    __TRACE1__("DummyAccess_Ioctl - cmd %d\n", cmd)

    switch (cmd)
    {
        case DummyDebug:
        {
            __TRACE__("DummyDebug\n")
            break;
        }

        case DummyReadRegister:
        {
            DummyRegister* Dummyreg;
 	    int *bulk_user_ptr;

           __TRACE__("DummyReadRegister\n")

            Dummyreg = kmalloc(sizeof(DummyRegister),  GFP_KERNEL);
	    
	    DummyAccess_StartTimer("copy register");
            err = copy_from_user((void*)Dummyreg, (void*)arg, sizeof(DummyRegister));
	    DummyAccess_EndTimer("copy register");

	    /* now copy over the bulk data */
            bulk_user_ptr = Dummyreg->bulk;
	    __TRACE1__("  | bulksize:%d \n", Dummyreg->bulksize)
	    Dummyreg->bulk = kmalloc(sizeof(int) * Dummyreg->bulksize, GFP_KERNEL);

	    DummyAccess_StartTimer("copy bulk");
	    err = copy_from_user((void*)Dummyreg->bulk, (void*)bulk_user_ptr, Dummyreg->bulksize);
	    DummyAccess_EndTimer("copy bulk");


            if (err == 0)
            {
                __TRACE1__("Register Address = 0x%08X\n", Dummyreg->address)            

                /* ioread32() to access real register */

                Dummyreg->value=0xAA55AA55;

		DummyAccess_StartTimer("copy value");
                err = copy_to_user((void*)arg, (void*)Dummyreg, sizeof(DummyRegister));
		DummyAccess_EndTimer("copy value");
            }
            break;
        }

        case DummyWriteRegister:
        {
            DummyRegister* Dummyreg;
            __TRACE__("DummyWriteRegister\n")

            Dummyreg = kmalloc(sizeof(DummyRegister),  GFP_KERNEL);
            err = copy_from_user((void*)Dummyreg, (void*)arg, sizeof(DummyRegister));
            __TRACE1__("Register Address = 0x%08X\n", Dummyreg->address)            
            __TRACE1__("Register Value = 0x%08X\n", Dummyreg->value)            

            /* iowrite32() to access real register */
            break;
        }

        case DummyNotifyEvent:
        {
            struct DummyAccess* dev = filp->private_data;

            __TRACE__("DummyNotifyEvent\n")
	    err = copy_from_user((void*)&(device.event), (void*)(arg), sizeof(int));
	    __TRACE1__("Event ID = %d\n", device.event);

	    __TRACE1__("dev address = 0x%08X\n", (unsigned int)dev)
	    
	    global_dev = *dev;
	    DummyAccess_StartTimer("tasklet schedule");
	    tasklet_schedule(&dummy_tasklet);

            /*if (dev->asyncqueue)
	    {
	       kill_fasync(&dev->asyncqueue, SIGIO, POLL_IN);
	    }*/

            break;
        }

        default:
            ;

    };
 
    return err;
}




int DummyAccess_Open(struct inode *inode, struct file *filp)
{
    __TRACE__("DummyAccess_Open\n")
    filp->private_data = &device;
    return 0;
}




int DummyAccess_Release(struct inode *inode, struct file *filp)
{
    __TRACE__("DummyAccess_Release\n")
    DummyAccess_FAsync(-1, filp, 0);
    return 0;
}




static int DummyAccess_FAsync(int fd, struct file *filp, int mode)
{
    struct DummyAccess *dev;

   __TRACE__("DummyAccess_FAsync\n")

    dev = filp->private_data;

    return fasync_helper(fd, filp, mode, &dev->asyncqueue);
}




static int __init DummyAccess_Init(void)
{
    int err;
    dev_t dev;

    __TRACE__("DummyAccess_Init\n")

#ifdef __NEW_DEV_REGISTER__

    __TRACE__("Using Kernel 2.6 driver registration mechanism\n")
   
    /* Set device numbers and register device driver*/
    err = alloc_chrdev_region(&dev, DummyMinor, NumDummies, "Dummy");
    DummyMajor=MAJOR(dev);

    if (err!=0) 
    {
        __TRACE2__("Dummy device number allocation failure - %d %d\n", DummyMajor, DummyMinor)
    }
    else
    {
        __TRACE2__("Dummy device number - %d %d\n", DummyMajor, DummyMinor)
    }

    /* Associate functions with driver */
    
    cdev_init(&device.dev,&DummyAccess_fops);
    device.dev.owner = THIS_MODULE;
    device.dev.ops = &DummyAccess_fops;
    cdev_add(&device.dev, dev, 1);

    if (err!=0) 
    {
        __TRACE1__("Dummy device add failure - %d\n", err)
    }
    else
    {
        __TRACE__("Dummy device add OK\n")
    }

#else /* use the older (pre 2.6) mechanism for registration */

    __TRACE__("Using older (pre Kernel 2.6) driver registration mechanism\n")

    DummyMajor = register_chrdev(0, "Dummy", &DummyAccess_fops);
    if (DummyMajor <= 0)
    {
      __TRACE1__("Dummy dev number allocation failure - %d\n", DummyMajor)
      err = -EBUSY;
    }
    else
    {
      __TRACE1__("Dummy device number: %d\n", DummyMajor)
      err = 0;
    }

#endif


    return err; 
}




static void __exit DummyAccess_Exit(void)
{
    dev_t dev;

    __TRACE__("DummyAccess_Exit\n")
  
#ifdef __NEW_DEV_REGISTER__
    /* Unregister device driver */
    dev = MKDEV(DummyMajor, DummyMinor);
    unregister_chrdev_region(dev, NumDummies);

    /* Disassociate functions from driver */
    cdev_del(&device.dev); 

#else /* use pre 2.6 mechanism for unregister */

    if (unregister_chrdev(DummyMajor, "Dummy"))
    {
       __TRACE1__("Dummy device number unregister err:%d\n", DummyMajor)
    }

#endif
}
