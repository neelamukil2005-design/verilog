module thermo_tb;
reg [3:0]a;
wire [15:0]y;
thermometercode dut(.a(a),.y(y));
integer i;
initial begin
    $dumpfile("thermo.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b y=%b",a,y);
    for(i=0;i<16;i=i+1) begin
        a=i;
        #5;
    end
end
endmodule
