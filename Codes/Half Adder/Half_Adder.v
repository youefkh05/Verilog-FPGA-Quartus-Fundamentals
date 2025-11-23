module Half_Adder (
    input  A, 
    input  B, 
    output Sum, 
    output Carry
);
    // Dataflow style using continuous assignment
    assign Sum = A ^ B;    // XOR operation
    assign Carry = A & B;  // AND operation

endmodule