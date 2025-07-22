module ALU8bit(


  input  [7:0] A,
  input  [7:0] B,
  input  [3:0] ALUControl,
  output reg [15:0] ALUResult
);
always @(*) begin
  case (ALUControl)
    4'b0000: ALUResult = A + B;               // Addition
    4'b0001: ALUResult = A - B;               // Subtraction
    4'b0010: ALUResult = A & B;               // AND
    4'b0011: ALUResult = A | B;               // OR
    4'b0100: ALUResult = A ^ B;               // XOR
    4'b0101: ALUResult = ~A;                  // NOT A
    4'b0110: ALUResult = A + 1;               // Increment
    4'b0111: ALUResult = A - 1;               // Decrement
    4'b1000: ALUResult = A << 1;              // Shift Left
    4'b1001: ALUResult = A >> 1;              // Shift Right
    4'b1010: ALUResult = ~A;      // NOT A
    4'b1011: ALUResult = ~B;     // Inverting B
    4'b1100: ALUResult = A * B;               // Multiplication
    4'b1101: ALUResult = (B != 0) ? A / B : 8'b00000000; // overcoming Divison with zero error
    4'b1110: ALUResult = (A == B) ? 8'd1 : 8'd0; // A == B
    4'b1111: ALUResult = 8'b00000000;         // NOP Displays zeros
    default: ALUResult = 8'b00000000;
  endcase
end

endmodule