module encryption(plain,key0,key1,key2,cipher);
input [15:0]plain,key0,key1,key2;
output [15:0]cipher;
wire [15:0] r1,r2,r3,r4,r5;
assign r1 = plain ^ key0;
sbox xa(r1[15:12],r2[15:12]);
sbox xb(r1[11:8],r2[11:8]);
sbox xbb(r1[7:4],r2[7:4]);
sbox xabb(r1[3:0],r2[3:0]);

matmul mul1(r2,r3);

assign r4 = r3 ^ key1;

sbox xa1(r4[15:12],r5[15:12]);
sbox xb1(r4[11:8],r5[11:8]);
sbox xbb1(r4[7:4],r5[7:4]);
sbox xabb1(r4[3:0],r5[3:0]);

assign cipher = r5 ^ key2;

endmodule