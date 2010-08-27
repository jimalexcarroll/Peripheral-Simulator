#ifndef __DUMMY_ACCESS_H__
#define __DUMMY_ACCESS_H__
#include<linux/init.h>
#include<linux/module.h>
#include<linux/kdev_t.h>
#include<linux/fs.h>
#include<linux/ioctl.h>
#include<linux/slab.h>
#include<linux/poll.h>
#include<asm/uaccess.h>

#define __NEW_DEV_REGISTER__ 

#ifdef __NEW_DEV_REGISTER__
#include<linux/cdev.h>
#endif

#include"DummyAccessUser.h"
#include"KernelDebug.h"

/* Driver Functions */

ssize_t DummyAccess_Read(struct file *filp, char __user *buf, size_t count,
                loff_t *f_pos);
ssize_t DummyAccess_Write(struct file *filp, const char __user *buf, size_t count,
                loff_t *f_pos);
int DummyAccess_Ioctl(struct inode *inode, struct file *filp,
                 unsigned int cmd, unsigned long arg);
int DummyAccess_Open(struct inode *inode, struct file *filp);
int DummyAccess_Release(struct inode *inode, struct file *filp);
static int DummyAccess_FAsync(int fd, struct file *filp, int mode);
static int __init DummyAccess_Init(void);
static void __exit DummyAccess_Exit(void);

void DummyAccess_StartTimer(char *logstring);
void DummyAccess_EndTimer(char *logstring);


/* Data Structures */
static struct file_operations DummyAccess_fops =
{
    .owner   = THIS_MODULE,
    .read    = DummyAccess_Read,
    .write   = DummyAccess_Write,
    .ioctl   = DummyAccess_Ioctl,
    .open    = DummyAccess_Open,
    .release = DummyAccess_Release,
    .fasync  = DummyAccess_FAsync
};

struct DummyAccess 
{
#ifdef __NEW_DEV_REGISTER__
    struct cdev dev;
#endif
    struct fasync_struct *asyncqueue;
    int event;
};




/* Global Variables */
struct DummyAccess device;

int DummyMajor = 0;
int DummyMinor = 0;
int NumDummies  = 1;

#endif //__DUMMY_ACCESS_H__



