
##############################################################
#
# LCD-PACKAGE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SERVER_RFID_PACKAGE_VERSION = 'b7ef33f9ffef9b16cc653d38983bcaacab5c13f3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SERVER_RFID_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-yogesh-1303-app.git'
SERVER_RFID_PACKAGE_SITE_METHOD = git
SERVER_RFID_PACKAGE_GIT_SUBMODULES = YES

define SERVER_RFID_PACKAGE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/RFID_updated all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SERVER_RFID_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/RFID_updated/*  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
