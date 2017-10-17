
// This file contains all the global defines used in multiple files.

// input command OPCODES
`define NO_OPER  4'd0
`define ADD      4'd1
`define SUB      4'd2
`define LSHIFT   4'd5
`define RSHIFT   4'd6

// Output response codes
`define DUV_NO_RESP      2'd0
`define DUV_SUCC_RESP    2'd1
`define DUV_INV_CMD      2'd2
`define DUV_INT_ERR      2'd3

// parameters used in the top file.
`define PORT1 3'd1
`define PORT2 3'd2
`define PORT3 3'd3
`define PORT4 3'd4

`define DIS_RANDOM_DATA         1'd0
`define EN_RANDOM_DATA          1'd1
`define DIS_OVER_UNDER_FLOW     1'd0
`define EN_OVER_UNDER_FLOW      1'd1


// Enable driving of DUV inputs through tasks by tapping the signals 
`define REQ1_CMD_IN     calc1_tb_top.req1_cmd_in
`define REQ2_CMD_IN     calc1_tb_top.req2_cmd_in
`define REQ3_CMD_IN     calc1_tb_top.req3_cmd_in
`define REQ4_CMD_IN     calc1_tb_top.req4_cmd_in

`define REQ1_DATA_IN    calc1_tb_top.req1_data_in
`define REQ2_DATA_IN    calc1_tb_top.req2_data_in
`define REQ3_DATA_IN    calc1_tb_top.req3_data_in
`define REQ4_DATA_IN    calc1_tb_top.req4_data_in

// Number of runs for each port in the random tests
`define RAND_RUNS_PER_PORT      20

// WAIT DELAY for the out_respX signals
`define WAIT_DELAY      1000

