module test_1; // Very simple testbench to check A = 1234 B = 1234
  reg I1,I2,I3,I4,enter,reset;
  wire win,lose;
  wire equal,bigger,smaller;
  wire [0:3]nums;
  test test_v1(I1,I2,I3,I4,enter,win,lose,reset,equal,bigger,smaller,nums);
  initial begin
    I1 = 0;
    I2 = 0;
    I3 = 0;
    I4 = 0;
    enter = 0;
    reset = 0;
    #5 reset = 1;
    #5 reset = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I2 = 1;
    #5 I2 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I4 = 1;
    #5 I4 = 0;
    #5 enter = 1;
    #5 enter = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I2 = 1;
    #5 I2 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I4 = 1;
    #5 I4 = 0;
    #5 enter = 1;
    #5 enter = 0;
    
  end
endmodule
module test_2; // A testbench to check A = 14321 B = 1234, 12341, 14321
  reg I1,I2,I3,I4,enter,reset;
  wire win,lose;
  wire equal,bigger,smaller;
  wire [0:3]nums;
  test test_v1(I1,I2,I3,I4,enter,win,lose,reset,equal,bigger,smaller,nums);
  initial begin
    I1 = 0;
    I2 = 0;
    I3 = 0;
    I4 = 0;
    enter = 0;
    reset = 0;
    #5 reset = 1;
    #5 reset = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I4 = 1;
    #5 I4 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I2 = 1;
    #5 I2 = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 enter = 1;
    #5 enter = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I2 = 1;
    #5 I2 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I4 = 1;
    #5 I4 = 0;
    #5 enter = 1;
    #5 enter = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I2 = 1;
    #5 I2 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I4 = 1;
    #5 I4 = 0;
    #5 enter = 1;
    #5 enter = 0;    
    #5 I1 = 1;
    #5 I1 = 0;
    #5 I4 = 1;
    #5 I4 = 0;    
    #5 I3 = 1;
    #5 I3 = 0;
    #5 I2 = 1;
    #5 I2 = 0;
    #5 I1 = 1;
    #5 I1 = 0;
    #5 enter = 1;
    #5 enter = 0;    
  end
endmodule