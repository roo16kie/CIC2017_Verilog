#---------------------------------------
#-- How to use this Makefile?
#--   1. RTL simulation:
#--         make rtlsim
#--   2. Gate-level simulation:
#--         make glsim
#---------------------------------------
#-- note: 
#--   You should edit your "design name" 
#--   and "simulation command".
#---------------------------------------

## edit your design name
rtl_design = DT.v

## edit your gate-level netlist
netlist = DT_syn.v

## edit testbench name
testfixture = testfixture.v

## cell library gate
tsmc13 = /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v
tsmc13_neg = /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Verilog/tsmc13_neg.v

## edit your RTL simulation commandk
rtlsim1:
	ncverilog $(testfixture) $(rtl_design) +define+TB1 +define+FSDB +access+r +notimingcheck
rtlsim2:
	ncverilog $(testfixture) $(rtl_design) +define+TB2 +define+FSDB +access+r +notimingcheck

## edit your gate-level simulation command
glsim1:
	ncverilog $(testfixture) $(netlist) -v $(tsmc13) $(tsmc13_neg) +access+r +define+SDF +define+TB1
glsim2:
	ncverilog $(testfixture) $(netlist) -v $(tsmc13) $(tsmc13_neg) +access+r +define+SDF +define+TB2
