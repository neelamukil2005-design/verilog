module fullsub(input a,b,bin,
output diff,borrow);
wire x,y,z,n;
xor o1(diff,a,b,bin);
not o2(x,a);
and a1(y,x,b);
and a2(z,b,bin);
and a3(n,x,bin);
or r1(borrow,y,z,n);
endmodule
