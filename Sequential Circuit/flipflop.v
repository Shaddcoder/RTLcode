module (
input a,
input b,
input c,
input res,
input clk,
output y,
output w
);
always @(posedge clk or posedge res )begin 
	if (res)begin 
	 y<=0;
	 w<=0;
	end 
	else begin
	y = a &b;
	w <= ~c;
	end
end
