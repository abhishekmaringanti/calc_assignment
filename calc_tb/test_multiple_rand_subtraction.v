// This file contains the task: test_multiple_rand__subtraction.
// This task is used to simulate the following sequence:
//

task test_multiple_rand__subtraction;
`include "../../calc_tb/global_defines.v"
begin
    $display("Executing test sequence: test_multiple_rand__subtraction.");

    // SUB 0xc3c3c3c3 and 0x3c3c3c3c on PORT-1
    gen_pattern_for_subtraction(`PORT1, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hc3c3c3c3, 32'h3c3c3c3c, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);

    repeat(2) @(negedge clk_i);
    // SUB 0xc3c3c3c3 and 0x3c3c3c3c on PORT-2
    gen_pattern_for_subtraction(`PORT2, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hc3c3c3c3, 32'h3c3c3c3c, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);

    repeat(2) @(negedge clk_i);
    // SUB 0xc3c3c3c3 and 0x3c3c3c3c on PORT-3
    gen_pattern_for_subtraction(`PORT3, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hc3c3c3c3, 32'h3c3c3c3c, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);

    repeat(2) @(negedge clk_i);
    // SUB 0xc3c3c3c3 and 0x3c3c3c3c on PORT-4
    gen_pattern_for_subtraction(`PORT4, `DIS_RANDOM_DATA, `DIS_OVER_UNDER_FLOW, 32'hc3c3c3c3, 32'h3c3c3c3c, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);

    repeat(2) @(negedge clk_i);
    $display("Execution of test sequence: test_multiple_rand__subtraction is complete.");
end
endtask
