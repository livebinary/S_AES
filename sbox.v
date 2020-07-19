module sbox(sin,sout);
input [3:0]sin;
output [3:0]sout;
reg [3:0]temp;
reg [3:0]sout;
always@*
begin
case (sin) 
4'b0000:temp= 4'b1001;

4'b0001:temp= 4'b0100;

4'b0010:temp= 4'b1010;

4'b0011:temp= 4'b1011;

4'b0100:temp= 4'b1101;


4'b0101:temp= 4'b0001;


4'b0110:temp= 4'b1000;


4'b0111:temp= 4'b0101;


4'b1000:temp= 4'b0110;


4'b1001:temp= 4'b0010;


4'b1010:temp= 4'b0000;


4'b1011:temp= 4'b0011;


4'b1100:temp= 4'b1100;


4'b1101:temp= 4'b1110;


4'b1110:temp= 4'b1111;


4'b1111:temp= 4'b0111;
endcase
sout = temp;
end
endmodule