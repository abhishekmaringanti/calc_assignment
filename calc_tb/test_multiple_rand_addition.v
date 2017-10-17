// This file contains the task: test_multiple_rand__addition.
// This task is used to simulate the following sequence:
// -> send command to ADD with first operand = 0x5555
// -> send secound operand = 0xAAAA
// -> wait for the output = 0xFFFF
// Repeat the above sequence for all the ports
//
//

task test_multiple_rand__addition;
`include "../../calc_tb/global_defines.v"
reg [7:0] i;
begin
    $display("Executing test sequence: test_multiple_rand__addition.");

// Testing PORT-1
for (i=0; i < `RAND_RUNS_PER_PORT; i=i+1)
begin
    // ADD 0x33333333 and 0xcccccccc on PORT-1
    gen_pattern_for_addition(`PORT1, `EN_RANDOM_DATA, `EN_OVER_UNDER_FLOW, 32'h33333333, 32'hcccccccc, expected_output1, expected_response1);
    wait_for_response(`PORT1);
    validate_output(`PORT1, out_data1, expected_output1, out_resp1, expected_response1);
    repeat (2) @(negedge clk_i);
end

/*
// Testing PORT-2
for (i=0; i < `RAND_RUNS_PER_PORT; i=i+1)
begin
    // ADD 0x33333333 and 0xcccccccc on PORT-2
    gen_pattern_for_addition(`PORT2, `EN_RANDOM_DATA, `EN_OVER_UNDER_FLOW, 32'h33333333, 32'hcccccccc, expected_output2, expected_response2);
    wait_for_response(`PORT2);
    validate_output(`PORT2, out_data2, expected_output2, out_resp2, expected_response2);
    repeat (2) @(negedge clk_i);
end
*/
// Testing PORT-3
for (i=0; i < `RAND_RUNS_PER_PORT; i=i+1)
begin
    // ADD 0x33333333 and 0xcccccccc on PORT-3
    gen_pattern_for_addition(`PORT3, `EN_RANDOM_DATA, `EN_OVER_UNDER_FLOW, 32'h33333333, 32'hcccccccc, expected_output3, expected_response3);
    wait_for_response(`PORT3);
    validate_output(`PORT3, out_data3, expected_output3, out_resp3, expected_response3);
    repeat (2) @(negedge clk_i);
end
/*
// Testing PORT-4
for (i=0; i < `RAND_RUNS_PER_PORT; i=i+1)
begin
    // ADD 0x33333333 and 0xcccccccc on PORT-4
    gen_pattern_for_addition(`PORT4, `EN_RANDOM_DATA, `EN_OVER_UNDER_FLOW, 32'h33333333, 32'hcccccccc, expected_output4, expected_response4);
    wait_for_response(`PORT4);
    validate_output(`PORT4, out_data4, expected_output4, out_resp4, expected_response4);
end
*/
// end sequence
    repeat(2) @(negedge clk_i);
    $display("Execution of test sequence: test_multiple_rand__addition is complete.");

end
endtask
