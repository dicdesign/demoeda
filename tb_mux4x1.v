`timescale 1ns/1ps
module tb_mux4x1;

reg a,b,c,d;
reg s1,s0;
wire y;

mux4x1 dut(a,b,c,d,s1,s0,y);

initial
begin
$monitor("@time %gns a=%b, b=%b, c=%b, d=%b, s1=%b, s0=%b, y=%b", $time, a,b,c,d,s1,s0,y);

a=1; b=0; c=1; d=1;
s1=0; s0=0;

#5 s0=1;
#5 s1=1; s0=0;
#5 s0=1;
#5 $stop;

end

endmodule