module seq101(input clk,in,reset,output  y);
parameter s0=2'b00,s1=2'b01,s2=2'b10;
reg [1:0]ns,ps;
always @(posedge clk)
begin
if(reset==1)
ps<=s0;
else
ps<=ns;
end

assign y=((ps==s2)&&(in==1))?1:0;

always@(in or clk)
begin
case(ps)
s0:
begin
if(in==1)
ns=s1;
else
ns=s0;
end
s1:
begin
if(in==1)
ns=s1;
else
ns=s2;
end
s2:
begin
if(in==1)
ns=s1;
else
ns=s0;
end
default:
begin
 ns=s0;
end
endcase
end

endmodule



