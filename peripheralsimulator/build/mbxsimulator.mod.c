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
};

static const struct modversion_info ____versions[]
__attribute_used__
__attribute__((section("__versions"))) = {
	{ 0x4d80e3fe, "struct_module" },
	{ 0x3d4682f6, "cdev_add" },
	{ 0xe02a50b4, "cdev_init" },
	{ 0x29537c9e, "alloc_chrdev_region" },
	{ 0xcc07f3bd, "cdev_del" },
	{ 0x7485e15e, "unregister_chrdev_region" },
	{ 0x1b7d4074, "printk" },
};

static const char __module_depends[]
__attribute_used__
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "79025DABDF20EFE6CF6B650");
