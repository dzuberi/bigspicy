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
		--spice_header lib/asap7sc7p5t_28_R.sp \
		--top $(MODULE) \
		--save $(MODULE).pb \
		--working_dir /opt/bigspicy
	python3 bigspicy.py \
		--load $(MODULE).pb \
		--spice_header lib/7nm_TT.pm \
		--spice_header lib/asap7sc7p5t_28_L.sp \
		--spice_header lib/asap7sc7p5t_28_R.sp \
		--top $(MODULE) \
		--dump_spice $(MODULE).sp \
		--working_dir /opt/bigspicy
	
clean_spice:
	rm -f $(MODULE).pb $(MODULE).sp
	
stimulus_%:
	cd vcd2pwl && \
	python create_stimulus.py \
		--verilog_file ../rtl/$*.postroute.vg \
		--spice_file ../$*.sp \
		--spice_libs ../lib \
		--pwl_dir $*_pwls \
		--output_dir $*_spice \
		--prog_done_path prga_tb_top.w_tb_prog_done \
		prga_tb_top.i_postimpl.dut.i_tile_x1y5.i_tile_x0y0.i_blk.i_cluster_i0	

pwl_%:
	cd vcd2pwl && \
	python vcd2pwl.py \
		--vcd_file ../rtl/$*.vcd \
		--output_dir ./$*_pwls

xyce:
	cd vcd2pwl/spice && \
	Xyce add_top.sp

clean: clean_spice