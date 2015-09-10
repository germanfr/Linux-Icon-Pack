UUID=MaterialOS
INSTALLDIR=$(DESTDIR)/usr/share/icons/$(UUID)

all:
	$(info Run "make install" as the super user to install the icon pack)
	$(info Run "make update" as the super user to update the icon pack)
	$(info Run "make uninstall" as the super user to uninstall the icon pack)

install:
	$(info Creating directory if doesn't exist)
	mkdir -p $(INSTALLDIR)

	$(info Clearing directory)
	-rm -rf $(INSTALLDIR)/*

	$(info Copying content into the directory)
	cp -rf $(UUID)/* $(INSTALLDIR)

update:
	$(info Updating the content)
	-rm -rf $(INSTALLDIR)/*
	cp -rf $(UUID)/* $(INSTALLDIR)

uninstall:
	$(info Deleting directory)
	-rm -rf $(INSTALLDIR)