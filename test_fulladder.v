module test_fulladder;

reg in1;
reg in2;
reg Cin;
wire S;
wire C;

full_adder inst (
	.in1(in1),
	.in2(in2),
	.Cin(Cin),
	.S(S),
	.C(C)
);
integer i;
initial begin 
$monitor( $time, "in1=%b, in2=%b,Cin=%b -> C=%b,S=%b ",in1,in2,Cin,C,S);
	for (i=0;i<8;i++)begin 
	{in1,in2,Cin} =i;
	#10;
	$finish;
	end
end
endmodule
