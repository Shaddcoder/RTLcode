module full_adder (
input a,
input b,
input cin,
output sum,
output cout
);
wire out_xor;
wire out_and1;
wire out_and2;
assign  out_xor = a ^ b; 
assign 	sum = out_xor ^ cin;
assign  out_and1 = cin & out_xor;
assign  out_and2 = a & b; 
assign  cout = out_and1 | out_and2; 
endmodule

