#!/bin/bash

clear
vlog -nodebug +define+TESTCASE=4 ../../calc_tb/calc1_tb_top.v
vsim -c -do "run -all" calc1_tb_top | tee log
grep "SUCCESS\|FAILED" log
