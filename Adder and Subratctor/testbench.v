module addsub_tb;
reg [3:0]a,b;
reg mode;
wire [3:0]result;
subadd dut(.a(a),.b(b),.mode(mode),.result(result));
initial begin
    $dumpfile("subadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,mode=%b,result=%b",a,b,mode,result);
    a=4'b1010;
    b=4'b0001;
    mode=1;
    #5;
    $finish;

end
endmodule
    
      


