onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /example_calc1_tb/out_data1
add wave -noupdate -format Literal /example_calc1_tb/out_data2
add wave -noupdate -format Literal /example_calc1_tb/out_data3
add wave -noupdate -format Literal /example_calc1_tb/out_data4
add wave -noupdate -format Literal /example_calc1_tb/out_resp1
add wave -noupdate -format Literal /example_calc1_tb/out_resp2
add wave -noupdate -format Literal /example_calc1_tb/out_resp3
add wave -noupdate -format Literal /example_calc1_tb/out_resp4
add wave -noupdate -format Logic /example_calc1_tb/c_clk
add wave -noupdate -format Literal /example_calc1_tb/req1_cmd_in
add wave -noupdate -format Literal /example_calc1_tb/req2_cmd_in
add wave -noupdate -format Literal /example_calc1_tb/req3_cmd_in
add wave -noupdate -format Literal /example_calc1_tb/req4_cmd_in
add wave -noupdate -format Literal /example_calc1_tb/req1_data_in
add wave -noupdate -format Literal /example_calc1_tb/req2_data_in
add wave -noupdate -format Literal /example_calc1_tb/req3_data_in
add wave -noupdate -format Literal /example_calc1_tb/req4_data_in
add wave -noupdate -format Literal /example_calc1_tb/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {839 ns}
