// This file contains the declaration for the task: validate_output

// This task is used to validate the DUV output when the out_respX is 0x1
// (successful operation completion)
task validate_output;
    input [2:0] port_number;
    input [0:31] duv_output;
    input [0:31] exp_output;
    input [0:1]  duv_resp;
    input [0:1]  exp_resp;

    `include "../../calc_tb/global_defines.v"

    begin
        $display("Executing task: validate_output for PORT%d.", port_number);
        if (duv_resp != exp_resp)
            begin
                $display("%c[1;31m",27);
                $display ("PORT%d OPERATION FAILED: DUV response does NOT match expected reponse. The DUV response is %d and expected response is %d", port_number, duv_resp, exp_resp);
                $display("%c[0m",27);
            end

        case (duv_resp)
            `DUV_SUCC_RESP:  begin
                                if (duv_output == exp_output)
                                    begin
                                        $display("%c[1;34m",27);
                                        $display ("PORT%d OPERATION SUCCESSFUL: The output from the DUV matches the expected output. DUV value = %h, expected value = %h", port_number, duv_output, exp_output);
                                        $display("%c[0m",27);
                                    end
                                else
                                    begin
                                        $display("%c[1;31m",27);
                                        $display ("PORT%d OPERATION FAILED: The output from the DUV and the expected output DO NOT MATCH. DUV value = %h, expected value = %h ", port_number, duv_output, exp_output);
                                        $display("%c[0m",27);
                                    end
                            end
            
            `DUV_INV_CMD  :  begin
                                if (duv_resp == exp_resp)
                                begin
                                    $display("%c[1;34m",27);
                                    $display ("PORT%d OPERATION SUCCESSFUL: The output response of the DUV matches the expected reponse of 0x2 INVALID COMMAND or OVERFLOW/UNDERFLOW.", port_number);
                                    $display("%c[0m",27);
                                end
                            end
            
            `DUV_INT_ERR  :  begin
                                $display("%c[1;31m",27);
                                $display ("PORT%d OPERATION FAILED: The output response of the DUV is 0x3 INTERNAL ERROR. TRY TO INVESTIGATE WHAT HAPPENED", port_number);
                                $display("%c[0m",27);
                            end

            default      :  begin
                                $display("%c[1;31m",27);
                                $display ("PORT%d OPERATION FAILED: The output response of the DUV is %d. TRY TO INVESTIGATE WHAT HAPPENED", port_number, duv_resp);
                                $display("%c[0m",27);
                            end
        endcase

//************************************************************************************
        // Comment out this piece of code once the delayed output in port-2 is
        // fixed
        if (port_number == 3'd2)
        begin
            @(negedge clk_i); #1;
            if (calc1_tb_top.out_resp2_delayed == duv_resp)
            begin
                if (calc1_tb_top.out_data2 == exp_output)
                begin
                    $display("%c[1;34m",27);
                    $display ("PORT%d OPERATION PARTIALLY SUCCESSFUL: The output from the DUV matches the expected output. BUT IT IS DELAYED. DUV value = %h, expected value = %h", port_number, calc1_tb_top.out_data2, exp_output);
                    $display("%c[0m",27);
                end
                else
                begin
                    $display("%c[1;31m",27);
                    $display ("PORT%d OPERATION FAILED: The output from the DUV and the expected output DO NOT MATCH. THE OUTPUT IS ALSO DELAYED. DUV value = %h, expected value = %h ", port_number, calc1_tb_top.out_data2, exp_output);
                    $display("%c[0m",27);
                end
            end
        end
//************************************************************************************

        $display("Exiting task: validate_output for PORT%d.", port_number);
        $display("*************************************************************************************************************************************************************.");

    end

endtask
