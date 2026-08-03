module halfsub(input a,b,
output diff,borrow);
wire x;
xor o1(diff,a,b);
not o2(x,a);
and o3(borrow,x,b);
endmodule
