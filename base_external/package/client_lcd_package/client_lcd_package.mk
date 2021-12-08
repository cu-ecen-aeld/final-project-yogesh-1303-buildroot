
##############################################################
#
# LCD-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CLIENT_LCD_PACKAGE_VERSION = '730b0e8f3f6a7eaf52ef27ad89fa02aadb2ee02b'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CLIENT_LCD_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-yogesh-1303-app.git'
CLIENT_LCD_PACKAGE_SITE_METHOD = git
CLIENT_LCD_PACKAGE_GIT_SUBMODULES = YES

define CLIENT_LCD_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/LCD_test_updated all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define CLIENT_LCD_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/LCD_test_updated/*  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
