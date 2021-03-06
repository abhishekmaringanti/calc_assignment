// This is the TOP FILE for the testbench.
// It contains the instantiations of the DUV and the gen_clk_rst modules.
// This file initializes the inputs to default values

`uselib lib=calc1_black_box
`define TESTCASE 1
`timescale 1ns/1ps

module calc1_tb_top;

    wire [0:31]   out_data1, out_data2, out_data3, out_data4;
    wire [0:1]    out_resp1, out_resp2, out_resp3, out_resp4;
   
    wire	      clk_i;
    wire [1:7]    rst_i;
    reg [0:3] 	  req1_cmd_in, req2_cmd_in, req3_cmd_in, req4_cmd_in;
    reg [0:31]    req1_data_in, req2_data_in, req3_data_in, req4_data_in;

    reg [0:31] expected_output1, expected_output2, expected_output3, expected_output4;
    reg [0:1]  expected_response1, expected_response2, expected_response3, expected_response4;

    reg [0:1] out_resp2_delayed;

// Include files for parameter defines and tasks
`include "../../calc_tb/global_defines.v"
`include "../../calc_tb/gen_pattern_for_addition.v"
`include "../../calc_tb/gen_pattern_for_subtraction.v"
`include "../../calc_tb/gen_pattern_for_leftshift.v"
`include "../../calc_tb/gen_pattern_for_rightshift.v"
`include "../../calc_tb/validate_output.v"
`include "../../calc_tb/wait_for_response.v"

// Include files for the test scenarios
`include "../../calc_tb/test_single_addition.v" 
`include "../../calc_tb/test_single_subtraction.v" 
`include "../../calc_tb/test_single_leftshift.v" 
`include "../../calc_tb/test_single_rightshift.v" 
`include "../../calc_tb/test_multiple_addition.v" 
`include "../../calc_tb/test_multiple_subtraction.v" 
`include "../../calc_tb/test_multiple_leftshift.v" 
`include "../../calc_tb/test_multiple_rightshift.v" 
`include "../../calc_tb/test_multiple_rand_addition.v" 
`include "../../calc_tb/test_multiple_rand_subtraction.v" 
`include "../../calc_tb/test_multiple_rand_leftshift.v" 
`include "../../calc_tb/test_multiple_rand_rightshift.v" 


// module instantiation of the clock and reset block
gen_clk_rst clk_rst_module (

    .tb_clk_out        (clk_i),
    .tb_rst_out        (rst_i)

); // end module instantiation of clock and reset block


// module instantiation of the calc1 DUT

calc1 DUV (
    .out_data1      (out_data1),            // Output data port-1
    .out_data2      (out_data2),            // Output data port-2
    .out_data3      (out_data3),            // Output data port-3
    .out_data4      (out_data4),            // Output data port-4

    .out_resp1      (out_resp1),            // Output response port-1
    .out_resp2      (out_resp2),            // Output response port-2
    .out_resp3      (out_resp3),            // Output response port-3
    .out_resp4      (out_resp4),            // Output response port-4

    .c_clk          (clk_i),                // Input clock signal
    .reset          (rst_i),                // Input reset signal
    
    .req1_cmd_in    (req1_cmd_in),          // Input request command port-1
    .req2_cmd_in    (req2_cmd_in),          // Input request command port-2
    .req3_cmd_in    (req3_cmd_in),          // Input request command port-3
    .req4_cmd_in    (req4_cmd_in),          // Input request command port-4

    .req1_data_in    (req1_data_in),         // Input request data port-1
    .req2_data_in    (req2_data_in),         // Input request data port-2
    .req3_data_in    (req3_data_in),         // Input request data port-3
    .req4_data_in    (req4_data_in)          // Input request data port-4

);  //end module instantiation of the calc1 DUV block

// Initialize all the inputs to default inactive values at the start of the
// simulation.
initial
    begin
        req1_cmd_in     = 0;
        req2_cmd_in     = 0;
        req3_cmd_in     = 0;
        req4_cmd_in     = 0;
        
        req1_data_in    = 0;
        req2_data_in    = 0;
        req3_data_in    = 0;
        req4_data_in    = 0;

        $display("%c[1;34m",27);
	    $display ("INITIALIZATION COMPLETE");
        $display("%c[0m",27);
    end // END INITIAL

always @(negedge clk_i)
begin
    out_resp2_delayed <= out_resp2;
end

initial
    begin
        // Wait for reset to be asserted first before checking if reset has
        // been deasserted. 
        #400;
        $display ("Waiting for reset deassertion");
        wait (rst_i[1] == 'b0);     // waiting for reset deassertion.
        $display("%c[1;34m",27);
        $display ("RESET DEASSERTION COMPLETE.");
        $display("%c[0m",27);

//        repeat (5) @(negedge clk_i);
        #400;

        case (`TESTCASE)
            1:          begin
                            test_single_addition();
                        end

            2:          begin
                            test_single_subtraction();
                        end

            3:          begin
                            test_single_leftshift();
                        end

            4:          begin
                            test_single_rightshift();
                        end

            5:          begin
                            test_multiple_addition();
                        end

            6:          begin
                            test_multiple_subtraction();
                        end

            7:          begin
                            test_multiple_leftshift();
                        end

            8:          begin
                            test_multiple_rightshift();
                        end

            9:          begin
                            test_multiple_rand__addition();
                        end

            10:          begin
                            test_multiple_rand__subtraction();
                        end

            11:          begin
                            test_multiple_rand__leftshift();
                        end

            12:          begin
                            test_multiple_rand__rightshift();
                        end

            31:          begin
                            test_single_addition();
                            test_single_subtraction();
                            test_single_leftshift();
                            test_single_rightshift();
                        end

            default:    begin
                            test_single_addition();
                        end
               
        endcase

        repeat (20) @(negedge clk_i);
        //$stop;
        $finish;
    end

endmodule

