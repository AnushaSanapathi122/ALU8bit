# ALU8bit
Operands: 8-bit inputs A and B

Output: 16-bit ALUResult to handle operations like multiplication without overflow

Control Signal: 4-bit ALUControl to select among 16 operations

Supported Operations:
Addition
Subtraction
Bitwise AND, OR, XOR, NOT
Increment and Decrement
Left and Right Shift
Multiplication
Division (with divide-by-zero handling)
Equality Check
NOP (No Operation)


ALUControl Operation Table:
| ALUControl | Operation | Description               |
| ---------- | --------- | ------------------------- |
| `0000`     | `A + B`   | Addition                  |
| `0001`     | `A - B`   | Subtraction               |
| `0010`     | `A & B`   | Bitwise AND               |
| `0011`     | `A \| B`  | Bitwise OR                |
| `0100`     | `A ^ B`   | Bitwise XOR               |
| `0101`     | `~A`      | Bitwise NOT A             |
| `0110`     | `A + 1`   | Increment                 |
| `0111`     | `A - 1`   | Decrement                 |
| `1000`     | `A << 1`  | Logical Left Shift        |
| `1001`     | `A >> 1`  | Logical Right Shift       |
| `1010`     | `~A`      | Bitwise NOT A (duplicate) |
| `1011`     | `~B`      | Bitwise NOT B             |
| `1100`     | `A * B`   | Multiplication            |
| `1101`     | `A / B`   | Division (zero-protected) |
| `1110`     | `A == B`  | Equality Check            |
| `1111`     | `0`       | NOP (Output is Zero)      |

Simulation using Icarus Verilog + GTKWave through Command prompt:
iverilog -o sim.out ALU8bit.v ALU8bitTb.v

vvp sim.out

gtkwave ALU8bitTb.vcd

Output Wveform:
<img width="1920" height="1020" alt="Screenshot 2025-07-22 191722" src="https://github.com/user-attachments/assets/b62a24e7-cbff-4654-a757-38209636221b" />

Displaying Output in the command window:
<img width="1920" height="1020" alt="Screenshot 2025-07-22 191352" src="https://github.com/user-attachments/assets/e2cf2cdb-1755-4bee-869c-50fa4fc9bffc" />





