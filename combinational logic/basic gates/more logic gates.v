// Ok, let's try building several logic gates at the same time. Build a combinational circuit with two inputs, a and b.


module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    and a1 (out_and,a,b);
    or o1(out_or,a,b);
    xor x1(out_xor,a,b);
    nand na1(out_nand,a,b);
    nor no1(out_nor,a,b);
    xnor xn1(out_xnor,a,b); 
    assign out_anotb  = a & ~b;
    
endmodule
