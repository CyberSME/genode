MIRROR_FROM_REP_DIR := lib/import/import-qt5_gui.mk \
                       lib/import/import-qt5.inc

content: $(MIRROR_FROM_REP_DIR)

$(MIRROR_FROM_REP_DIR):
	$(mirror_from_rep_dir)

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/qt5)

MIRROR_FROM_PORT_DIR := include/QtGui \
                        lib/symbols/qt5_gui

content: $(MIRROR_FROM_PORT_DIR)

$(MIRROR_FROM_PORT_DIR):
	mkdir -p $(dir $@)
	cp -r $(PORT_DIR)/$@ $(dir $@)

content: LICENSE

LICENSE:
	cp $(PORT_DIR)/src/lib/qt5/qt5/LICENSE.LGPLv3 $@
