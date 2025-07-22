# ALU8bit


| `ALUControl` | Operation      | Expression         | Description                        |
| ------------ | -------------- | ------------------ | ---------------------------------- |
| `0000`       | Addition       | `A + B`            | Adds A and B                       |
| `0001`       | Subtraction    | `A - B`            | Subtracts B from A                 |
| `0010`       | AND            | `A & B`            | Bitwise AND                        |
| `0011`       | OR             | `A | B`            | Bitwise OR of A and B              |
| `0100`       | XOR            | `A ^ B`            | Bitwise XOR                        |
| `0101`       | NOT A          | `~A`               | Bitwise NOT of A                   |
| `0110`       | Increment      | `A + 1`            | Adds 1 to A                        |
| `0111`       | Decrement      | `A - 1`            | Subtracts 1 from A                 |
| `1000`       | Shift Left     | `A << 1`           | Logical left shift of A by 1       |
| `1001`       | Shift Right    | `A >> 1`           | Logical right shift of A by 1      |
| `1010`       | NOT A          | `~A`               | Bitwise NOT of A (duplicate entry) |
| `1011`       | NOT B          | `~B`               | Bitwise NOT of B                   |
| `1100`       | Multiplication | `A * B`            | Multiplies A and B                 |
| `1101`       | Division       | `A / B`            | Divides A by B, handles B = 0      |
| `1110`       | Equality Check | `(A == B) ? 1 : 0` | Compares A and B for equality      |
| `1111`       | NOP            | `0`                | No operation (outputs 0)           |


