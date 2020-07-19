module subnib(suin,suout);
input [7:0]suin;
output [7:0]suout;
sbox ss(suin[7:4],suout[7:4]);
sbox sw(suin[3:0],suout[3:0]);
endmodule