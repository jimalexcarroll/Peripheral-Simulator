cmd_/home/jim/mbxsimulator/group/../driver/mbxsimulator.o := gcc -m32 -Wp,-MD,/home/jim/mbxsimulator/group/../driver/.mbxsimulator.o.d  -nostdinc -isystem /usr/lib/gcc/i586-suse-linux/4.1.2/include -D__KERNEL__ -Iinclude -Iinclude2 -I/usr/src/linux-2.6.18.2-34/include -include include/linux/autoconf.h   -I/home/jim/mbxsimulator/group -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration -fno-strict-aliasing -fno-common -Os -pipe -msoft-float -mpreferred-stack-boundary=2 -march=i586 -mtune=generic -mregparm=3 -ffreestanding -I/usr/src/linux-2.6.18.2-34/include/asm-i386/mach-generic -Iinclude/asm-i386/mach-generic -I/usr/src/linux-2.6.18.2-34/include/asm-i386/mach-default -Iinclude/asm-i386/mach-default -fomit-frame-pointer -fasynchronous-unwind-tables -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign  -I/home/jim/mbxsimulator/group/../inc -D__DEBUG_TRACE__ -DMODULE -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(mbxsimulator)"  -D"KBUILD_MODNAME=KBUILD_STR(mbxsimulator)" -c -o /home/jim/mbxsimulator/group/../driver/.tmp_mbxsimulator.o /home/jim/mbxsimulator/group/../driver/mbxsimulator.c

