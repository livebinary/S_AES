module rotnib(rin,rout);
input [7:0]rin;
output [7:0] rout;
assign rout[3:0] = rin[7:4];
assign rout[7:4] = rin[3:0];
endmodule