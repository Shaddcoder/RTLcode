module t_halfadder;
// top_ test 
reg A;
reg B;
wire S;
wire C;
//sub_instant 
halfadder inst (. A(A) ,.B(B) ,. S(S) ,.C(C) );
initial begin 
$monitor($time, " %b%b -> %b%b", A, B, S, C);
#10  a = 1'b0; b = 1'b0; 
#10 a = 1'b0; b = 1'b1;
#10 a = 1'b1; b = 1'b0;
#10 a = 1'b1; b = 1'b1;
#10 $finish;
end
endmodule 


