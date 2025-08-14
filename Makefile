.PHONY: all dump_spice

MODULE ?= buffer_chain
VERILOG = rtl/$(MODULE).vg

all: $(MODULE)

# Pattern rule: make <module> always runs
.PHONY: %
%:
	$(MAKE) dump_spice MODULE=$*

dump_spice:
	@echo "Running dump_spice for module $(MODULE) with Verilog $(VERILOG)"
	python3 bigspicy.py \
		--import \
		--verilog rtl/$(MODULE).postroute.vg \
		--spef rtl/$(MODULE).spef \
		--spice_header lib/7nm_TT.pm \
		--spice_header lib/asap7sc7p5t_28_L.sp \
		--top $(MODULE) \
		--save $(MODULE).pb \
		--working_dir /opt/bigspicy
	python3 bigspicy.py \
		--load $(MODULE).pb \
		--spice_header lib/7nm_TT.pm \
		--spice_header lib/asap7sc7p5t_28_L.sp \
		--top $(MODULE) \
		--dump_spice $(MODULE).sp \
		--working_dir /opt/bigspicy

clean:
	rm -f $(MODULE).pb $(MODULE).sp