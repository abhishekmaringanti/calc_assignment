// This file contains the task: test_single_leftshift.
// This task is used to simulate the following sequence:
//

task test_single_leftshift;
`include "../../calc_tb/global_defines.v"
begin
    $display("Executing test sequence: test_single_leftshift.");

    // LEFT SHIFT 0x00001010 by 0x00000001 on PORT-1
    gen_pattern_for_leftshift(`PORT1, `DIS_RANDOM_DATA, 32'h00001010, 32'h00000001, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    // LEFT SHIFT 0x00000101 by 0x00000002 on PORT-1
    gen_pattern_for_leftshift(`PORT1, `DIS_RANDOM_DATA, 32'h00000101, 32'h00000002, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);

    repeat(2) @(negedge clk_i);
    // LEFT SHIFT 0xAAAAAAAA by 0x55555555 on PORT-2
    gen_pattern_for_leftshift(`PORT2, `DIS_RANDOM_DATA, 32'h00000001, 32'h00000005, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);

    repeat(2) @(negedge clk_i);
    // LEFT SHIFT 0xAAAAAAAA by 0x55555555 on PORT-3
    gen_pattern_for_leftshift(`PORT3, `DIS_RANDOM_DATA, 32'h00000001, 32'h0000000A, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);

    repeat(2) @(negedge clk_i);
    // LEFT SHIFT 0xAAAAAAAA by 0x55555555 on PORT-4
    gen_pattern_for_leftshift(`PORT4, `DIS_RANDOM_DATA, 32'h00000001, 32'h0000000F, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);

    repeat(2) @(negedge clk_i);
    $display("Execution of test sequence: test_single_leftshift is complete.");
end
endtask
