module mux4x1(a,b,c,d,s1,s0,y);

// MUX4x1 inputs
input a,b,c,d;

//MUX4x1 select line inputs
input s1,s0;

//MUX4x1 ouput
output y;

// Dataflow description 
assign y=({s1,s0}==3) ? d : (({s1,s0}==2)?c:({s1,s0}==1)? b : a);

endmodule