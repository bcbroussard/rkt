$(call setup-stamp-file,ACTOOL_STAMP)

# variables for makelib/build_go_bin.mk
BGB_PKG_IN_REPO := Godeps/_workspace/src/github.com/appc/spec/actool
BGB_BINARY := $(ACTOOL)

CLEAN_FILES += $(ACTOOL)

$(ACTOOL_STAMP): $(ACTOOL)
	touch "$@"

$(ACTOOL): $(MK_PATH) | $(BINDIR)

include makelib/build_go_bin.mk

# ACTOOL_STAMP deliberately not cleared
