include theos/makefiles/common.mk

BUNDLE_NAME = themer
themer_FILES = themer.mm
themer_INSTALL_PATH = /Library/PreferenceBundles
themer_FRAMEWORKS = UIKit
themer_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/themer.plist$(ECHO_END)
