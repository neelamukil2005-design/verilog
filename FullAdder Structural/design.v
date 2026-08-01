module fulladder(input a,b,cin,
output sum,carry);
wire o1,o2,o3;
xor x1(o1,a,b);
and a1(o2,a,b);
and a2(o3,o1,cin);
or a3(carry,o3,o2);
xor a4(sum,o1,cin);
endmodule
