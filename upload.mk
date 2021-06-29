RTL_TOP ?= rtl-top
PYNQ_SYSTEM_ADDR ?= pynq.example.com
PYNQ_SYSTEM_TARGET_DIR ?= jupyter_notebooks

upload: \
	rtl-proj/rtl.gen/sources_1/bd/$(RTL_TOP)/hw_handoff/$(RTL_TOP).hwh \
	rtl-proj/rtl.runs/impl_1/$(RTL_TOP).bit
	scp $^ $(PYNQ_SYSTEM_ADDR):$(PYNQ_SYSTEM_TARGET_DIR)
