module half_adder (
input A,
input B,
output S,
output C
);
assign S = A ^B; 
assign C  = A & B;
endmodule 

module full_adder (
input in1,
input in2,
input cin,
output sum,
output cout
);

wire i1;
wire i2;
wire i3;

half_adder ha1 (
.A(in1), .B(in2), .S(i1), .C(i2)
);
half_adder ha2 (
.A(i1), .B(cin)  , .S(sum )  , .C(i3 ) 
);

assign cout = i2 | i3;
endmodule

