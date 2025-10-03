module adder(
    input A,
    input B,
   
    output Y,
    
    output C
);
    assign Y = A ^ B;
    assign C = A & B;
endmodule
