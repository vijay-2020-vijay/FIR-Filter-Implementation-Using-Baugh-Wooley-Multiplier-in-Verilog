`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////This is implementetion of 3 Tap FIR Filters/////////////////////////
////////////The equation is like that   y(n)=8*x[n]+4*x[n-1]+10*x[n-3]///////////
module iir #(n=15,s0=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5)(clk,reset,result,done);
input clk,reset;
output reg signed [6:0]result;
output reg done;
/////////////////////input and output decleration completed////////////////////////////////////////////////////////////
reg signed[3:0]xload[0:n];
reg[2:0]ns;
reg [4:0]i,iteretion;//////////////here n=10; we have chosen//////////////////so i have taken i=4bit is sufficient/////////////////
reg signed[3:0]a1,b1;
wire [6:0] multi;
reg signed[6:0] sum1,sum2,sum3,sum11,sum22,sum33;
bougly B1(.a(a1),.b(b1),.pro(multi));
always@(posedge clk) begin
        if(reset) begin
        /////////////////////////////////////here xload matrix is defined and here wqe have taken total 10 samples of data
         xload[0]<=2; xload[1]<=5; xload[2]<=-6;xload[3]<=4; xload[4]<=-1;
         xload[5]<=3; xload[6]<=-3; xload[7]<=-2;xload[8]<=4; xload[9]<=1;
         xload[10]<=-2; xload[11]<=-2; xload[12]<=6;xload[13]<=-4; xload[14]<=-3;
         xload[15]<=5;
         ///here we have to considered that xload[-3 to 12] indexwise datas avaliable///////////
         //suppose x[0]=2 which is treated as x[-3]=2
         //suppose x[1]=5 which has been also considered as x[-2]=5 ///similarly .... x[15]=x[12]
         ns<=s0;i<=0;sum1<=0;sum2<=0;sum3<=0;iteretion<=0;
         sum11<=0;sum22<=0;sum33<=0;
        end
        else   begin
        case(ns)
 /////////////////////////////////////////////////////////////////       
      s0:begin  
          result<=sum11+sum22+sum33;
          a1<=5;b1<=xload[i];  ///actually a1=10 in a question
          i<=i+2;
          ns<=s1;
         end
      s1:begin
         sum1<=multi+multi;      
         a1<=4;b1<=xload[i];
         i<=i+1;
         ns<=s2;
         end
      s2:begin
         sum2<=multi;
         a1<=4;
         b1<=xload[i];
         ns<=s3;
         end
     s3:begin
        sum3<=multi+multi;
        i<=i-2;
        iteretion<=iteretion+1;
        if(i>=n) begin
            ns<=s4;
        end
        else
          ns<=s5;
        end      
     s4:begin
        done<=1;
     end
     s5:begin
        sum11<=sum1;
        sum22<=sum2;
        sum33<=sum3;
        ns<=s0;
     end
        
      endcase  
        end
end
endmodule
