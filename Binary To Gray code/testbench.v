module b_gtb;
reg [3:0]binary;
wire [3:0]gray;
binary_gray dut(.binary(binary),.gray(gray));
initial begin
     $dumpfile("binary_gray.vcd");
    $dumpvars(0,dut);
    $monitor("binary=%b,gray=%b",binary,gray);
    
    binary=4'b0100;#5;
    binary=4'b0101;
    #5;
    $finish;
end
endmodule
