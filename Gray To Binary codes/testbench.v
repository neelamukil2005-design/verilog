module b_gtb;
reg[3:0]gray;
wire[3:0]b;
Gray_Binary dut(.b(b),.gray(gray));
initial begin
     $dumpfile("Gray_Binary.vcd");
    $dumpvars(0,dut);
    $monitor("b=%b,gray=%b",b,gray);
    
    gray=4'b0100;#5;
    gray=4'b0101;
    #5;
    $finish;
end
endmodule
