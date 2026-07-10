module two_bit_comp (
    input [1:0] a,b, output gt,eq,lt
);

    wire a1bar,a0bar,b1bar,b0bar,w5,w6,w7,w8,w9,w10,w11,w12;

    not n1(a1bar,a[1]);
    not n2(a0bar,a[0]);
    not n3(b1bar,b[1]);
    not n4(b0bar,b[0]);

//a<b
    and a1(w5,a0bar,b[1],b[0]);
    and a2(w6,a1bar,a0bar,b[0]);
    and a3(w7,a1bar,b[1]);
    or o1(lt,w5,w6,w7);

//a>b
    and a4(w8,a[1],a[0],b0bar);
    and a5(w9,a[0], b1bar,b0bar);
    and a6(w10,a[1],b1bar);
    or o2(gt,w8,w9,w10);

//a=b
    xor x1(w11,a[0],b[0]);
    xor x2(w12,a[1],b[1]);
    or o3(eq, w11,w12);


endmodule
