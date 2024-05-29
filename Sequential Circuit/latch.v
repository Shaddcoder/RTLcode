module latch (
input D,
input enable,
output Q
);
always@(enanle or D ) begin
	if (enable == 1'b1) 
	Q <= D;
	else 
	Q <= Q;
end
endmodule
