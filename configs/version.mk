ifneq ($ROM_VERSION_TAG,"")
        VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)
else
        VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)
endif

export ROM_VERSION := $(VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.$(VENDOR).version=$(VERSION)
