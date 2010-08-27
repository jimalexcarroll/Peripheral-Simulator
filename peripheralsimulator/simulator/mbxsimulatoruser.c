#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <fcntl.h>

#include "mbxsimulatoruser.h"

int main (int argc, char* argv[])
{
    int filedesc, err, event;
    MBXRegister reg;

    /* Call driver functions */
    /* Open  */
    filedesc = open("/dev/mbxsimulator", O_RDWR);

    switch (argc)
    {
        case 1:
        {
            printf("Usage: mbxsim -command addr [value]\n");
            printf("command = -r : Read specified register\n");
            printf("command = -w : Write to specified register\n");
            break;
        }

        case 2:
        {
            reg.address = atoi(argv[1]);
            err = ioctl(filedesc, MBXSimulatorReadRegister, &reg);
            printf("MBX Simulator READ:\n");
            printf("Address = 0x%08X\n", reg.address);
            printf("Value   = 0x%08X\n", reg.value);
            break;
        }

        case 3:
        {
            reg.address = atoi(argv[1]);
            reg.value = atoi(argv[2]);
            err = ioctl(filedesc, MBXSimulatorWriteRegister, &reg);
            printf("MBX Simulator WRITE:\n");
            printf("Address = 0x%08X\n", reg.address);
            printf("Value   = 0x%08X\n", reg.value);
            break;
        }

        default:
            printf("Incorrect usage!\n");
    }

    /* Close */
    err = close(filedesc);

    return err;
}

