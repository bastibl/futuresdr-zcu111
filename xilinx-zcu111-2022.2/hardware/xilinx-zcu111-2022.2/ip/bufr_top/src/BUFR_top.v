`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2014 12:30:00 PM
// Design Name: 
// Module Name: BUFR_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BUFR_top #(
       parameter BUFR_DIVIDE = "BYPASS",   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
       parameter SIM_DEVICE = "7SERIES"  // Must be set to "7SERIES" 
    ) 
    (
        input I,
        input CE,
        input CLR,
        output O
);
    
       BUFR #(
       .BUFR_DIVIDE(BUFR_DIVIDE),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
       .SIM_DEVICE(SIM_DEVICE)  // Must be set to "7SERIES" 
    )
    BUFR (
       .O(O),     // 1-bit output: Clock output port
       .CE(CE),   // 1-bit input: Active high, clock enable (Divided modes only)
       .CLR(CLR), // 1-bit input: Active high, asynchronous clear (Divided modes only)
       .I(I)      // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
    );

endmodule