deps_/home/jim/mbxsimulator/group/../driver/mbxsimulator.o := \
  /home/jim/mbxsimulator/group/../driver/mbxsimulator.c \
  /home/jim/mbxsimulator/group/../inc/mbxsimulator.h \
  /usr/src/linux-2.6.18.2-34/include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
    $(wildcard include/config/acpi/hotplug/memory/module.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/compiler.h \
  /usr/src/linux-2.6.18.2-34/include/linux/compiler-gcc4.h \
    $(wildcard include/config/forced/inlining.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/compiler-gcc.h \
  /usr/src/linux-2.6.18.2-34/include/linux/module.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/kallsyms.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/sched.h \
    $(wildcard include/config/detect/softlockup.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/pm.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/auxvec.h \
  include2/asm/auxvec.h \
  include2/asm/param.h \
    $(wildcard include/config/hz.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/capability.h \
  /usr/src/linux-2.6.18.2-34/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/resources/64bit.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/posix_types.h \
  /usr/src/linux-2.6.18.2-34/include/linux/stddef.h \
  include2/asm/posix_types.h \
  include2/asm/types.h \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/lsf.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/thread_info.h \
  /usr/src/linux-2.6.18.2-34/include/linux/bitops.h \
  include2/asm/bitops.h \
  include2/asm/alternative.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/sched.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/hweight.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/fls64.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/ext2-non-atomic.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/le.h \
  include2/asm/byteorder.h \
    $(wildcard include/config/x86/bswap.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/byteorder/little_endian.h \
  /usr/src/linux-2.6.18.2-34/include/linux/byteorder/swab.h \
  /usr/src/linux-2.6.18.2-34/include/linux/byteorder/generic.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bitops/minix.h \
  include2/asm/thread_info.h \
    $(wildcard include/config/4kstacks.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include2/asm/page.h \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/flatmem.h) \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/page.h \
  include2/asm/processor.h \
    $(wildcard include/config/x86/ht.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/mk7.h) \
  include2/asm/vm86.h \
    $(wildcard include/config/vm86.h) \
  include2/asm/math_emu.h \
  include2/asm/sigcontext.h \
  include2/asm/segment.h \
  include2/asm/cpufeature.h \
  include2/asm/msr.h \
  include2/asm/system.h \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/cmpxchg.h) \
    $(wildcard include/config/x86/oostore.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/printk.h) \
  /usr/lib/gcc/i586-suse-linux/4.1.2/include/stdarg.h \
  /usr/src/linux-2.6.18.2-34/include/linux/linkage.h \
  include2/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include2/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/bug.h \
  /usr/src/linux-2.6.18.2-34/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include2/asm/irqflags.h \
  /usr/src/linux-2.6.18.2-34/include/linux/cache.h \
  include2/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include2/asm/percpu.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/percpu.h \
  /usr/src/linux-2.6.18.2-34/include/linux/cpumask.h \
  /usr/src/linux-2.6.18.2-34/include/linux/bitmap.h \
  /usr/src/linux-2.6.18.2-34/include/linux/string.h \
  include2/asm/string.h \
  /usr/src/linux-2.6.18.2-34/include/linux/stringify.h \
  /usr/src/linux-2.6.18.2-34/include/linux/spinlock_types.h \
  /usr/src/linux-2.6.18.2-34/include/linux/lockdep.h \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/locking.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/list.h \
  /usr/src/linux-2.6.18.2-34/include/linux/poison.h \
  /usr/src/linux-2.6.18.2-34/include/linux/prefetch.h \
  /usr/src/linux-2.6.18.2-34/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
  include2/asm/spinlock_types.h \
  include2/asm/spinlock.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  include2/asm/atomic.h \
    $(wildcard include/config/m386.h) \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/atomic.h \
  include2/asm/rwlock.h \
  /usr/src/linux-2.6.18.2-34/include/linux/spinlock_api_smp.h \
  include2/asm/current.h \
  /usr/src/linux-2.6.18.2-34/include/linux/timex.h \
    $(wildcard include/config/time/interpolation.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/time.h \
  /usr/src/linux-2.6.18.2-34/include/linux/seqlock.h \
  include2/asm/timex.h \
    $(wildcard include/config/x86/elan.h) \
  include2/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
    $(wildcard include/config/x86/generic.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/config.h \
    $(wildcard include/config/h.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/jiffies.h \
  /usr/src/linux-2.6.18.2-34/include/linux/calc64.h \
  include2/asm/div64.h \
  /usr/src/linux-2.6.18.2-34/include/linux/rbtree.h \
  /usr/src/linux-2.6.18.2-34/include/linux/errno.h \
  include2/asm/errno.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/errno.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/errno-base.h \
  /usr/src/linux-2.6.18.2-34/include/linux/nodemask.h \
  /usr/src/linux-2.6.18.2-34/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include2/asm/semaphore.h \
  /usr/src/linux-2.6.18.2-34/include/linux/wait.h \
  /usr/src/linux-2.6.18.2-34/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include2/asm/rwsem.h \
  include2/asm/ptrace.h \
    $(wildcard include/config/frame/pointer.h) \
  include2/asm/mmu.h \
  include2/asm/cputime.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/cputime.h \
  /usr/src/linux-2.6.18.2-34/include/linux/smp.h \
  include2/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
  include2/asm/fixmap.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/f00f/bug.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pci/mmconfig.h) \
  include2/asm/acpi.h \
    $(wildcard include/config/acpi/sleep.h) \
  /usr/src/linux-2.6.18.2-34/include/acpi/pdc_intel.h \
  include2/asm/apicdef.h \
    $(wildcard include/config/xen.h) \
  include2/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include2/asm/mpspec.h \
  include2/asm/mpspec_def.h \
  /usr/src/linux-2.6.18.2-34/include/asm-i386/mach-generic/mach_mpspec.h \
  include2/asm/io_apic.h \
    $(wildcard include/config/pci/msi.h) \
  include2/asm/apic.h \
    $(wildcard include/config/x86/good/apic.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/pm.h \
  /usr/src/linux-2.6.18.2-34/include/asm-i386/mach-generic/mach_apicdef.h \
  include2/asm/genapic.h \
  /usr/src/linux-2.6.18.2-34/include/linux/sem.h \
    $(wildcard include/config/sysvipc.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/ipc.h \
  include2/asm/ipcbuf.h \
  include2/asm/sembuf.h \
  /usr/src/linux-2.6.18.2-34/include/linux/signal.h \
  include2/asm/signal.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/signal.h \
  include2/asm/siginfo.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/siginfo.h \
  /usr/src/linux-2.6.18.2-34/include/linux/securebits.h \
  /usr/src/linux-2.6.18.2-34/include/linux/fs_struct.h \
  /usr/src/linux-2.6.18.2-34/include/linux/completion.h \
  /usr/src/linux-2.6.18.2-34/include/linux/pid.h \
  /usr/src/linux-2.6.18.2-34/include/linux/rcupdate.h \
  /usr/src/linux-2.6.18.2-34/include/linux/percpu.h \
  /usr/src/linux-2.6.18.2-34/include/linux/slab.h \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/gfp.h \
    $(wildcard include/config/dma/is/dma32.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/notifier.h \
  /usr/src/linux-2.6.18.2-34/include/linux/mutex.h \
  /usr/src/linux-2.6.18.2-34/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  include2/asm/topology.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/topology.h \
  /usr/src/linux-2.6.18.2-34/include/linux/kmalloc_sizes.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/large/allocs.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include2/asm/seccomp.h \
  /usr/src/linux-2.6.18.2-34/include/linux/unistd.h \
  include2/asm/unistd.h \
  /usr/src/linux-2.6.18.2-34/include/linux/futex.h \
    $(wildcard include/config/futex.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/param.h \
  /usr/src/linux-2.6.18.2-34/include/linux/resource.h \
  include2/asm/resource.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/resource.h \
  /usr/src/linux-2.6.18.2-34/include/linux/timer.h \
  /usr/src/linux-2.6.18.2-34/include/linux/hrtimer.h \
    $(wildcard include/config/no/idle/hz.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/aio.h \
    $(wildcard include/config/epoll.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/workqueue.h \
  /usr/src/linux-2.6.18.2-34/include/linux/aio_abi.h \
  /usr/src/linux-2.6.18.2-34/include/linux/sysdev.h \
  /usr/src/linux-2.6.18.2-34/include/linux/kobject.h \
  /usr/src/linux-2.6.18.2-34/include/linux/sysfs.h \
    $(wildcard include/config/sysfs.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/kref.h \
  /usr/src/linux-2.6.18.2-34/include/linux/stat.h \
  include2/asm/stat.h \
  /usr/src/linux-2.6.18.2-34/include/linux/kmod.h \
    $(wildcard include/config/kmod.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/elf.h \
  /usr/src/linux-2.6.18.2-34/include/linux/elf-em.h \
  include2/asm/elf.h \
    $(wildcard include/config/compat/vdso.h) \
  include2/asm/user.h \
  /usr/src/linux-2.6.18.2-34/include/linux/utsname.h \
  include2/asm/desc.h \
  include2/asm/ldt.h \
  /usr/src/linux-2.6.18.2-34/include/linux/moduleparam.h \
  include2/asm/local.h \
  include2/asm/module.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip2.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
    $(wildcard include/config/regparm.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/kdev_t.h \
  /usr/src/linux-2.6.18.2-34/include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
    $(wildcard include/config/security.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/limits.h \
  /usr/src/linux-2.6.18.2-34/include/linux/ioctl.h \
  include2/asm/ioctl.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/ioctl.h \
  /usr/src/linux-2.6.18.2-34/include/linux/dcache.h \
    $(wildcard include/config/profiling.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/radix-tree.h \
  /usr/src/linux-2.6.18.2-34/include/linux/prio_tree.h \
  /usr/src/linux-2.6.18.2-34/include/linux/quota.h \
  /usr/src/linux-2.6.18.2-34/include/linux/dqblk_xfs.h \
  /usr/src/linux-2.6.18.2-34/include/linux/dqblk_v1.h \
  /usr/src/linux-2.6.18.2-34/include/linux/dqblk_v2.h \
  /usr/src/linux-2.6.18.2-34/include/linux/nfs_fs_i.h \
  /usr/src/linux-2.6.18.2-34/include/linux/nfs.h \
  /usr/src/linux-2.6.18.2-34/include/linux/sunrpc/msg_prot.h \
  /usr/src/linux-2.6.18.2-34/include/linux/fcntl.h \
  include2/asm/fcntl.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/fcntl.h \
    $(wildcard include/config/64bit.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/err.h \
  /usr/src/linux-2.6.18.2-34/include/linux/cdev.h \
  /usr/src/linux-2.6.18.2-34/include/linux/poll.h \
  include2/asm/poll.h \
  /usr/src/linux-2.6.18.2-34/include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/debug/pagealloc.h) \
  include2/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  include2/asm/pgtable-2level-defs.h \
  include2/asm/pgtable-2level.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/pgtable-nopmd.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/pgtable-nopud.h \
  /usr/src/linux-2.6.18.2-34/include/asm-generic/pgtable.h \
  /usr/src/linux-2.6.18.2-34/include/linux/page-flags.h \
    $(wildcard include/config/s390.h) \
    $(wildcard include/config/swap.h) \
  /usr/src/linux-2.6.18.2-34/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/dma/is/normal.h) \
  include2/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
    $(wildcard include/config/x86/wp/works/ok.h) \
  /home/jim/mbxsimulator/group/../inc/mbxsimulatoruser.h \
  /home/jim/mbxsimulator/group/../inc/kerneldebug.h \

/home/jim/mbxsimulator/group/../driver/mbxsimulator.o: $(deps_/home/jim/mbxsimulator/group/../driver/mbxsimulator.o)

$(deps_/home/jim/mbxsimulator/group/../driver/mbxsimulator.o):
