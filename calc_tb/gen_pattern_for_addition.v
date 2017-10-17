// This file contains the declaration for the task: gen_pattern_for_addition

// Task to generate the input command and data 
task gen_pattern_for_addition;
    input [2:0] port_number;           // Port number
    input rand_en_dis;                  // 0 - Disable randomization of the data, 1 - Enable randomization of the data
    input overflow_en_dis;              // 0 - Disable Overflow (overflow will never occur), 1 - Enable Overflow (overflow may occur depending on inputs) 
    input [0:31] fixed_operand1;        // Fixed first operand chosen by the user
    input [0:31] fixed_operand2;        // Fixed second operand chosen by the user
    
    output [0:31] expected_output;      // Expected output on the DUV output data line
    output [0:1]  expected_response;    // Expected response on the DUV output response line

`include "../../calc_tb/global_defines.v"

    reg [0:31] data;
    reg [0:31] data1;
    reg [0:31] data2;
    reg [0:32] expected_output_temp;

    begin
        $display("*************************************************************************************************************************************************************.");
        $display("Entering task: gen_pattern_for_addition for PORT%d.", port_number);
        if (rand_en_dis == 'b0)         // Randomization of the data is disabled. Overflow may or may not happen depending on the fixed input data
        begin
            @(negedge clk_i);
            data = fixed_operand1;
            case (port_number)
                `PORT1:     begin
                                `REQ1_DATA_IN = data;
                                `REQ1_CMD_IN  = `ADD;            
                            end
                `PORT2:     begin
                                `REQ2_DATA_IN = data;
                                `REQ2_CMD_IN  = `ADD;            
                            end
                `PORT3:     begin
                                `REQ3_DATA_IN = data;
                                `REQ3_CMD_IN  = `ADD;            
                            end
                `PORT4:     begin
                                `REQ4_DATA_IN = data;
                                `REQ4_CMD_IN  = `ADD;            
                            end
            endcase
            data1   = data;
	        @(negedge clk_i);
            data = fixed_operand2;
            case (port_number)
                `PORT1:     begin
                                `REQ1_DATA_IN = data;
                                `REQ1_CMD_IN  = `NO_OPER;            
                            end
                `PORT2:     begin
                                `REQ2_DATA_IN = data;
                                `REQ2_CMD_IN  = `NO_OPER;            
                            end
                `PORT3:     begin
                                `REQ3_DATA_IN = data;
                                `REQ3_CMD_IN  = `NO_OPER;            
                            end
                `PORT4:     begin
                                `REQ4_DATA_IN = data;
                                `REQ4_CMD_IN  = `NO_OPER;            
                            end
            endcase
            data2 = data;
            $display ("PORT%d operand 1 is = %h and operand 2 is = %h ", port_number, data1, data2);
        end
	    else                            // Randomization of the data is enabled
	    begin
            if (overflow_en_dis == 'b0) // Overflow is disabled
            begin
                @(negedge clk_i);
                data = $random;
                case (port_number)
                    `PORT1:     begin
                                    `REQ1_DATA_IN = data;
                                    `REQ1_CMD_IN  = `ADD;            
                                end
                    `PORT2:     begin
                                    `REQ2_DATA_IN = data;
                                    `REQ2_CMD_IN  = `ADD;            
                                end
                    `PORT3:     begin
                                    `REQ3_DATA_IN = data;
                                    `REQ3_CMD_IN  = `ADD;            
                                end
                    `PORT4:     begin
                                    `REQ4_DATA_IN = data;
                                    `REQ4_CMD_IN  = `ADD;            
                                end
                endcase
                data1   = data;
                @(negedge clk_i);
                data = ({$random} % (32'hffff - data1));
                case (port_number)
                    `PORT1:     begin
                                    `REQ1_DATA_IN = data;
                                    `REQ1_CMD_IN  = `NO_OPER;            
                                end
                    `PORT2:     begin
                                    `REQ2_DATA_IN = data;
                                    `REQ2_CMD_IN  = `NO_OPER;            
                                end
                    `PORT3:     begin
                                    `REQ3_DATA_IN = data;
                                    `REQ3_CMD_IN  = `NO_OPER;            
                                end
                    `PORT4:     begin
                                    `REQ4_DATA_IN = data;
                                    `REQ4_CMD_IN  = `NO_OPER;            
                                end
                endcase
                data2   = data;
                $display ("PORT%d operand 1 is = %h and operand 2 is = %h ", port_number, data1, data2);
            end
            else                        // overflow is enabled and data is random.
            begin
                @(negedge clk_i);
                data = $random;
                case (port_number)
                    `PORT1:     begin
                                    `REQ1_DATA_IN = data;
                                    `REQ1_CMD_IN  = `ADD;            
                                end
                    `PORT2:     begin
                                    `REQ2_DATA_IN = data;
                                    `REQ2_CMD_IN  = `ADD;            
                                end
                    `PORT3:     begin
                                    `REQ3_DATA_IN = data;
                                    `REQ3_CMD_IN  = `ADD;            
                                end
                    `PORT4:     begin
                                    `REQ4_DATA_IN = data;
                                    `REQ4_CMD_IN  = `ADD;            
                                end
                endcase
                data1 = data;
                @(negedge clk_i);
                data = $random;
                case (port_number)
                    `PORT1:     begin
                                    `REQ1_DATA_IN = data;
                                    `REQ1_CMD_IN  = `NO_OPER;            
                                end
                    `PORT2:     begin
                                    `REQ2_DATA_IN = data;
                                    `REQ2_CMD_IN  = `NO_OPER;            
                                end
                    `PORT3:     begin
                                    `REQ3_DATA_IN = data;
                                    `REQ3_CMD_IN  = `NO_OPER;            
                                end
                    `PORT4:     begin
                                    `REQ4_DATA_IN = data;
                                    `REQ4_CMD_IN  = `NO_OPER;            
                                end
                endcase
                data2 = data;
                $display ("PORT%d operand 1 is = %h and operand 2 is = %h ", port_number, data1, data2);
            end
	    end

        expected_output_temp = data1+data2;
        expected_output = expected_output_temp[1:32];
        if (expected_output_temp[0])
            expected_response = `DUV_INV_CMD;
        else
            expected_response = `DUV_SUCC_RESP;
        $display("Exiting task: gen_pattern_for_addition for PORT%d.", port_number);
    end

endtask

