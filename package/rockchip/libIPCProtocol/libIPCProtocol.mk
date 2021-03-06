LIBIPCPROTOCOL_SITE = $(TOPDIR)/../app/libIPCProtocol
LIBIPCPROTOCOL_SITE_METHOD = local

LIBIPCPROTOCOL_INSTALL_STAGING = YES

LIBIPCPROTOCOL_DEPENDENCIES = libgdbus librkdb dbus-cpp

ifeq ($(BR2_PACKAGE_RK_OEM), y)
LIBIPCPROTOCOL_INSTALL_TARGET_OPTS = DESTDIR=$(BR2_PACKAGE_RK_OEM_INSTALL_TARGET_DIR) install/fast
LIBIPCPROTOCOL_DEPENDENCIES += rk_oem
endif

ifeq ($(BR2_PACKAGE_LIBIPCPROTOCOL_DEMO), y)
LIBIPCPROTOCOL_CONF_OPTS += -DCOMPILE_DEMO=ON
endif

$(eval $(cmake-package))
