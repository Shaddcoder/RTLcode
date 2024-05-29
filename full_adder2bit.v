module half_adder(
input A,
input B,
output S,
output C
);
assign S = A ^ B;
assign C = A & B;

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


module full_adder2bit (
input [1:0]in1;
input [1:0]in2;
input Cin;
output [1:0]Sum;
output Cout;
);
wire c0;
full_adder fa0 ( .in1(in1[0] , .in2(in2[0], .Cin(Cin)  ,.Sum[Sum[0]  ,. Cout(c0 )  );
full_adder fa1 (  .in1(in1[1] , .in2(in2[1]), .Cin(c0)   ,.Sum(Sum[1]) ,.Cout (Cout) );


endmodule




































