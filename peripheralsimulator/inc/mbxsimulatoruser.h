#ifndef __MBX_SIMULATOR_USER_H__
#define __MBX_SIMULATOR_USER_H__

#include <linux/ioctl.h>

#define MBXSimulatorMagic 'S'




/* Structures */
typedef struct _MBXRegister
{
    int address;
    int value;
} MBXRegister;




/* IOCTLs */
#define MBXSimulatorReadRegister   _IOR(MBXSimulatorMagic, 1, MBXRegister) 
#define MBXSimulatorWriteRegister  _IOW(MBXSimulatorMagic, 2, MBXRegister)

#endif // __MBX_SIMULATOR_USER_H__


