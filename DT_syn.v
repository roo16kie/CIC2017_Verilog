/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP3
// Date      : Wed Jan 16 13:52:26 2019
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDHX4 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  XOR2X1 U1 ( .A(A[2]), .B(carry[2]), .Y(SUM[2]) );
  AND2X2 U2 ( .A(A[2]), .B(carry[2]), .Y(n1) );
  XOR2X1 U3 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVXL U4 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module DT_DW01_inc_6 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   N43, N44, N45, N46, \ns[0] , N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N222, N231, N250, N251, N252,
         N253, N254, N255, N256, N257, N258, N259, N260, N261, N262, N263,
         N264, N265, N298, N299, N300, N301, N302, N303, N304, N305, N323,
         N324, N326, N327, N328, N329, N330, N331, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n259, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572;
  wire   [6:0] y;
  wire   [6:0] d;
  wire   [6:0] a;
  wire   [6:0] x;
  wire   [6:0] b;
  wire   [6:0] c;

  EDFFX4 \res_do_reg[0]  ( .D(N324), .E(N323), .CK(clk), .Q(res_do[0]) );
  EDFFX4 \res_do_reg[4]  ( .D(N328), .E(N323), .CK(clk), .Q(res_do[4]), .QN(
        n307) );
  EDFFX4 \res_do_reg[2]  ( .D(N326), .E(N323), .CK(clk), .Q(res_do[2]), .QN(
        n308) );
  DT_DW01_inc_0 add_200_2 ( .A(res_di), .SUM({N305, N304, N303, N302, N301, 
        N300, N299, N298}) );
  DT_DW01_inc_1 add_193_2 ( .A(res_do), .SUM({N265, N264, N263, N262, N261, 
        N260, N259, N258}) );
  DT_DW01_inc_2 add_152 ( .A(res_addr), .SUM({N177, N176, N175, N174, N173, 
        N172, N171, N170, N169, N168, N167, N166, N165, N164}) );
  DT_DW01_inc_3 add_108 ( .A(sti_addr), .SUM({N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, N112}) );
  DT_DW01_inc_4 r367 ( .A(res_di), .SUM({N257, N256, N255, N254, N253, N252, 
        N251, N250}) );
  DT_DW01_inc_5 r358 ( .A(y), .SUM(d) );
  DT_DW01_inc_6 add_41 ( .A(x), .SUM(c) );
  DFFRX1 \counter_reg[0]  ( .D(n263), .CK(clk), .RN(reset), .Q(n565), .QN(n344) );
  DFFSX1 \sti_count_reg[3]  ( .D(n264), .CK(clk), .SN(n348), .Q(N46) );
  DFFRX2 done_reg ( .D(n268), .CK(clk), .RN(reset), .Q(done), .QN(n227) );
  DFFRX2 res_rd_reg ( .D(n571), .CK(clk), .RN(n347), .Q(res_rd), .QN(n223) );
  DFFRX2 \res_addr_reg[13]  ( .D(n234), .CK(clk), .RN(n347), .Q(res_addr[13]), 
        .QN(n213) );
  DFFSX1 \sti_count_reg[2]  ( .D(n265), .CK(clk), .SN(n348), .Q(N45), .QN(n224) );
  DFFRX2 \res_addr_reg[7]  ( .D(n240), .CK(clk), .RN(n347), .Q(res_addr[7]), 
        .QN(n219) );
  DFFRX2 \res_addr_reg[8]  ( .D(n239), .CK(clk), .RN(n347), .Q(res_addr[8]), 
        .QN(n218) );
  DFFRX2 \res_addr_reg[9]  ( .D(n238), .CK(clk), .RN(n347), .Q(res_addr[9]), 
        .QN(n217) );
  DFFRX2 \res_addr_reg[10]  ( .D(n237), .CK(clk), .RN(n347), .Q(res_addr[10]), 
        .QN(n216) );
  DFFRX2 \res_addr_reg[11]  ( .D(n236), .CK(clk), .RN(n347), .Q(res_addr[11]), 
        .QN(n215) );
  DFFRX2 \res_addr_reg[12]  ( .D(n235), .CK(clk), .RN(n347), .Q(res_addr[12]), 
        .QN(n214) );
  DFFSX1 \sti_count_reg[1]  ( .D(n266), .CK(clk), .SN(reset), .Q(N44), .QN(
        n225) );
  DFFSX1 \sti_count_reg[0]  ( .D(n267), .CK(clk), .SN(n348), .Q(N43), .QN(n226) );
  DFFRX2 \res_addr_reg[4]  ( .D(n243), .CK(clk), .RN(n348), .Q(res_addr[4]), 
        .QN(n222) );
  DFFRX2 \res_addr_reg[5]  ( .D(n242), .CK(clk), .RN(n347), .Q(res_addr[5]), 
        .QN(n221) );
  DFFRX2 \res_addr_reg[6]  ( .D(n241), .CK(clk), .RN(n347), .Q(res_addr[6]), 
        .QN(n220) );
  DFFRX2 res_wr_reg ( .D(N222), .CK(clk), .RN(n347), .Q(res_wr), .QN(n302) );
  EDFFX2 \res_do_reg[7]  ( .D(N331), .E(N323), .CK(clk), .Q(res_do[7]), .QN(
        n299) );
  DFFRX1 \cs_reg[0]  ( .D(\ns[0] ), .CK(clk), .RN(n347), .Q(n562) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n269), .CK(clk), .RN(n348), .Q(sti_addr[9]) );
  EDFFX2 \res_do_reg[3]  ( .D(N327), .E(N323), .CK(clk), .Q(res_do[3]), .QN(
        n296) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n278), .CK(clk), .RN(n348), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n274), .CK(clk), .RN(n348), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n275), .CK(clk), .RN(n348), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n270), .CK(clk), .RN(reset), .Q(sti_addr[7])
         );
  DFFRX2 \sti_addr_reg[5]  ( .D(n272), .CK(clk), .RN(n348), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n273), .CK(clk), .RN(n348), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n276), .CK(clk), .RN(n348), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n271), .CK(clk), .RN(n348), .Q(sti_addr[6]) );
  DFFRX1 \cs_reg[1]  ( .D(n572), .CK(clk), .RN(n347), .Q(n563), .QN(n290) );
  DFFRX1 \cs_reg[2]  ( .D(n570), .CK(clk), .RN(n347), .Q(n564), .QN(n294) );
  DFFRX1 \x_reg[6]  ( .D(n569), .CK(clk), .RN(reset), .Q(x[6]) );
  DFFRX1 \y_reg[6]  ( .D(n252), .CK(clk), .RN(n347), .Q(y[6]), .QN(n295) );
  DFFRX1 \counter_reg[2]  ( .D(n261), .CK(clk), .RN(reset), .Q(n566), .QN(n293) );
  DFFRX1 \counter_reg[1]  ( .D(n262), .CK(clk), .RN(reset), .Q(n567), .QN(n300) );
  DFFRX1 \x_reg[4]  ( .D(n256), .CK(clk), .RN(reset), .Q(x[4]), .QN(n292) );
  DFFRX1 \x_reg[1]  ( .D(n259), .CK(clk), .RN(reset), .Q(x[1]), .QN(n305) );
  DFFSX2 \x_reg[0]  ( .D(n568), .CK(clk), .SN(reset), .Q(x[0]), .QN(n288) );
  DFFRX2 sti_rd_reg ( .D(n283), .CK(clk), .RN(reset), .Q(sti_rd) );
  DFFRX1 \y_reg[4]  ( .D(n248), .CK(clk), .RN(n348), .Q(y[4]), .QN(n301) );
  DFFRX1 \y_reg[3]  ( .D(n249), .CK(clk), .RN(n347), .Q(y[3]), .QN(n287) );
  DFFRX1 \y_reg[5]  ( .D(n253), .CK(clk), .RN(reset), .Q(y[5]), .QN(n286) );
  DFFRX1 \y_reg[1]  ( .D(n251), .CK(clk), .RN(reset), .Q(y[1]), .QN(n303) );
  DFFRX1 \x_reg[5]  ( .D(n257), .CK(clk), .RN(reset), .Q(x[5]) );
  DFFRX1 \x_reg[2]  ( .D(n254), .CK(clk), .RN(reset), .Q(x[2]), .QN(n304) );
  DFFRX1 \x_reg[3]  ( .D(n255), .CK(clk), .RN(reset), .Q(x[3]) );
  EDFFX2 \res_do_reg[1]  ( .D(n289), .E(N323), .CK(clk), .Q(res_do[1]) );
  DFFRX2 \res_addr_reg[3]  ( .D(n244), .CK(clk), .RN(n348), .Q(res_addr[3]), 
        .QN(n312) );
  DFFRX2 \res_addr_reg[1]  ( .D(n246), .CK(clk), .RN(n347), .Q(res_addr[1]), 
        .QN(n311) );
  DFFRX2 \res_addr_reg[2]  ( .D(n245), .CK(clk), .RN(n348), .Q(res_addr[2]), 
        .QN(n310) );
  DFFRX2 \res_addr_reg[0]  ( .D(n279), .CK(clk), .RN(n348), .Q(res_addr[0]), 
        .QN(n309) );
  DFFRX1 \y_reg[2]  ( .D(n250), .CK(clk), .RN(reset), .Q(y[2]), .QN(n306) );
  EDFFX2 \res_do_reg[6]  ( .D(N330), .E(N323), .CK(clk), .Q(res_do[6]), .QN(
        n298) );
  EDFFX2 \res_do_reg[5]  ( .D(N329), .E(N323), .CK(clk), .Q(res_do[5]), .QN(
        n297) );
  DFFSX1 \y_reg[0]  ( .D(n280), .CK(clk), .SN(reset), .Q(y[0]), .QN(n291) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n277), .CK(clk), .RN(n348), .Q(sti_addr[0]) );
  NAND2X2 U266 ( .A(N255), .B(n297), .Y(n527) );
  OAI221X1 U267 ( .A0(n487), .A1(n297), .B0(n488), .B1(n496), .C0(n497), .Y(
        N329) );
  OAI221X1 U268 ( .A0(n487), .A1(n296), .B0(n488), .B1(n500), .C0(n501), .Y(
        N327) );
  CLKINVX8 U269 ( .A(n491), .Y(n284) );
  INVX12 U270 ( .A(n284), .Y(n285) );
  INVX2 U271 ( .A(n504), .Y(n487) );
  NAND2XL U272 ( .A(n504), .B(res_do[1]), .Y(n330) );
  OAI33X4 U273 ( .A0(n510), .A1(n471), .A2(n465), .B0(n509), .B1(n461), .B2(
        n466), .Y(n504) );
  OAI21XL U274 ( .A0(res_do[2]), .A1(n539), .B0(n538), .Y(n536) );
  OR2X1 U275 ( .A(n532), .B(N256), .Y(n324) );
  NOR4X1 U276 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n553) );
  NOR2X4 U277 ( .A(res_di[2]), .B(res_di[3]), .Y(n327) );
  CLKBUFX3 U278 ( .A(n485), .Y(n323) );
  OAI22X1 U279 ( .A0(n512), .A1(n513), .B0(res_di[7]), .B1(n299), .Y(n509) );
  AND2X2 U280 ( .A(N299), .B(n285), .Y(n332) );
  AND2X2 U281 ( .A(N251), .B(n493), .Y(n334) );
  BUFX12 U282 ( .A(n394), .Y(n345) );
  CLKINVX1 U283 ( .A(n572), .Y(n386) );
  INVX1 U284 ( .A(n343), .Y(n398) );
  NAND3X1 U285 ( .A(n330), .B(n331), .C(n506), .Y(n289) );
  NOR2X4 U286 ( .A(n485), .B(n486), .Y(n462) );
  INVX3 U287 ( .A(n462), .Y(n322) );
  NOR3X1 U288 ( .A(n332), .B(n333), .C(n334), .Y(n506) );
  NOR3XL U289 ( .A(n470), .B(n469), .C(n384), .Y(n541) );
  AO21XL U290 ( .A0(n509), .A1(n469), .B0(n470), .Y(n511) );
  INVXL U291 ( .A(n469), .Y(n461) );
  OAI21X1 U292 ( .A0(n351), .A1(n292), .B0(n352), .Y(b[4]) );
  NOR2X2 U293 ( .A(n393), .B(n420), .Y(n392) );
  NOR3X2 U294 ( .A(n566), .B(n346), .C(n567), .Y(n471) );
  OR2X1 U295 ( .A(n487), .B(n299), .Y(n313) );
  OR2X1 U296 ( .A(n488), .B(n489), .Y(n314) );
  NAND3X1 U297 ( .A(n313), .B(n314), .C(n490), .Y(N331) );
  AND2XL U298 ( .A(N305), .B(n285), .Y(n315) );
  AND2X2 U299 ( .A(N265), .B(n492), .Y(n316) );
  AND2X2 U300 ( .A(N257), .B(n493), .Y(n317) );
  NOR3X1 U301 ( .A(n315), .B(n316), .C(n317), .Y(n490) );
  AND2XL U302 ( .A(N304), .B(n285), .Y(n318) );
  AND2X2 U303 ( .A(N264), .B(n492), .Y(n319) );
  AND2XL U304 ( .A(N256), .B(n493), .Y(n320) );
  NOR3X1 U305 ( .A(n318), .B(n319), .C(n320), .Y(n495) );
  OAI221X2 U306 ( .A0(n302), .A1(n402), .B0(n482), .B1(n462), .C0(n472), .Y(
        n394) );
  OR3X2 U307 ( .A(n325), .B(n326), .C(n342), .Y(n321) );
  AOI32X2 U308 ( .A0(n527), .A1(n528), .A2(n529), .B0(n530), .B1(n531), .Y(
        n525) );
  NAND2X2 U309 ( .A(n552), .B(n553), .Y(n447) );
  AND2X2 U310 ( .A(n345), .B(n404), .Y(n337) );
  NOR3BX1 U311 ( .AN(n327), .B(res_di[0]), .C(res_di[1]), .Y(n552) );
  NAND2X1 U312 ( .A(n324), .B(n298), .Y(n531) );
  AND2X4 U313 ( .A(n345), .B(n404), .Y(n399) );
  AND2XL U314 ( .A(n339), .B(n323), .Y(n325) );
  AND2X2 U315 ( .A(n340), .B(n341), .Y(n326) );
  NOR2X2 U316 ( .A(n389), .B(n386), .Y(n485) );
  INVXL U317 ( .A(n465), .Y(n340) );
  AOI22X2 U318 ( .A0(n471), .A1(n486), .B0(n329), .B1(n511), .Y(n488) );
  OR2X1 U319 ( .A(n525), .B(n526), .Y(n335) );
  NAND2X1 U320 ( .A(n335), .B(n336), .Y(n510) );
  CLKMX2X2 U321 ( .A(n447), .B(n551), .S0(n562), .Y(n550) );
  CLKINVX1 U322 ( .A(n486), .Y(n465) );
  INVX1 U323 ( .A(n323), .Y(n328) );
  NAND2X1 U324 ( .A(n351), .B(n292), .Y(n352) );
  AND4X1 U325 ( .A(x[0]), .B(n422), .C(n436), .D(n423), .Y(n433) );
  OAI211X1 U326 ( .A0(n544), .A1(n545), .B0(n546), .C0(n547), .Y(n572) );
  OR2X1 U327 ( .A(n349), .B(x[2]), .Y(n350) );
  CLKINVX1 U328 ( .A(n328), .Y(n329) );
  NAND2XL U329 ( .A(n505), .B(res_di[1]), .Y(n331) );
  AND2X2 U330 ( .A(N259), .B(n492), .Y(n333) );
  INVX1 U331 ( .A(n488), .Y(n505) );
  NOR3BX2 U332 ( .AN(n510), .B(n471), .C(n465), .Y(n491) );
  AND3X2 U333 ( .A(n509), .B(n323), .C(n384), .Y(n493) );
  AOI32X2 U334 ( .A0(res_do[4]), .A1(n533), .A2(n527), .B0(n534), .B1(
        res_do[5]), .Y(n532) );
  AND2X2 U335 ( .A(N257), .B(n299), .Y(n526) );
  OR2X1 U336 ( .A(N257), .B(n299), .Y(n336) );
  AOI31XL U337 ( .A0(n422), .A1(n423), .A2(x[0]), .B0(b[1]), .Y(n419) );
  AOI31XL U338 ( .A0(n422), .A1(n436), .A2(x[0]), .B0(b[2]), .Y(n435) );
  NOR2X2 U339 ( .A(n466), .B(n482), .Y(n474) );
  INVX1 U340 ( .A(n323), .Y(n466) );
  NOR2X2 U341 ( .A(n389), .B(n385), .Y(n486) );
  NAND2XL U342 ( .A(n469), .B(n346), .Y(n414) );
  NOR2XL U343 ( .A(n470), .B(n471), .Y(n464) );
  AND3XL U344 ( .A(n570), .B(n386), .C(n468), .Y(n342) );
  OR2XL U345 ( .A(n391), .B(n392), .Y(n338) );
  NAND3XL U346 ( .A(n538), .B(n539), .C(res_do[2]), .Y(n537) );
  AO21XL U347 ( .A0(n350), .A1(x[3]), .B0(n351), .Y(b[3]) );
  OAI2BB1XL U348 ( .A0N(n349), .A1N(x[2]), .B0(n350), .Y(b[2]) );
  OAI2BB1XL U349 ( .A0N(x[0]), .A1N(x[1]), .B0(n349), .Y(b[1]) );
  INVX1 U350 ( .A(n381), .Y(n374) );
  CLKINVX1 U351 ( .A(n414), .Y(n341) );
  CLKINVX1 U352 ( .A(n464), .Y(n339) );
  CLKMX2X2 U353 ( .A(n393), .B(n338), .S0(n291), .Y(n280) );
  OAI21XL U354 ( .A0(res_do[2]), .A1(n502), .B0(n523), .Y(n521) );
  AOI222XL U355 ( .A0(N231), .A1(n404), .B0(res_do[0]), .B1(n504), .C0(
        res_di[0]), .C1(n505), .Y(n507) );
  CLKINVX1 U356 ( .A(n463), .Y(n484) );
  AOI32X1 U357 ( .A0(res_wr), .A1(n389), .A2(n483), .B0(n322), .B1(n384), .Y(
        n463) );
  AOI31XL U358 ( .A0(n469), .A1(n344), .A2(n322), .B0(n484), .Y(n343) );
  NAND4X1 U359 ( .A(y[0]), .B(n433), .C(n556), .D(n557), .Y(n545) );
  NOR2X1 U360 ( .A(n350), .B(x[3]), .Y(n351) );
  CLKBUFX3 U361 ( .A(n565), .Y(n346) );
  AND4X2 U362 ( .A(res_addr[3]), .B(res_addr[2]), .C(n401), .D(res_addr[1]), 
        .Y(n400) );
  CLKBUFX3 U363 ( .A(reset), .Y(n348) );
  CLKBUFX3 U364 ( .A(reset), .Y(n347) );
  OAI211X4 U365 ( .A0(n541), .A1(n466), .B0(n402), .C0(n465), .Y(N323) );
  NOR2X2 U366 ( .A(n393), .B(n381), .Y(n391) );
  OAI21X1 U367 ( .A0(n443), .A1(n379), .B0(n374), .Y(n418) );
  NOR2X2 U368 ( .A(n465), .B(n482), .Y(n475) );
  AOI32X4 U369 ( .A0(n387), .A1(n290), .A2(n294), .B0(n549), .B1(n550), .Y(
        n389) );
  NOR3X2 U370 ( .A(n448), .B(n466), .C(n509), .Y(n492) );
  OAI221X4 U371 ( .A0(n464), .A1(n465), .B0(n414), .B1(n466), .C0(n467), .Y(
        n397) );
  AOI221X4 U372 ( .A0(n483), .A1(n468), .B0(n322), .B1(n471), .C0(n484), .Y(
        n472) );
  OAI211X4 U373 ( .A0(n433), .A1(n420), .B0(n418), .C0(n421), .Y(n393) );
  NAND2BX1 U374 ( .AN(x[1]), .B(n288), .Y(n349) );
  XNOR2X1 U375 ( .A(x[5]), .B(n352), .Y(b[5]) );
  NOR2X1 U376 ( .A(x[5]), .B(n352), .Y(n353) );
  XOR2X1 U377 ( .A(x[6]), .B(n353), .Y(b[6]) );
  NAND2BX1 U378 ( .AN(y[1]), .B(n291), .Y(n354) );
  OAI2BB1X1 U379 ( .A0N(y[0]), .A1N(y[1]), .B0(n354), .Y(a[1]) );
  OR2X1 U380 ( .A(n354), .B(y[2]), .Y(n355) );
  OAI2BB1X1 U381 ( .A0N(n354), .A1N(y[2]), .B0(n355), .Y(a[2]) );
  NOR2X1 U382 ( .A(n355), .B(y[3]), .Y(n356) );
  AO21X1 U383 ( .A0(n355), .A1(y[3]), .B0(n356), .Y(a[3]) );
  NAND2X1 U384 ( .A(n356), .B(n301), .Y(n357) );
  OAI21XL U385 ( .A0(n356), .A1(n301), .B0(n357), .Y(a[4]) );
  XNOR2X1 U386 ( .A(y[5]), .B(n357), .Y(a[5]) );
  NOR2X1 U387 ( .A(y[5]), .B(n357), .Y(n358) );
  XOR2X1 U388 ( .A(y[6]), .B(n358), .Y(a[6]) );
  NOR2X1 U389 ( .A(n225), .B(N43), .Y(n368) );
  NOR2X1 U390 ( .A(n225), .B(n226), .Y(n367) );
  NOR2X1 U391 ( .A(n226), .B(N44), .Y(n365) );
  NOR2X1 U392 ( .A(N43), .B(N44), .Y(n364) );
  AO22X1 U393 ( .A0(sti_di[5]), .A1(n365), .B0(sti_di[4]), .B1(n364), .Y(n359)
         );
  AOI221XL U394 ( .A0(sti_di[6]), .A1(n368), .B0(sti_di[7]), .B1(n367), .C0(
        n359), .Y(n362) );
  AO22X1 U395 ( .A0(sti_di[1]), .A1(n365), .B0(sti_di[0]), .B1(n364), .Y(n360)
         );
  AOI221XL U396 ( .A0(sti_di[2]), .A1(n368), .B0(sti_di[3]), .B1(n367), .C0(
        n360), .Y(n361) );
  OA22X1 U397 ( .A0(n224), .A1(n362), .B0(N45), .B1(n361), .Y(n372) );
  AO22X1 U398 ( .A0(sti_di[13]), .A1(n365), .B0(sti_di[12]), .B1(n364), .Y(
        n363) );
  AOI221XL U399 ( .A0(sti_di[14]), .A1(n368), .B0(sti_di[15]), .B1(n367), .C0(
        n363), .Y(n370) );
  AO22X1 U400 ( .A0(sti_di[9]), .A1(n365), .B0(sti_di[8]), .B1(n364), .Y(n366)
         );
  AOI221XL U401 ( .A0(sti_di[10]), .A1(n368), .B0(sti_di[11]), .B1(n367), .C0(
        n366), .Y(n369) );
  OAI22XL U402 ( .A0(n370), .A1(n224), .B0(N45), .B1(n369), .Y(n371) );
  OAI2BB2XL U403 ( .B0(n372), .B1(N46), .A0N(N46), .A1N(n371), .Y(N231) );
  CLKINVX1 U404 ( .A(n373), .Y(n568) );
  AOI222XL U405 ( .A0(c[0]), .A1(n374), .B0(x[0]), .B1(n375), .C0(n376), .C1(
        n288), .Y(n373) );
  CLKINVX1 U406 ( .A(n377), .Y(n569) );
  AOI221XL U407 ( .A0(n375), .A1(x[6]), .B0(n376), .B1(b[6]), .C0(n378), .Y(
        n377) );
  OAI31XL U408 ( .A0(n379), .A1(n380), .A2(n381), .B0(n382), .Y(n378) );
  AOI21X1 U409 ( .A0(n383), .A1(n223), .B0(n384), .Y(n571) );
  OAI2BB2XL U410 ( .B0(n385), .B1(n386), .A0N(n387), .A1N(n388), .Y(n383) );
  NOR2X1 U411 ( .A(n389), .B(n390), .Y(n283) );
  CLKINVX1 U412 ( .A(n388), .Y(n390) );
  OAI211X1 U413 ( .A0(n345), .A1(n309), .B0(n395), .C0(n396), .Y(n279) );
  AOI222XL U414 ( .A0(n288), .A1(n321), .B0(c[0]), .B1(n397), .C0(x[0]), .C1(
        n398), .Y(n396) );
  NAND2X1 U415 ( .A(N164), .B(n337), .Y(n395) );
  CLKMX2X2 U416 ( .A(sti_addr[8]), .B(N120), .S0(n400), .Y(n278) );
  CLKMX2X2 U417 ( .A(sti_addr[0]), .B(N112), .S0(n400), .Y(n277) );
  CLKMX2X2 U418 ( .A(sti_addr[1]), .B(N113), .S0(n400), .Y(n276) );
  CLKMX2X2 U419 ( .A(sti_addr[2]), .B(N114), .S0(n400), .Y(n275) );
  CLKMX2X2 U420 ( .A(sti_addr[3]), .B(N115), .S0(n400), .Y(n274) );
  CLKMX2X2 U421 ( .A(sti_addr[4]), .B(N116), .S0(n400), .Y(n273) );
  CLKMX2X2 U422 ( .A(sti_addr[5]), .B(N117), .S0(n400), .Y(n272) );
  CLKMX2X2 U423 ( .A(sti_addr[6]), .B(N118), .S0(n400), .Y(n271) );
  CLKMX2X2 U424 ( .A(sti_addr[7]), .B(N119), .S0(n400), .Y(n270) );
  CLKMX2X2 U425 ( .A(sti_addr[9]), .B(N121), .S0(n400), .Y(n269) );
  NOR2X1 U426 ( .A(res_addr[0]), .B(n402), .Y(n401) );
  OAI2BB1X1 U427 ( .A0N(n563), .A1N(n403), .B0(n227), .Y(n268) );
  OAI21XL U428 ( .A0(n226), .A1(n404), .B0(n405), .Y(n267) );
  OAI21XL U429 ( .A0(n225), .A1(n406), .B0(n407), .Y(n266) );
  XOR2X1 U430 ( .A(n407), .B(n224), .Y(n265) );
  XOR2X1 U431 ( .A(N46), .B(n408), .Y(n264) );
  NOR2BX1 U432 ( .AN(n224), .B(n407), .Y(n408) );
  NAND2X1 U433 ( .A(n225), .B(n406), .Y(n407) );
  CLKINVX1 U434 ( .A(n405), .Y(n406) );
  NAND2X1 U435 ( .A(n226), .B(n404), .Y(n405) );
  MXI2X1 U436 ( .A(n346), .B(n409), .S0(n410), .Y(n263) );
  NAND2X1 U437 ( .A(n346), .B(n411), .Y(n409) );
  XNOR2X1 U438 ( .A(n567), .B(n412), .Y(n262) );
  NAND2X1 U439 ( .A(n413), .B(n346), .Y(n412) );
  OAI22XL U440 ( .A0(n414), .A1(n410), .B0(n415), .B1(n293), .Y(n261) );
  OA21XL U441 ( .A0(n300), .A1(n413), .B0(n346), .Y(n415) );
  CLKINVX1 U442 ( .A(n413), .Y(n410) );
  AOI211X1 U443 ( .A0(n416), .A1(n346), .B0(n388), .C0(n389), .Y(n413) );
  OAI222XL U444 ( .A0(n417), .A1(n418), .B0(n419), .B1(n420), .C0(n421), .C1(
        n305), .Y(n259) );
  CLKINVX1 U445 ( .A(c[1]), .Y(n417) );
  OAI211X1 U446 ( .A0(n381), .A1(n424), .B0(n382), .C0(n425), .Y(n257) );
  AOI22X1 U447 ( .A0(b[5]), .A1(n376), .B0(n375), .B1(x[5]), .Y(n425) );
  OAI31XL U448 ( .A0(n379), .A1(n426), .A2(n427), .B0(c[5]), .Y(n424) );
  OAI211X1 U449 ( .A0(n381), .A1(n428), .B0(n382), .C0(n429), .Y(n256) );
  AOI22X1 U450 ( .A0(b[4]), .A1(n376), .B0(n375), .B1(x[4]), .Y(n429) );
  OAI31XL U451 ( .A0(n379), .A1(n426), .A2(n430), .B0(c[4]), .Y(n428) );
  OAI211X1 U452 ( .A0(n431), .A1(n418), .B0(n382), .C0(n432), .Y(n255) );
  AOI22X1 U453 ( .A0(b[3]), .A1(n376), .B0(n375), .B1(x[3]), .Y(n432) );
  CLKINVX1 U454 ( .A(n421), .Y(n375) );
  NAND2X1 U455 ( .A(n376), .B(n433), .Y(n382) );
  CLKINVX1 U456 ( .A(n420), .Y(n376) );
  CLKINVX1 U457 ( .A(c[3]), .Y(n431) );
  OAI222XL U458 ( .A0(n434), .A1(n418), .B0(n435), .B1(n420), .C0(n421), .C1(
        n304), .Y(n254) );
  CLKINVX1 U459 ( .A(c[2]), .Y(n434) );
  CLKINVX1 U460 ( .A(n437), .Y(n253) );
  AOI222XL U461 ( .A0(n392), .A1(a[5]), .B0(n391), .B1(d[5]), .C0(n393), .C1(
        y[5]), .Y(n437) );
  CLKINVX1 U462 ( .A(n438), .Y(n252) );
  AOI222XL U463 ( .A0(n392), .A1(a[6]), .B0(n391), .B1(d[6]), .C0(n393), .C1(
        y[6]), .Y(n438) );
  CLKINVX1 U464 ( .A(n439), .Y(n251) );
  AOI222XL U465 ( .A0(n392), .A1(a[1]), .B0(n391), .B1(d[1]), .C0(n393), .C1(
        y[1]), .Y(n439) );
  CLKINVX1 U466 ( .A(n440), .Y(n250) );
  AOI222XL U467 ( .A0(n392), .A1(a[2]), .B0(n391), .B1(d[2]), .C0(n393), .C1(
        y[2]), .Y(n440) );
  CLKINVX1 U468 ( .A(n441), .Y(n249) );
  AOI222XL U469 ( .A0(n392), .A1(a[3]), .B0(n391), .B1(d[3]), .C0(n393), .C1(
        y[3]), .Y(n441) );
  CLKINVX1 U470 ( .A(n442), .Y(n248) );
  AOI222XL U471 ( .A0(n392), .A1(a[4]), .B0(n391), .B1(d[4]), .C0(n393), .C1(
        y[4]), .Y(n442) );
  NAND2X1 U472 ( .A(n420), .B(n381), .Y(n421) );
  NAND2X1 U473 ( .A(n444), .B(n445), .Y(n381) );
  NAND2X1 U474 ( .A(n444), .B(n446), .Y(n420) );
  MXI2X1 U475 ( .A(n447), .B(n448), .S0(n562), .Y(n444) );
  OAI211X1 U476 ( .A0(n345), .A1(n311), .B0(n449), .C0(n450), .Y(n246) );
  AOI222XL U477 ( .A0(b[1]), .A1(n321), .B0(c[1]), .B1(n397), .C0(x[1]), .C1(
        n398), .Y(n450) );
  NAND2X1 U478 ( .A(N165), .B(n337), .Y(n449) );
  OAI211X1 U479 ( .A0(n345), .A1(n310), .B0(n451), .C0(n452), .Y(n245) );
  AOI222XL U480 ( .A0(b[2]), .A1(n321), .B0(c[2]), .B1(n397), .C0(x[2]), .C1(
        n398), .Y(n452) );
  NAND2X1 U481 ( .A(N166), .B(n337), .Y(n451) );
  OAI211X1 U482 ( .A0(n345), .A1(n312), .B0(n453), .C0(n454), .Y(n244) );
  AOI222XL U483 ( .A0(b[3]), .A1(n321), .B0(c[3]), .B1(n397), .C0(x[3]), .C1(
        n398), .Y(n454) );
  NAND2X1 U484 ( .A(N167), .B(n337), .Y(n453) );
  OAI211X1 U485 ( .A0(n345), .A1(n222), .B0(n455), .C0(n456), .Y(n243) );
  AOI222XL U486 ( .A0(b[4]), .A1(n321), .B0(c[4]), .B1(n397), .C0(x[4]), .C1(
        n398), .Y(n456) );
  NAND2X1 U487 ( .A(N168), .B(n337), .Y(n455) );
  OAI211X1 U488 ( .A0(n345), .A1(n221), .B0(n457), .C0(n458), .Y(n242) );
  AOI222XL U489 ( .A0(b[5]), .A1(n321), .B0(c[5]), .B1(n397), .C0(x[5]), .C1(
        n398), .Y(n458) );
  NAND2X1 U490 ( .A(N169), .B(n337), .Y(n457) );
  OAI211X1 U491 ( .A0(n345), .A1(n220), .B0(n459), .C0(n460), .Y(n241) );
  AOI222XL U492 ( .A0(b[6]), .A1(n321), .B0(c[6]), .B1(n397), .C0(x[6]), .C1(
        n398), .Y(n460) );
  NAND3X1 U493 ( .A(n572), .B(n385), .C(n468), .Y(n467) );
  NAND2X1 U494 ( .A(N170), .B(n337), .Y(n459) );
  OAI221XL U495 ( .A0(n345), .A1(n219), .B0(n472), .B1(n291), .C0(n473), .Y(
        n240) );
  AOI222XL U496 ( .A0(N171), .A1(n399), .B0(n291), .B1(n474), .C0(d[0]), .C1(
        n475), .Y(n473) );
  OAI221XL U497 ( .A0(n345), .A1(n218), .B0(n472), .B1(n303), .C0(n476), .Y(
        n239) );
  AOI222XL U498 ( .A0(N172), .A1(n399), .B0(n474), .B1(a[1]), .C0(n475), .C1(
        d[1]), .Y(n476) );
  OAI221XL U499 ( .A0(n345), .A1(n217), .B0(n472), .B1(n306), .C0(n477), .Y(
        n238) );
  AOI222XL U500 ( .A0(N173), .A1(n399), .B0(n474), .B1(a[2]), .C0(n475), .C1(
        d[2]), .Y(n477) );
  OAI221XL U501 ( .A0(n345), .A1(n216), .B0(n472), .B1(n287), .C0(n478), .Y(
        n237) );
  AOI222XL U502 ( .A0(N174), .A1(n399), .B0(n474), .B1(a[3]), .C0(n475), .C1(
        d[3]), .Y(n478) );
  OAI221XL U503 ( .A0(n345), .A1(n215), .B0(n472), .B1(n301), .C0(n479), .Y(
        n236) );
  AOI222XL U504 ( .A0(N175), .A1(n399), .B0(n474), .B1(a[4]), .C0(n475), .C1(
        d[4]), .Y(n479) );
  OAI221XL U505 ( .A0(n345), .A1(n214), .B0(n472), .B1(n286), .C0(n480), .Y(
        n235) );
  AOI222XL U506 ( .A0(N176), .A1(n399), .B0(n474), .B1(a[5]), .C0(n475), .C1(
        d[5]), .Y(n480) );
  OAI221XL U507 ( .A0(n345), .A1(n213), .B0(n472), .B1(n295), .C0(n481), .Y(
        n234) );
  AOI222XL U508 ( .A0(N177), .A1(n399), .B0(n474), .B1(a[6]), .C0(n475), .C1(
        d[6]), .Y(n481) );
  NOR2X1 U509 ( .A(\ns[0] ), .B(res_wr), .Y(n468) );
  CLKINVX1 U510 ( .A(n389), .Y(\ns[0] ) );
  XOR2X1 U511 ( .A(n572), .B(n570), .Y(n483) );
  NOR2X1 U512 ( .A(n470), .B(n469), .Y(n482) );
  OAI221XL U513 ( .A0(n487), .A1(n298), .B0(n488), .B1(n494), .C0(n495), .Y(
        N330) );
  CLKINVX1 U514 ( .A(res_di[6]), .Y(n494) );
  AOI222XL U515 ( .A0(N303), .A1(n285), .B0(N263), .B1(n492), .C0(N255), .C1(
        n493), .Y(n497) );
  OAI221XL U516 ( .A0(n487), .A1(n307), .B0(n488), .B1(n498), .C0(n499), .Y(
        N328) );
  AOI222XL U517 ( .A0(N302), .A1(n285), .B0(N262), .B1(n492), .C0(N254), .C1(
        n493), .Y(n499) );
  AOI222XL U518 ( .A0(N301), .A1(n285), .B0(N261), .B1(n492), .C0(N253), .C1(
        n493), .Y(n501) );
  CLKINVX1 U519 ( .A(res_di[3]), .Y(n500) );
  OAI221XL U520 ( .A0(n487), .A1(n308), .B0(n488), .B1(n502), .C0(n503), .Y(
        N326) );
  AOI222XL U521 ( .A0(N300), .A1(n285), .B0(N260), .B1(n492), .C0(N252), .C1(
        n493), .Y(n503) );
  NAND2X1 U522 ( .A(n507), .B(n508), .Y(N324) );
  AOI222XL U523 ( .A0(N298), .A1(n285), .B0(N258), .B1(n492), .C0(N250), .C1(
        n493), .Y(n508) );
  NOR2X1 U524 ( .A(res_do[7]), .B(n489), .Y(n513) );
  CLKINVX1 U525 ( .A(res_di[7]), .Y(n489) );
  AOI32X1 U526 ( .A0(n514), .A1(n515), .A2(n516), .B0(n517), .B1(n518), .Y(
        n512) );
  OAI21XL U527 ( .A0(n519), .A1(res_di[6]), .B0(n298), .Y(n518) );
  NAND2X1 U528 ( .A(n519), .B(res_di[6]), .Y(n517) );
  AOI32X1 U529 ( .A0(res_do[4]), .A1(n498), .A2(n514), .B0(n496), .B1(
        res_do[5]), .Y(n519) );
  CLKINVX1 U530 ( .A(res_di[5]), .Y(n496) );
  AOI2BB2X1 U531 ( .B0(res_di[6]), .B1(n298), .A0N(n498), .A1N(res_do[4]), .Y(
        n516) );
  CLKINVX1 U532 ( .A(res_di[4]), .Y(n498) );
  OAI221XL U533 ( .A0(n520), .A1(n521), .B0(res_di[3]), .B1(n296), .C0(n522), 
        .Y(n515) );
  NAND3X1 U534 ( .A(n523), .B(n502), .C(res_do[2]), .Y(n522) );
  NAND2X1 U535 ( .A(res_di[3]), .B(n296), .Y(n523) );
  CLKINVX1 U536 ( .A(res_di[2]), .Y(n502) );
  ACHCINX2 U537 ( .CIN(res_do[1]), .A(res_di[1]), .B(n524), .CO(n520) );
  NOR2BX1 U538 ( .AN(res_di[0]), .B(res_do[0]), .Y(n524) );
  NAND2X1 U539 ( .A(res_di[5]), .B(n297), .Y(n514) );
  NAND2X1 U540 ( .A(n532), .B(N256), .Y(n530) );
  CLKINVX1 U541 ( .A(N255), .Y(n534) );
  AOI2BB2X1 U542 ( .B0(N256), .B1(n298), .A0N(res_do[4]), .A1N(n533), .Y(n529)
         );
  CLKINVX1 U543 ( .A(N254), .Y(n533) );
  OAI221XL U544 ( .A0(n535), .A1(n536), .B0(N253), .B1(n296), .C0(n537), .Y(
        n528) );
  NAND2X1 U545 ( .A(N253), .B(n296), .Y(n538) );
  CLKINVX1 U546 ( .A(N252), .Y(n539) );
  ACHCINX2 U547 ( .CIN(res_do[1]), .A(N251), .B(n540), .CO(n535) );
  NOR2BX1 U548 ( .AN(N250), .B(res_do[0]), .Y(n540) );
  CLKINVX1 U549 ( .A(n402), .Y(n404) );
  NOR2X1 U550 ( .A(n300), .B(n566), .Y(n469) );
  NOR3X1 U551 ( .A(n567), .B(n566), .C(n344), .Y(n470) );
  OAI31XL U552 ( .A0(n448), .A1(n389), .A2(n388), .B0(n402), .Y(N222) );
  NAND3X1 U553 ( .A(n294), .B(n290), .C(n562), .Y(n402) );
  NOR2X1 U554 ( .A(n572), .B(n570), .Y(n388) );
  CLKINVX1 U555 ( .A(n385), .Y(n570) );
  AOI211X1 U556 ( .A0(n445), .A1(n542), .B0(n446), .C0(n403), .Y(n385) );
  CLKINVX1 U557 ( .A(n543), .Y(n542) );
  MXI2X1 U558 ( .A(n403), .B(n548), .S0(n290), .Y(n547) );
  NOR3X1 U559 ( .A(n387), .B(n562), .C(n564), .Y(n548) );
  NOR2X1 U560 ( .A(n294), .B(n562), .Y(n403) );
  CLKINVX1 U561 ( .A(n446), .Y(n544) );
  NAND2X1 U562 ( .A(n346), .B(n416), .Y(n551) );
  OAI2BB1X1 U563 ( .A0N(n545), .A1N(n446), .B0(n546), .Y(n549) );
  NAND2X1 U564 ( .A(n445), .B(n543), .Y(n546) );
  NAND4X1 U565 ( .A(y[2]), .B(y[1]), .C(n554), .D(n555), .Y(n543) );
  NOR4X1 U566 ( .A(n287), .B(n301), .C(n286), .D(n295), .Y(n555) );
  NOR3X1 U567 ( .A(n379), .B(y[0]), .C(n443), .Y(n554) );
  CLKINVX1 U568 ( .A(n380), .Y(n443) );
  NOR3X1 U569 ( .A(n426), .B(n427), .C(n430), .Y(n380) );
  CLKINVX1 U570 ( .A(c[5]), .Y(n430) );
  CLKINVX1 U571 ( .A(c[4]), .Y(n427) );
  NAND4X1 U572 ( .A(c[3]), .B(c[2]), .C(c[1]), .D(c[0]), .Y(n426) );
  CLKINVX1 U573 ( .A(c[6]), .Y(n379) );
  NOR2X1 U574 ( .A(n290), .B(n564), .Y(n445) );
  NOR2X1 U575 ( .A(n294), .B(n563), .Y(n446) );
  NOR4X1 U576 ( .A(y[6]), .B(y[5]), .C(y[4]), .D(y[3]), .Y(n557) );
  NOR2X1 U577 ( .A(y[2]), .B(y[1]), .Y(n556) );
  CLKINVX1 U578 ( .A(b[2]), .Y(n423) );
  CLKINVX1 U579 ( .A(b[1]), .Y(n436) );
  NOR4X1 U580 ( .A(b[3]), .B(b[4]), .C(b[5]), .D(b[6]), .Y(n422) );
  NAND4X1 U581 ( .A(n558), .B(n559), .C(n560), .D(n561), .Y(n387) );
  AND3X1 U582 ( .A(sti_addr[2]), .B(sti_addr[0]), .C(sti_addr[1]), .Y(n561) );
  AND2X1 U583 ( .A(sti_addr[3]), .B(sti_addr[4]), .Y(n560) );
  AND3X1 U584 ( .A(sti_addr[7]), .B(sti_addr[5]), .C(sti_addr[6]), .Y(n559) );
  AND2X1 U585 ( .A(sti_addr[8]), .B(sti_addr[9]), .Y(n558) );
  CLKINVX1 U586 ( .A(n384), .Y(n448) );
  NOR2X1 U587 ( .A(n411), .B(n346), .Y(n384) );
  CLKINVX1 U588 ( .A(n416), .Y(n411) );
  NOR2X1 U589 ( .A(n293), .B(n567), .Y(n416) );
endmodule

