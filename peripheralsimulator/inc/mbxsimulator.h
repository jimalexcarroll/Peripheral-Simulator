#ifndef __MBX_SIMULATOR_H__
#define __MBX_SIMULATOR_H__
#include<linux/init.h>
#include<linux/module.h>
#include<linux/kdev_t.h>
#include<linux/fs.h>
#include<linux/cdev.h>
#include<linux/ioctl.h>
#include<linux/slab.h>
#include<linux/poll.h>
#include<asm/uaccess.h>

#include"mbxsimulatoruser.h"
#include"kerneldebug.h"

/* Driver Functions */

int MBXSimulator_Ioctl(struct inode *inode, struct file *filp,
                 unsigned int cmd, unsigned long arg);
int MBXSimulator_Open(struct inode *inode, struct file *filp);
int MBXSimulator_Release(struct inode *inode, struct file *filp);
static int __init MBXSimulator_Init(void);
static void __exit MBXSimulator_Exit(void);




/* Data Structures */
static struct file_operations MBXSimulator_fops =
{
    .owner   = THIS_MODULE,
    .ioctl   = MBXSimulator_Ioctl,
    .open    = MBXSimulator_Open,
    .release = MBXSimulator_Release,
};

struct MBXSimulator 
{
    struct cdev dev;
};




/* Global Variables */
struct MBXSimulator device;

int MBXSimulatorMajor = 0;
int MBXSimulatorMinor = 0;
int NumMBXs  = 1;

#endif //__MBX_SIMULATOR_H__



