module tb;
reg [31:0]I;
reg [4:0]s;
wire y;
mux32_1 dut (.I(I),.s(s),.y(y));
integer i;
initial begin 
    $dumpfile("mux32_1.vcd");
    $dumpvars(0,dut);
    $monitor("I=%b,s=%b,y=%b",I,s,y);
    for(i=0;i<687194;i=i+1) begin
    {I,s}=69;
    #5;
    end
    $finish;
end
endmodule

