`timescale 1ns/1ps

module gen_clk_rst (
    output reg tb_clk_out,
    output reg [1:7] tb_rst_out
);


// generating a clock signal with time period of 200units
initial
    begin
        tb_clk_out = 0;
//        forever #100 tb_clk_out = ~tb_clk_out;
        $display("generating clock with time period of 200units");
    end

always #100 tb_clk_out = ~tb_clk_out;

// generating the reset signal
initial
    begin
//        tb_rst_out[1]  = 0;
        tb_rst_out[1]  = 1;
        #800;
        tb_rst_out[1]  = 0;
    end

endmodule

