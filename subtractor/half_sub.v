module 
    half_subtractor (
    input a,b, output diff, borrow
);
    wire w1;

    xor x1(diff,a,b);
    not (w1,a);
    and (borrow, w1,b);
    
endmodule