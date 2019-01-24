module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	output              fwpass_finish;
	);
//---------------------------------
reg [3:0] cur_st,nex_st;
reg [3:0] count;
reg [7:0] fpw_min;

parameter idle      = 4'd0;
parameter pre       = 4'd1;
parameter start     = 4'd2;
parameter mapping   = 4'd3;
parameter fpw_check = 4'd4;
parameter fpw_exe   = 4'd5;
parameter fpw_write = 4'd6;
parameter fpw_ok    = 4'd7;
parameter bpw_check = 4'd8;
parameter bpw_exe   = 4'd9;
parameter bpw_write = 4'd10;
parameter bpw_ok    = 4'd11;

assign fwpass_finish =(cur_st==fpw_ok);
//---------------------------------
always@(posedge clk or negedge reset)
	if(!reset)
		sti_rd <= 0;
	else if(nex_st==start)
		sti_rd <= 1;
	else
		sti_rd <= 0;
	
always@(posedge clk or negedge reset)
	if(!reset)
		res_rd <=0;
	else
		res_rd <=1;
		
always@(posedge clk or negedge reset)
	if(!reset)		
		res_wr <= 0;
	else if(cur_st==start||nex_st==fpw_write)
		res_wr <= 1;
	else if(nex_st==start||nex_st==fpw_check)
		res_wr <= 0;

always@(posedge clk or negedge reset)
	if(!reset)	
	cur_st <= idle;
	else
	cur_st <= nex_st;

always@(*)
	case(cur_st)
	idle      :nex_st = pre;
	pre       :nex_st = start;
	start     :nex_st = mapping;
	mapping   :nex_st = (count==4'd15) ?(res_addr==14'd16255)? fpw_check: start : mapping; 
	fpw_check :nex_st = (!res_di) ? (res_addr==14'd16255) ? fpw_ok : fpw_check : fpw_exe;
	fpw_exe   :nex_st = (count==3'd4) ? fpw_write : fpw_exe;
	fpw_write :nex_st = (res_addr==14'd16255) ? fpw_ok : fpw_check;
	fpw_ok    :nex_st = bpw_check;
	bpw_check :nex_st = (!res_di) ? (res_addr==14'd128) ? bpw_ok : bpw_check : bpw_exe;
	bpw_exe   :nex_st = (count==3'd5) ? bpw_write : bpw_exe;
	bpw_write :nex_st = (res_addr==14'd128) ? bpw_ok : bpw_check;
	bpw_ok    :nex_st = bpw_ok;
	default :nex_st = cur_st;
	endcase
		
always@(posedge clk or negedge reset)
	if(!reset)
		count <= 4'd15;
	else if(nex_st==start)
		count <= 4'd15;
	else if(cur_st==mapping||nex_st==mapping||nex_st==bpw_exe||cur_st==bpw_exe)
		count <= count - 4'd1;
	else if(nex_st==fpw_exe||cur_st==fpw_exe)
		count <= count +4'd1;	
	else if(cur_st==fpw_check||nex_st==fpw_check||cur_st==bpw_check||nex_st==bpw_check)
		count <= 4'd0;
		
always@(posedge clk or negedge reset)
	if(!reset)
		res_do <= 8'd0;
	else if(nex_st==mapping)
		res_do <= {7'd0,sti_di[count]};
	else if(nex_st==fpw_write)
		res_do <= fpw_min + 8'd1;
	else if(nex_st==bpw_write)
		res_do <= fpw_min;

always@(posedge clk or negedge reset)
	if(!reset)
		sti_addr <= 9'd8;
	else if(cur_st==start)
		sti_addr <= sti_addr + 9'd1;
		
always@(posedge clk or negedge reset)
	if(!reset)
		res_addr <= 14'd127;
	else if(nex_st==mapping)
		res_addr <= res_addr + 14'd1;
	else if(res_addr==14'd16255&&nex_st==fpw_check)
		res_addr <= 14'd129;
	else if(nex_st==fpw_exe||nex_st==fpw_write||count==4'd5)
		case(count)
		4'd0 :res_addr <= res_addr - 14'd129;
		4'd1 :res_addr <= res_addr + 14'd1;
		4'd2 :res_addr <= res_addr + 14'd1;
		4'd3 :res_addr <= res_addr + 14'd126;
		4'd4 :res_addr <= res_addr + 14'd1;
		4'd5 :res_addr <= res_addr + 14'd1;
		default:res_addr <= res_addr;
		endcase
	else if(cur_st==fpw_check)
		res_addr <= res_addr + 14'd1;
	else if(nex_st==bpw_check)	
		res_addr <= 14'd16254;
	else if(nex_st==bpw_exe||nex_st==bpw_write||count==4'd6)
		case(count)
		4'd0 :res_addr <= res_addr + 14'd129;
		4'd1 :res_addr <= res_addr - 14'd1;
		4'd2 :res_addr <= res_addr - 14'd1;
		4'd3 :res_addr <= res_addr - 14'd126;
		4'd4 :res_addr <= res_addr - 14'd1;
		4'd5 :res_addr <= res_addr - 14'd1;
		default:res_addr <= res_addr;
		endcase
	else if(cur_st==bpw_check)
		res_addr <= res_addr - 14'd1;	
		
always@(*)
	if(cur_st==fpw_exe)
		begin
			if(count==4'd1)
				fpw_min = res_di;
			else if(res_di<=fpw_min)
				fpw_min = res_di;
		end
	else if(cur_st==bpw_exe)
		begin
				if(count==4'd1)
					fpw_min = res_di + 1;
				else if((res_di+1)<=fpw_min)
					begin
						if(count==4'd4)
						fpw_min = res_di;
					else
						fpw_min = res_di + 1;
					end
		end

always@(posedge clk or negedge reset)
	if(!reset)
		done <= 0;
	else if(cur_st==bpw_ok)
		done <= 1;		
endmodule