module full_subtractor (
    input a,b,bin, output diff, borrow
);
    wire w1,w2,w3,w4,w5;
    
    xor x1(w1,a,b);
    xor x2(diff,w1,bin);

    not n1(w2,w1);
    not n2(w3,a);

    and a1(w4,w2,bin);
    and a2(w5,w3,b);

    or(borrow,w4,w5);

endmodule