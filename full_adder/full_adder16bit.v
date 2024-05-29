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


module full_adder16bit (
input [15:0] in1,
input [15:0] in2,
input cin,
output [15:0] sum,
output cout
);
wire [15:0] carry;

integer i;
for(i = 0; i<15 ; i+1 ) begin 
	if (i==0)begin

	full_adder fa (
	.in1(in1[i]),
	.in2(in2[i]),
	.cin(cin),
	.sum(sum[i],
	.cout(cout)
	);
	end
	else if (i==15)begin 
	full_adder fa(
	.in1(in1[i]),
	.in2(in2[i]),
	.cin(carry[i-1]),
	.sum(sum[i]),
	.cout(cout)
	);
	end
	else begin
	full_adder fa(
	.in1(in1[i]),
	.in2(in2[i]),
	.cin(carry[i-1]),
	.sum(sum[i]),
	.cout(carry[i])
	);
	end
end
endmodule
