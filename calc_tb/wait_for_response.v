// This file contains the task: wait_for_response.v
// This task is used to wait for a response on the out_resp line
//

task wait_for_response;
    input [2:0] port_number;

    `include "../../calc_tb/global_defines.v"
    
    reg [31:0] wait_timer;

    begin
        $display("Executing task: wait_for_response for PORT%d.", port_number);

        case (port_number)
            `PORT1:  begin
                        // waiting for 1000 clock cycles before exiting 
                        for (wait_timer =0; wait_timer < 1000; wait_timer=wait_timer+1)
                        begin
                            @(negedge clk_i);
                            #1;
                            if (out_resp1 != 'd0)
                            begin
                                $display("Received response on out_resp%d line = %h ", port_number, out_resp1);
                                wait_timer = 'd2000;        // Assigning wait_timer to a value higher than 1000 so that it breaks out of the for loop.
                            end
                        end
                        if (wait_timer == 'd1000)
                        begin
                            $display("%c[1;31m",27);
                            $display("OPERATION FAILED on PORT%d as the response timed out as it has taken longer than 1000 clk cycles without a response. %d", port_number, wait_timer);
                            $display("%c[0m",27);
                        end
                    end
            `PORT2:  begin
                        // waiting for WAIT_DELAY clock cycles before exiting 
                        for (wait_timer =0; wait_timer < `WAIT_DELAY; wait_timer=wait_timer+1)
                        begin
                            @(negedge clk_i);
                            #1;
                            if (out_resp2 != 'd0)
                            begin
                                $display("Received response on out_resp%d line = %h ", port_number, out_resp2);
                                wait_timer = 2*(`WAIT_DELAY);        // Assigning wait_timer to a value higher than 1000 so that it breaks out of the for loop.
                            end
                        end
                        if (wait_timer == 'd1000)
                        begin
                            $display("%c[1;31m",27);
                            $display("OPERATION FAILED on PORT%d as the response timed out as it has taken longer than 1000 clk cycles without a response", port_number);
                            $display("%c[0m",27);
                        end
                    end
            `PORT3:  begin
                        // waiting for 1000 clock cycles before exiting 
                        for (wait_timer =0; wait_timer < 1000; wait_timer=wait_timer+1)
                        begin
                            @(negedge clk_i);
                            #1;
                            if (out_resp3 != 'd0)
                            begin
                                $display("Received response on out_resp%d line = %h ", port_number, out_resp3);
                                wait_timer = 'd2000;        // Assigning wait_timer to a value higher than 1000 so that it breaks out of the for loop.
                            end
                        end
                        if (wait_timer == 'd1000)
                        begin
                            $display("%c[1;31m",27);
                            $display("OPERATION FAILED on PORT%d as the response timed out as it has taken longer than 1000 clk cycles without a response", port_number);
                            $display("%c[0m",27);
                        end
                    end
            `PORT4:  begin
                        // waiting for 1000 clock cycles before exiting 
                        for (wait_timer =0; wait_timer < 1000; wait_timer=wait_timer+1)
                        begin
                            @(negedge clk_i);
                            #1;
                            if (out_resp4 != 'd0)
                            begin
                                $display("Received response on out_resp%d line = %h ", port_number, out_resp4);
                                wait_timer = 'd2000;        // Assigning wait_timer to a value higher than 1000 so that it breaks out of the for loop.
                            end
                        end
                        if (wait_timer == 'd1000)
                        begin
                            $display("%c[1;31m",27);
                            $display("OPERATION FAILED on PORT%d as the response timed out as it has taken longer than 1000 clk cycles without a response", port_number);
                            $display("%c[0m",27);
                        end
                    end
            default:  begin
                        // waiting for 1000 clock cycles before exiting 
                        $display("%c[1;31m",27);
                        $display("UNEXPECTED FAILED: in default case condition in wait_for_response task. This is not expected. ");
                        $display("%c[0m",27);
                        for (wait_timer =0; wait_timer < 1000; wait_timer=wait_timer+1)
                        begin
                            @(negedge clk_i);
                            #1;
                            if (out_resp1 != 'd0)
                            begin
                                $display("Received response on out_resp1 line = %h ", out_resp1);
                                wait_timer = 'd2000;        // Assigning wait_timer to a value higher than 1000 so that it breaks out of the for loop.
                            end
                        end
                        if (wait_timer == 'd1000)
                        begin
                            $display("%c[1;31m",27);
                            $display("OPERATION FAILED on PORT1 as the response timed out as it has taken longer than 1000 clk cycles without a response");
                            $display("%c[0m",27);
                        end
                    end
        endcase
    end
endtask
