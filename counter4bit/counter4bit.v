module counter4bit(clk,rst,q);
input clk,rst;
output reg [3:0]q;

always@(posedge clk)
begin
if(rst)
q<=0;
else
q<=q+1'b1;

end

endmodule