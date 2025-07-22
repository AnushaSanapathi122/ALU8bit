module ALU8bitTb;
reg [7:0] A, B;
reg [3:0] ALUControl;
wire [15:0] ALUResult;

ALU8bit uut (
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .ALUResult(ALUResult)
);

initial begin
    $dumpfile("ALU8bitTb.vcd");
    $dumpvars(0, ALU8bitTb);
end
initial begin
    A=8'b11110001; B=8'b00000001; ALUControl=4'b0000; #10; // Test Addition
    $display("Addition Result: %b", ALUResult);
    A=8'b00000010; B=8'b00000001; ALUControl=4'b0001; #10; // Test Subtraction
    $display("Subtraction Result: %b", ALUResult);
    A=8'b00000011; B=8'b00000001; ALUControl=4'b0010; #10; // Test AND
    $display("AND Result: %b", ALUResult);
    A=8'b00000011; B=8'b00000001; ALUControl=4'b0011; #10; // Test OR
    $display("OR Result: %b", ALUResult);
    A=8'b00000011; B=8'b00000001; ALUControl=4'b0100; #10; // Test XOR
    $display("XOR Result: %b", ALUResult);
    A=8'b00000011; ALUControl=4'b0101; #10; // Test NOT A
    $display("NOT A Result: %b", ALUResult);
    A=8'b00000001; ALUControl=4'b0110; #10; // Test Increment
    $display("Increment Result: %b", ALUResult);
    A=8'b00000010; ALUControl=4'b0111; #10; // Test Decrement
    $display("Decrement Result: %b", ALUResult);
    A=8'b00000001; ALUControl=4'b1000; #10; // Test Shift Left
    $display("Shift Left Result: %b", ALUResult);
    A=8'b00000010; ALUControl=4'b1001; #10; // Test Shift Right
    $display("Shift Right Result: %b", ALUResult);
    A=8'b00000011; ALUControl=4'b1010; #10; // Test NOT A
    $display("NOT A Result: %b", ALUResult);
    B=8'b00000001; ALUControl=4'b1011; #10; // Test NOT B
    $display("NOT B Result: %b", ALUResult);
    A=8'b00000010; B=8'b00000001; ALUControl=4'b1100; #10; // Test Multiplication
    $display("Multiplication Result: %b", ALUResult);
    A=8'b00000010; B=8'b00000001; ALUControl=4'b1101; #10; // Test Division
    if (B != 0) begin
        $display("Division Result: %b", ALUResult);
    end else begin
        $display("Division by zero error");
    end
    A=8'b00000001; B=8'b00000001; ALUControl=4'b1110; #10; // Test Equality
    if (A == B) begin
        $display("Equality Result: %b", ALUResult);
    end else begin
        $display("Not Equal ");
    end
    ALUControl=4'b1111; #10; // Test NOP
    $display("NOP Result: %b", ALUResult);
    $finish;
end

endmodule