#!/bin/bash

python3 bigspicy.py \
    --import \
    --verilog rtl/buffer_chain.postroute.vg \
    --spef rtl/buffer_chain.spef \
    --spice_header lib/7nm_TT.pm \
    --spice_header lib/asap7sc7p5t_28_L.sp \
    --top buffer_chain \
    --save final.pb \
    --working_dir /opt/bigspicy

python3 bigspicy.py \
    --load final.pb \
    --spice_header lib/7nm_TT.pm \
    --spice_header lib/asap7sc7p5t_28_L.sp \
    --top buffer_chain \
    --dump_spice buffer_chain.sp \
    --working_dir /opt/bigspicy