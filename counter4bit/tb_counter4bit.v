`timescale 1ns/1ps
module tb_counter4bit;

reg clk,rst;
wire [3:0]q;

counter4bit dut(clk,rst,q);

initial

begin
$monitor("@time %gns clk=%b rst=%b q=%0d", $time, clk,rst,q);
clk=0;
rst=0;
#5 rst=1;
#5 rst=0;
end

always
#5 clk=~clk;

initial
#200 $stop;

initial
begin
$dumpfile("counter4bit.vcd");
$dumpvars(1);
end

endmodule
