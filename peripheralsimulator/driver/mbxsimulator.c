#include"mbxsimulator.h"

MODULE_LICENSE("Dual BSD/GPL");

module_init(MBXSimulator_Init);
module_exit(MBXSimulator_Exit);

int MBXSimulator_Ioctl(struct inode *inode, struct file *filp,
                 unsigned int cmd, unsigned long arg)
{
    int err = 0;

    __TRACE1__("MBXSimulator_Ioctl - cmd %d\n", cmd)

    switch (cmd)
    {
        case MBXSimulatorReadRegister:
        {
            MBXRegister* MBXreg;
            __TRACE__("MBXSimulatorReadRegister\n")

            break;
        }

        case MBXSimulatorWriteRegister:
        {
            MBXRegister* MBXreg;
            __TRACE__("MBXSimulatorWriteRegister\n")

            break;
        }

        default:
            ;

    };

    return err;
}




int MBXSimulator_Open(struct inode *inode, struct file *filp)
{
    __TRACE__("MBXSimulator_Open\n")

    filp->private_data = &device;

    return 0;
}




int MBXSimulator_Release(struct inode *inode, struct file *filp)
{
    __TRACE__("MBXSimulator_Release\n")
    return 0;
}




static int __init MBXSimulator_Init(void)
{
    dev_t dev;
    int err;

    __TRACE__("MBXSimulator_Init\n")

    /* Set device numbers and register device driver*/
    err = alloc_chrdev_region(&dev, MBXSimulatorMinor, NumMBXs, "MBXSimulator");
    MBXSimulatorMajor=MAJOR(dev);

    if (err!=0) 
    {
        __TRACE2__("MBX simulator device number allocation failure - %d %d\n", 
            MBXSimulatorMajor, MBXSimulatorMinor)
    }
    else
    {
        __TRACE2__("MBX simulator device number - %d %d\n", 
            MBXSimulatorMajor, MBXSimulatorMinor)
    }

    /* Associate functions with driver */
    cdev_init(&device.dev,&MBXSimulator_fops);
    device.dev.owner = THIS_MODULE;
    device.dev.ops = &MBXSimulator_fops;
    cdev_add(&device.dev, dev, 1);

    if (err!=0) 
    {
        __TRACE1__("MBX simulator device add failure - %d\n", err)
    }
    else
    {
        __TRACE__("MBX simulator device add OK\n")
    }

    return err; 
}




static void __exit MBXSimulator_Exit(void)
{
    dev_t dev;

    __TRACE__("MBXSimulator_Exit\n")
    
    /* Unregister device driver */
    dev = MKDEV(MBXSimulatorMajor, MBXSimulatorMinor);
    unregister_chrdev_region(dev, NumMBXs);

    /* Disassociate functions from driver */
    cdev_del(&device.dev); 
}
