module light(
    input DS,
    input US,
    
    output SL 
);
    assign SL = US ^ DS;
endmodule
