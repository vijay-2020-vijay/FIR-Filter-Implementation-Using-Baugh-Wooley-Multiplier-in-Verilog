`timescale 1ns / 1ps
///////////////////////////////////////
module bougly(a,b,pro);
input[3:0]a,b;
output[6:0] pro;
assign a0b0=a[0]&b[0];assign a1b0=a[1]&b[0];assign a2b0=a[2]&b[0];assign a3b0=~(a[3]&b[0]);
assign a0b1=a[0]&b[1];assign a1b1=a[1]&b[1];assign a2b1=a[2]&b[1];assign a3b1=~(a[3]&b[1]);
assign a0b2=a[0]&b[2];assign a1b2=a[1]&b[2];assign a2b2=a[2]&b[2];assign a3b2=~(a[3]&b[2]);
assign a0b3=~(a[0]&b[3]);assign a1b3=~(a[1]&b[3]);assign a2b3=~(a[2]&b[3]);assign a3b3=(a[3]&b[3]);
assign pro[0]=a0b0;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13;
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
///////////////////////////////////////////////Simply Constraction of boog weely multiplier/////////////////////////////////////////////////////////////
ha ha1(.a(a1b0),.b(a0b1),.sa(pro[1]),.ca(c1)); ha ha2(.a(a2b0),.b(a1b1),.sa(s2),.ca(c2)); ha ha3(.a(a3b0),.b(a2b1),.sa(s3),.ca(c3));
fa fa1(.a(c1),.b(a0b2),.c(s2),.sa(pro[2]),.ca(c4)); fa fa2(.a(c2),.b(a1b2),.c(s3),.sa(s4),.ca(c5)); fa fa3(.a(a3b1),.b(c3),.c(a1b3),.sa(s5),.ca(c6));
fa fa6(.a(a2b3),.b(a3b2),.c(c6),.sa(s6),.ca(c7)); fa fa5(.a(s5),.b(c5),.c(a2b2),.sa(s7),.ca(c8)); fa fa4(.a(s4),.b(c4),.c(a0b3),.sa(pro[3]),.ca(c9));
ha ha5(.a(a3b3),.b(c7),.sa(s10),.ca());ha ha4(.a(s6),.b(c8),.sa(s11),.ca(c11)); fa fa7(.a(s7),.b(c9),.c(1),.sa(pro[4]),.ca(c12));
                              ha ha7(.a(s10),.b(c11),.sa(s12),.ca());ha ha6(.a(s11),.b(c12),.sa(pro[5]),.ca(c13));
                                                            ha ha8(.a(s12),.b(c13),.sa(pro[6]),.ca());
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
endmodule
/////////module of half adder//////////////////
module ha(a,b,sa,ca);
input a,b;
output sa,ca;
assign sa=a^b;
assign ca=a&b;
endmodule
///////////////////////////////////////
module fa(a,b,c,sa,ca);
input a,b,c;
output sa,ca;
assign sa=a^b^c;
assign ca= (a & b) | (b & c) | (a & c);
endmodule
////////////////////////////////////////