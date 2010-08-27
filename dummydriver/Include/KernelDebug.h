#ifndef __KERNEL_DEBUG_H__
#define __KERNEL_DEBUG_H__


#ifdef __DEBUG_TRACE__

#define __TRACE__(a) printk(KERN_WARNING a);
#define __TRACE1__(a,b) printk(KERN_WARNING a,b);
#define __TRACE2__(a,b,c) printk(KERN_WARNING a,b,c);

#else // not __DEBUG_TRACE__

#define __TRACE__(a)
#define __TRACE1__(a,b)
#define __TRACE2__(a,b,c)

#endif // __DEBUG_TRACE__

#endif // __KERNEL_DEBUG_H__
