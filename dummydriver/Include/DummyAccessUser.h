#ifndef __DUMMY_ACCESS_USER_H__
#define __DUMMY_ACCESS_USER_H__

#include <linux/ioctl.h>

#define DummyMagic 'D'




/* Structures */
typedef struct _DummyRegister
{
    int address;
    int value;
    int *bulk;
    int bulksize;
} DummyRegister;




/* IOCTLs */
#define DummyDebug          _IO(DummyMagic, 0)
#define DummyReadRegister   _IOR(DummyMagic, 1, DummyRegister) 
#define DummyWriteRegister  _IOW(DummyMagic, 2, DummyRegister)
#define DummyNotifyEvent    _IOR(DummyMagic, 3, int)

#endif // __DUMMY_ACCESS_USER_H__


