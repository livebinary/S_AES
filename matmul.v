module matmul(inq,outq);
input [15:0] inq;
wire[3:0] w1a,w2a,w3a,w4a;
output [15:0] outq; 

gf16 f1(inq[11:8],w1a);
gf16 f2(inq[3:0],w2a);
gf16 f3(inq[15:12],w3a);
gf16 f4(inq[7:4],w4a);
assign outq[15:12] = (inq[15:12]) ^ (w1a);
assign outq[7:4] = (w2a) ^  (inq[7:4]) ;
assign outq [11:8] = (inq[11:8]) ^ (w3a) ;
assign outq [3:0] = (w4a) ^ (inq[3:0]) ;
endmodule