`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:26 10/25/2023 
// Design Name: 
// Module Name:    OneIncrementCount 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module OneIncrementCount(
    input clk_in,
    input reset,
    output reg [7:0] counter
);
    reg clk_out;
    reg [25:0] count = 0;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 8'b0; // Reset the counter to 0
            count <= 26'b0;
            clk_out <= 1'b0; // Reset the clock signal
        end else begin
            count <= count + 1;
            if (count == 25000000) begin
                count <= 0;
                clk_out <= ~clk_out;
                if ((clk_out) && (counter < 8'b11111111)) begin
                    counter <= counter + 1; 
                end
            end
        end
    end
endmodule

