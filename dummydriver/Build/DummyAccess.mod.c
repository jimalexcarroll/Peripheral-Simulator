#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xfcb2e382, "struct_module" },
	{ 0x39e513cb, "kill_fasync" },
	{ 0xfaef0ed, "__tasklet_schedule" },
	{ 0x2f287f0d, "copy_to_user" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xd6c963c, "copy_from_user" },
	{ 0xf2399fec, "kmem_cache_alloc" },
	{ 0x1f2658dc, "kmalloc_caches" },
	{ 0x72270e35, "do_gettimeofday" },
	{ 0x4b84244b, "fasync_helper" },
	{ 0x2a12f9d6, "cdev_add" },
	{ 0xc1e1f497, "cdev_init" },
	{ 0x29537c9e, "alloc_chrdev_region" },
	{ 0x7d47fe7a, "cdev_del" },
	{ 0x7485e15e, "unregister_chrdev_region" },
	{ 0xb72397d5, "printk" },
	{ 0xb4390f9a, "mcount" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "A9E9316C3B6C5A945D393D3");
