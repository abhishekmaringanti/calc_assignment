// This file contains the task: test_multiple_addition.
// This task is used to simulate the following sequence:
// -> send command to ADD with first operand = 0x5555
// -> send secound operand = 0xAAAA
// -> wait for the output = 0xFFFF
// Repeat the above sequence for all the ports
//
//

task test_multiple_addition;
`include "../../calc_tb/global_defines.v"
begin
    $display("Executing test sequence: test_multiple_addition.");

// Testing PORT-1

    // ADD 0x00000000 and 0x00000000 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000000, 32'h00000000, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000101 and 0x00001010 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000101, 32'h00001010, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001010 and 0x00000101 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001010, 32'h00000101, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001111 and 0x00001111 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001111, 32'h00001111, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001818 and 0x00001818 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001818, 32'h00001818, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000001 and 0x00000010 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000001, 32'h00000010, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0xeffffffa and 0x00000005 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h0fffffff, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x10100000 and 0x01010000 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h10100000, 32'h01010000, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x22222222 and 0x55555555 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h22222222, 32'h55555555, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x11111111 and 0xcccccccc on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h11111111, 32'hcccccccc, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0xffffffff and 0x00000000 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffffffff, 32'h00000000, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x33333333 and 0x11111111 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h33333333, 32'h11111111, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0xefffffff and 0x00000001 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h00000001, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x50505050 and 0x05050505 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h50505050, 32'h05050505, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0xffff0000 and 0x0000ffff on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffff0000, 32'h0000ffff, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000ffff and 0x0000ffff on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000ffff, 32'h0000ffff, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0xf0f0f0f0 and 0x03030303 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hf0f0f0f0, 32'h03030303, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000d609 and 0x00005663 on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000d609, 32'h00005663, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000495c and 0x000028bd on PORT-1
    gen_pattern_for_addition(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000495c, 32'h000028bd, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);


// Testing PORT-2
    // ADD 0x00000000 and 0x00000000 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000000, 32'h00000000, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000101 and 0x00001010 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000101, 32'h00001010, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001010 and 0x00000101 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001010, 32'h00000101, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001111 and 0x00001111 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001111, 32'h00001111, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001818 and 0x00001818 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001818, 32'h00001818, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000001 and 0x00000010 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000001, 32'h00000010, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0xeffffffa and 0x00000005 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h0fffffff, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x10100000 and 0x01010000 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h10100000, 32'h01010000, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x22222222 and 0x55555555 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h22222222, 32'h55555555, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x11111111 and 0xcccccccc on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h11111111, 32'hcccccccc, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0xffffffff and 0x00000000 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffffffff, 32'h00000000, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x33333333 and 0x11111111 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h33333333, 32'h11111111, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0xefffffff and 0x00000001 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h00000001, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x50505050 and 0x05050505 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h50505050, 32'h05050505, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0xffff0000 and 0x0000ffff on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffff0000, 32'h0000ffff, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000ffff and 0x0000ffff on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000ffff, 32'h0000ffff, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0xf0f0f0f0 and 0x03030303 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hf0f0f0f0, 32'h03030303, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000d609 and 0x00005663 on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000d609, 32'h00005663, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000495c and 0x000028bd on PORT-2
    gen_pattern_for_addition(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000495c, 32'h000028bd, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

// Testing PORT-3
    // ADD 0x00000000 and 0x00000000 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000000, 32'h00000000, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000101 and 0x00001010 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000101, 32'h00001010, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001010 and 0x00000101 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001010, 32'h00000101, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001111 and 0x00001111 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001111, 32'h00001111, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001818 and 0x00001818 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001818, 32'h00001818, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000001 and 0x00000010 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000001, 32'h00000010, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0xeffffffa and 0x00000005 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h0fffffff, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (3) @(negedge clk_i);

    // ADD 0x10100000 and 0x01010000 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 33'h10100000, 32'h01010000, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x22222222 and 0x55555555 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h22222222, 32'h55555555, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x11111111 and 0xcccccccc on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h11111111, 32'hcccccccc, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0xffffffff and 0x00000000 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffffffff, 32'h00000000, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x33333333 and 0x11111111 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h33333333, 32'h11111111, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0xefffffff and 0x00000001 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h00000001, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x50505050 and 0x05050505 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h50505050, 32'h05050505, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0xffff0000 and 0x0000ffff on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffff0000, 32'h0000ffff, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000ffff and 0x0000ffff on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000ffff, 32'h0000ffff, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0xf0f0f0f0 and 0x03030303 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hf0f0f0f0, 32'h03030303, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000d609 and 0x00005663 on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000d609, 32'h00005663, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000495c and 0x000028bd on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000495c, 32'h000028bd, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

// Testing PORT-4
    repeat(2) @(negedge clk_i);
    // ADD 0xAAAAAAAA and 0x55555555 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000001, 32'h00000010, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);

    // ADD 0x00000000 and 0x00000000 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000000, 32'h00000000, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000101 and 0x00001010 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000101, 32'h00001010, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001010 and 0x00000101 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001010, 32'h00000101, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001111 and 0x00001111 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001111, 32'h00001111, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x00001818 and 0x00001818 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00001818, 32'h00001818, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x00000001 and 0x00000010 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h00000001, 32'h00000010, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0xeffffffa and 0x00000005 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h0fffffff, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (4) @(negedge clk_i);

    // ADD 0x10100004 and 0x01010000 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 34'h10100000, 32'h01010000, expected_output1, expected_response1);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // ADD 0x22222222 and 0x55555555 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h22222222, 32'h55555555, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x11111111 and 0xcccccccc on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h11111111, 32'hcccccccc, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0xffffffff and 0x00000000 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffffffff, 32'h00000000, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x33333333 and 0x11111111 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h33333333, 32'h11111111, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0xefffffff and 0x00000001 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hefffffff, 32'h00000001, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x50505050 and 0x05050505 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h50505050, 32'h05050505, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0xffff0000 and 0x0000ffff on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hffff0000, 32'h0000ffff, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000ffff and 0x0000ffff on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000ffff, 32'h0000ffff, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0xf0f0f0f0 and 0x03030303 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hf0f0f0f0, 32'h03030303, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000d609 and 0x00005663 on PORT-4
    gen_pattern_for_addition(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000d609, 32'h00005663, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
    repeat (2) @(negedge clk_i);

    // ADD 0x0000495c and 0x000028bd on PORT-3
    gen_pattern_for_addition(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'h0000495c, 32'h000028bd, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);


// end sequence
    repeat(2) @(negedge clk_i);
    $display("Execution of test sequence: test_multiple_addition is complete.");

end
endtask
