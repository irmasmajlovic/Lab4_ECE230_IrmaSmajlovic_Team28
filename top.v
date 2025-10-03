module top (
    input [7:0] sw,
    output [5:0] led
);
    light XOR(
        .DS(sw[0]),
        .US(sw[1]),
        .SL(led[0])
    );
    
    adder Adder(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .C(led[2])
    );
    
    wire carry;
    
    full_adder FA1(
        .A(sw[4]),
        .B(sw[6]),
        .C(1'b0),
        .Y(led[3]),
        .Cout(carry)
    );
    
    full_adder FA2(
        .A(sw[5]),
        .B(sw[7]),
        .C(carry),
        .Y(led[4]),
        .Cout(led[5])
    );
    
endmodule
