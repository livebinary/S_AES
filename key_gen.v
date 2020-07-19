module key(kin,key0,key1,key2);
input [15:0]kin;
output [15:0]key0,key1,key2;
wire [7:0]w0,w1,w2,w3,w4,w5;
wire [7:0]e00,e10;
wire [7:0]x0,x1,x2,x3;

assign w0 = kin[15:8];
assign w1 = kin[7:0];
assign key0 ={w0,w1};
rotnib r1(w1,e00);
subnib s1(e00,x0);
assign w2 = (w0) ^ (8'b10000000) ^(x0);
assign w3 = (w2 ^ w1);
rotnib r2(w3,e10);
subnib s2(e10,x1);
assign w4 = (w2 )^ (8'b00110000 )^ (x1);
assign w5 = w4 ^ w3;
assign key1 = {w2,w3};
assign key2 = {w4,w5};
endmodule