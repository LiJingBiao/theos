internal-install:: internal-install-check
	$(ECHO_INSTALLING)install.exec "$(THEOS_SUDO_COMMAND) sudo installer -pkg \"$(_THEOS_PACKAGE_LAST_FILENAME)\" -target /"$(ECHO_END)

internal-uninstall::
	$(ECHO_NOTHING)install.exec "pkgutil --files \"$(THEOS_PACKAGE_NAME)\" | tail -r | sed 's/^/\//' | sudo xargs rm -d; $(THEOS_SUDO_COMMAND) pkgutil --forget \"$(THEOS_PACKAGE_NAME)\""$(ECHO_END)
