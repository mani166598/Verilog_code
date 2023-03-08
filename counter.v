module counter(cnt,clk,rst);
input clk,rst;
output [2:0]cnt;

reg [2:0]cnt;
wire [2:0]next_cnt;

assign next_cnt = cnt - 1'b1;  //Just increment by 1

always @ (posedge clk)   
begin
 if(rst)
 begin
 cnt <= 3'b111;
 end
 else
 begin
 cnt <= next_cnt;
 end
end

endmodule