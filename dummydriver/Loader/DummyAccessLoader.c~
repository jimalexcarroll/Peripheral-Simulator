#include <stdio.h>
#include <ctype.h>
#include <fcntl.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

// For timing info
#include <sys/time.h>
#include <time.h>

#include "DummyAccessUser.h"
#include "UserDebug.h"
#include "DummyAPI.h"

struct timeval tv_before;
struct timeval tv_after;

static int sigio_counter = 0;
const int bulksize = 10000;

void StartTimer(char *logstring);
void EndTimer(char *logstring);

void EventHandler(int arg)
{
    EndTimer("NotifyEvent OUT");
    if (arg == SIGIO)
    {
       __TRACE1__("Event handler called for SIGIO, with arg:%d \n", arg)
       sigio_counter++;
    }
    else
    {
       __TRACE__("Event handler called for non-SIGIO")
    }
    return;
}


// Timer output
void StartTimer(char *logstring)
{
    __TRACE1__("START: %s \n", logstring)
    gettimeofday(&tv_before, NULL);
}

void EndTimer(char *logstring)
{
    gettimeofday(&tv_after, NULL);

    long sec_diff = tv_after.tv_sec - tv_before.tv_sec;
    long usec_diff = tv_after.tv_usec - tv_before.tv_usec;

    __TRACE2__("DIFF: %lds %ldus \n", sec_diff, usec_diff)
    __TRACE1__("END: %s \n", logstring)
}


int main (void)
{
    int filedesc, err, event;
    DummyRegister reg;

    /* Load driver using script */
    __TRACE__("Loading DummyAccess device driver\n")
    system("./DummyAccess_Load");
    __TRACE__("DummyAccess device driver loaded OK\n")
    system("cat /proc/devices");
    getchar();

    /* Call driver functions */
    /* Open  */
    filedesc = DummyAPI_Open("/dev/DummyAccess0");

    /* IOCTL */
    err = DummyAPI_Debug(filedesc);

    reg.address = 0xDEADBEEF;
    reg.bulk = malloc(sizeof(int) * bulksize);
    reg.bulksize = bulksize;

    err = DummyAPI_ReadRegister(filedesc, &reg);
    __TRACE1__("Register value - 0x%08X\n", reg.value)

    reg.address = 0xFEEDBEEF;
    reg.value = 0xA5A5A5A5;
    err = DummyAPI_WriteRegister(filedesc, &reg);

    signal(SIGIO, EventHandler);
    fcntl(filedesc, F_SETOWN, getpid());
    fcntl(filedesc, F_SETFL, fcntl(filedesc, F_GETFL) | FASYNC);
    event=15;

    StartTimer("NotifyEvent IN");
    err = DummyAPI_NotifyEvent(filedesc, (unsigned long)(&event));

    /* Close */
    err = close(filedesc);
    __TRACE1__("DummyAccess close - %d\n", err)

    getchar();

    /* Unload driver using script */
    __TRACE__("Unloading DummyAccess device driver\n")
    system("./DummyAccess_Unload");
    __TRACE__("DummyAccess device driver unloaded OK\n")
    system("cat /proc/devices");

    __TRACE1__("Total callback count is %d \n", sigio_counter);

    return err;
}

