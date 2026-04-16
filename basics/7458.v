// Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways.


module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire w1,w2,w3,w4;
    and a1(w1,p1a,p1c,p1b);
    and a2(w2,p2a,p2b);
    and a3(w3,p2c,p2d);
    and a4(w4,p1f,p1e,p1d);
    or o1(p2y,w2,w3);
    or o2(p1y,w1,w4);
endmodule
