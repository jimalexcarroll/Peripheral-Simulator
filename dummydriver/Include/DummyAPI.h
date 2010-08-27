#ifndef __DUMMY_API_H__
#define __DUMMY_API_H__

#include <stdio.h>
#include <ctype.h>
#include <fcntl.h>

#include "DummyAccessUser.h"
#include "UserDebug.h"

/* Protoypes of IOCTL accessors */

int DummyAPI_Open(char* driver);
int DummyAPI_Debug(int filedesc);
int DummyAPI_ReadRegister(int filedesc, DummyRegister* reg);
int DummyAPI_WriteRegister(int filedesc, DummyRegister* reg);
int DummyAPI_NotifyEvent(int filedesc, unsigned long event);
int DummyAPI_Close(int filedesc);


/* Open the driver */
int DummyAPI_Open(char* driver)
{
  __TRACE__("DummyAPI_Open \n")
  int filedesc = open(driver, O_RDWR);
  __TRACE1__("  | filedesc:%d \n", filedesc)

  return filedesc;
}


/* Send debug */
int DummyAPI_Debug(int filedesc)
{
  __TRACE__("DummyAPI_Debug \n")
  int err = ioctl(filedesc, DummyDebug);

  return err;
}


/* Read register */
int DummyAPI_ReadRegister(int filedesc, DummyRegister* reg)
{
  __TRACE__("DummyAPI_ReadRegister \n")
  int err = ioctl(filedesc, DummyReadRegister, reg);
  __TRACE1__("  | err:%d \n", err)
  return err;
}


/* Write register */
int DummyAPI_WriteRegister(int filedesc, DummyRegister* reg)
{
  __TRACE__("DummyAPI_WriteRegister \n")
  int err = ioctl(filedesc, DummyWriteRegister, reg);
  __TRACE1__("  | err:%d \n", err)
  return err;
}


/* Send notify event */
int DummyAPI_NotifyEvent(int filedesc, unsigned long event)
{
  __TRACE__("DummyAPI_NotifyEvent \n")
  int err = ioctl(filedesc, DummyNotifyEvent, event);
  __TRACE1__("  | err:%d\n", err)
  return err;
}


/* close the driver */
int DummyAPI_Close(int filedesc)
{
  __TRACE__("DummyAPI_Close \n")
  int err = close(filedesc);
  __TRACE1__("  | err:%d \n", err)
  return err;
}


#endif // __DUMMY_API_H__
