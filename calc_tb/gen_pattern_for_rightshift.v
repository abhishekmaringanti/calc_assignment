// This file contains the declaration for the task: gen_pattern_for_rightshift

// Task to generate the input command and data:
task gen_pattern_for_rightshift;
    input port_number;                  // Port Number
    input rand_en_dis;                  // 0 - Disable randomization of the data, 1 - Enable randomization of the data
    input [0:31] fixed_operand1;        // Fixed first operand chosen by the user
    input [0:31] fixed_operand2;        // Fixed second operand chosen by the user
    
    output [0:31] expected_output;      // Expected output on the DUV output data line
    output [0:1]  expected_response;    // Expected response on the DUV output response line

`include "../../calc_tb/global_defines.v"

    reg [0:31] data;
    reg [0:31] data1;
    reg [0:31] data2;

    begin
        $display("Entering task: gen_pattern_for_rightshift for PORT%d.", port_number);
        if (rand_en_dis == 'b0)         // Randomization of the data is disabled. Overflow may or may not happen depending on the fixed input data
        begin
            @(negedge clk_i);  
            data = fixed_operand1;
            case (port_number)
                `PORT1:     begin
                                `REQ1_DATA_IN = data;
                                `REQ1_CMD_IN  = `RSHIFT;            
                            end
                `PORT2:     begin
                                `REQ2_DATA_IN = data;
                                `REQ2_CMD_IN  = `RSHIFT;            
                            end
                `PORT3:     begin
                                `REQ3_DATA_IN = data;
                                `REQ3_CMD_IN  = `RSHIFT;            
                            end
                `PORT4:     begin
                                `REQ4_DATA_IN = data;
                                `REQ4_CMD_IN  = `RSHIFT;            
                            end
            endcase
            data1   = data;
            #1;
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
        else                        // Data is random.
        begin
            @(negedge clk_i);
            data = $random;
            case (port_number)
                `PORT1:     begin
                                `REQ1_DATA_IN = data;
                                `REQ1_CMD_IN  = `RSHIFT;            
                            end
                `PORT2:     begin
                                `REQ2_DATA_IN = data;
                                `REQ2_CMD_IN  = `RSHIFT;            
                            end
                `PORT3:     begin
                                `REQ3_DATA_IN = data;
                                `REQ3_CMD_IN  = `RSHIFT;            
                            end
                `PORT4:     begin
                                `REQ4_DATA_IN = data;
                                `REQ4_CMD_IN  = `RSHIFT;            
                            end
            endcase
            data1 = data;
            #1;
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

    if (data2 > 32'd32)
    begin
        expected_output = 32'd0;
    end
    else
    begin
        case (data2)
            0:      expected_output = data1 >> 0;
            1:      expected_output = data1 >> 1;
            2:      expected_output = data1 >> 2;
            3:      expected_output = data1 >> 3;
            4:      expected_output = data1 >> 4;
            5:      expected_output = data1 >> 5;
            6:      expected_output = data1 >> 6;
            7:      expected_output = data1 >> 7;
            8:      expected_output = data1 >> 8;
            9:      expected_output = data1 >> 9;
            10:      expected_output = data1 >> 10;
            11:      expected_output = data1 >> 11;
            12:      expected_output = data1 >> 12;
            13:      expected_output = data1 >> 13;
            14:      expected_output = data1 >> 14;
            15:      expected_output = data1 >> 15;
            16:      expected_output = data1 >> 16;
            17:      expected_output = data1 >> 17;
            18:      expected_output = data1 >> 18;
            19:      expected_output = data1 >> 19;
            20:      expected_output = data1 >> 20;
            21:      expected_output = data1 >> 21;
            22:      expected_output = data1 >> 22;
            23:      expected_output = data1 >> 23;
            24:      expected_output = data1 >> 24;
            25:      expected_output = data1 >> 25;
            26:      expected_output = data1 >> 26;
            27:      expected_output = data1 >> 27;
            28:      expected_output = data1 >> 28;
            29:      expected_output = data1 >> 29;
            30:      expected_output = data1 >> 30;
            31:      expected_output = data1 >> 31;
            32:      expected_output = data1 >> 32;
        endcase
    end
    expected_response = `DUV_SUCC_RESP;
    $display("Exiting task: gen_pattern_for_rightshift for PORT%d.", port_number);
    end

endtask


