// Description:- A custom IP built to control the flow of data between the TPIU trace port
// and a bram. Whenever trace_ctl suggests valid data coming out of the TPIU trace port on the
// PS8, this IP enables the write control on the bram and increments the addr on the bram to
// store the data

`timescale 1 ns / 1 ps

	module trace_collection_v1_0 
	(
		
        input wire clk,                 // Clock
        input wire reset_n,             // Reset the IP ie the Counter
        input wire trace_ctl,           // Suggests when trace data is valid (Acitve low signal)
        input wire [31 : 0] trace_data, // The 32 bit data line from the trace port to IP
        output wire [31 : 0] addr,      // Address written to on the bram
        output wire [31 : 0] dout,      // The 32 bit data line from the IP to the bram
        output wire en,                 // Enable bram
        output wire [3 : 0] we,         // Enable write signal in bram
        output wire rst                 // Reset the bram
		
	);

	reg [10 : 0] counter;                 
	
	wire trace_ctl_inv;
	
	// trace_ctl is active low
	assign trace_ctl_inv = ~trace_ctl;     
	
	// Enable all bram ports when trace_ctl_inv is high
	assign we[3:0] = {4{trace_ctl_inv}};   
	
	// Enable bram when trace_ctl_inv is high
	assign en = trace_ctl_inv;             
	
	// Send 32-bit data from TPIU trace port to bram
	assign dout = trace_data;              
	
	// 32-bit address to the bram, its incremented by 0x4
	assign addr = { {19{1'b0}}, {counter[10:0]}, {2{1'b0}} };  
	
	// bram reset is active low
	assign rst = ~reset_n;                 
	
	always @ (posedge clk) begin
		// If reset, set counter to 0
        	if(!reset_n) begin
        		counter <= 11'b0;
        	end
		// If valid increment counter by 1
        	else if(trace_ctl_inv) begin
        		counter <= counter + 11'b1; 
        	end
	end
	
	endmodule
