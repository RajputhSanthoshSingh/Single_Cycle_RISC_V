module Program_Counter (
    input wire clk, rst, // Clock and Reset
    output reg [31:0] PC // Program Counter
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            PC <= 32'b0;
        end else begin
            PC <= PC + 32'b4;
        end
    end
    
endmodule