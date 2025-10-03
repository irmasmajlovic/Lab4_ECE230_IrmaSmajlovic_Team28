module full_adder (
    input A,
    input B,
    input C, //Cin
    output Y,
    output Cout
);
assign Y = A ^ B ^ C;
assign Cout = C&B | C&A | A&B;

endmodule
