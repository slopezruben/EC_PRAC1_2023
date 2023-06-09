//: version "1.8.7"

module CPA16(Cout, A, B, Cin, S);
//: interface  /sz:(149, 111) /bd:[ Ti0>B[15:0](113/149) Ti1>A[15:0](44/149) Ri0>Cin(42/111) Lo0<Cout(52/111) Bo0<S[15:0](69/149) ]
input [15:0] B;    //: /sn:0 {0}(20,68)(486,68){1}
//: {2}(487,68)(120,68)(120,83)(130,83){3}
//: {4}(131,68)(215,68)(215,67)(299,67){5}
//: {6}(300,67)(485,67)(485,68)(669,68){7}
//: {8}(670,68)(707,68){9}
input [15:0] A;    //: /sn:0 {0}(36,31)(86,31){1}
//: {2}(87,31)(256,31){3}
//: {4}(257,31)(434,31){5}
//: {6}(435,31)(625,31){7}
//: {8}(626,31)(689,31){9}
input Cin;    //: /sn:0 {0}(796,173)(726,173)(726,171)(716,171){1}
output Cout;    //: /sn:0 {0}(26,315)(12,315)(12,191)(33,191){1}
output [15:0] S;    //: /sn:0 /dp:1 {0}(703,304)(883,304)(883,357)(846,357)(846,372)(856,372){1}
wire [3:0] w16;    //: /sn:0 {0}(86,156)(86,43)(87,43)(87,35){1}
wire w13;    //: /sn:0 {0}(204,184)(186,184)(186,183)(176,183){1}
wire [3:0] w6;    //: /sn:0 {0}(435,149)(435,35){1}
wire w7;    //: /sn:0 {0}(525,176)(563,176)(563,179)(573,179){1}
wire [3:0] w4;    //: /sn:0 {0}(609,224)(609,319)(697,319){1}
wire [3:0] w0;    //: /sn:0 {0}(670,144)(670,72){1}
wire [3:0] w19;    //: /sn:0 {0}(64,236)(64,289)(697,289){1}
wire [3:0] w10;    //: /sn:0 {0}(301,149)(301,79)(300,79)(300,71){1}
wire [3:0] w1;    //: /sn:0 {0}(626,144)(626,35){1}
wire w8;    //: /sn:0 {0}(382,184)(357,184)(357,176)(347,176){1}
wire [3:0] w14;    //: /sn:0 {0}(235,229)(235,299)(697,299){1}
wire [3:0] w11;    //: /sn:0 {0}(257,149)(257,35){1}
wire [3:0] w15;    //: /sn:0 {0}(130,156)(130,80)(131,80)(131,72){1}
wire [3:0] w5;    //: /sn:0 {0}(479,149)(479,80)(487,80)(487,72){1}
wire [3:0] w9;    //: /sn:0 {0}(413,229)(413,309)(697,309){1}
//: enddecls

  tran g8(.Z(w0), .I(B[3:0]));   //: @(670,66) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  //: output g4 (Cout) @(23,315) /sn:0 /w:[ 0 ]
  concat g16 (.I0(w4), .I1(w9), .I2(w14), .I3(w19), .Z(S));   //: @(702,304) /sn:0 /w:[ 1 1 1 1 0 ] /dr:0
  CPA4 g3 (.A(w16), .B(w15), .Cin(w13), .Cout(Cout), .S(w19));   //: @(34, 157) /sz:(141, 78) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<1 Bo0<0 ]
  tran g17(.Z(w1), .I(A[3:0]));   //: @(626,29) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  CPA4 g2 (.A(w11), .B(w10), .Cin(w8), .Cout(w13), .S(w14));   //: @(205, 150) /sz:(141, 78) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<0 ]
  CPA4 g1 (.A(w6), .B(w5), .Cin(w7), .Cout(w8), .S(w9));   //: @(383, 150) /sz:(141, 78) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<0 ]
  tran g10(.Z(w10), .I(B[11:8]));   //: @(300,65) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: input g6 (A) @(34,31) /sn:0 /w:[ 0 ]
  tran g9(.Z(w6), .I(A[7:4]));   //: @(435,29) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: input g7 (B) @(18,68) /sn:0 /w:[ 0 ]
  tran g12(.Z(w15), .I(B[15:12]));   //: @(131,66) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  tran g14(.Z(w5), .I(B[7:4]));   //: @(487,66) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g11(.Z(w11), .I(A[11:8]));   //: @(257,29) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  //: input g5 (Cin) @(798,173) /sn:0 /R:2 /w:[ 0 ]
  //: output g15 (S) @(853,372) /sn:0 /w:[ 1 ]
  CPA4 g0 (.A(w1), .B(w0), .Cin(Cin), .Cout(w7), .S(w4));   //: @(574, 145) /sz:(141, 78) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<1 Bo0<0 ]
  tran g13(.Z(w16), .I(A[15:12]));   //: @(87,29) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1

endmodule

module main;    //: root_module
wire [15:0] w6;    //: /sn:0 {0}(381,81)(381,124)(398,124)(398,134){1}
wire w4;    //: /sn:0 {0}(284,187)(241,187)(241,200)(226,200)(226,190){1}
wire w0;    //: /sn:0 /dp:1 {0}(435,177)(472,177)(472,198){1}
wire [15:0] w5;    //: /sn:0 {0}(296,82)(296,124)(329,124)(329,134){1}
wire [15:0] w9;    //: /sn:0 {0}(190,295)(190,305)(211,305)(211,311)(339,311)(339,257)(354,257)(354,247){1}
//: enddecls

  led g4 (.I(w4));   //: @(226,183) /sn:0 /w:[ 1 ] /type:0
  //: switch g3 (w0) @(472,212) /sn:0 /R:1 /w:[ 1 ] /st:0
  //: dip g2 (w6) @(381,71) /sn:0 /w:[ 0 ] /st:0
  //: dip g1 (w5) @(296,72) /sn:0 /w:[ 0 ] /st:0
  led g5 (.I(w9));   //: @(190,288) /sn:0 /w:[ 0 ] /type:4
  CPA16 g0 (.A(w5), .B(w6), .Cin(w0), .Cout(w4), .S(w9));   //: @(285, 135) /sz:(149, 111) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<1 ]

endmodule
