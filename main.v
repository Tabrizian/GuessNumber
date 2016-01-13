module get_input(I1,I2,I3,I4,A,B,C,D);
  input I1, I2, I3, I4;
  output [0:6] A,B,C,D;
  reg [0:3] i = 1'd0;
  reg [0:6] A,B,C,D;
  reg run;
  initial
  begin
   run = 1;
   A = 0;
   B = 0;
   C = 0;
   D = 0;
  end
  always @(posedge I1 or posedge I2 or posedge I3 or posedge I4)
    begin
    
    if(I1)
      A[i] = 1;
    if(I2)
      B[i] = 1;
    if(I3)
      C[i] = 1;
    if(I4)
      D[i] = 1;
     i = i + 1;
     if(i == 7)
     	run = 0;
   end
endmodule

module test_get_input;
  reg I1,I2,I3,I4;
  wire [0:6] A,B,C,D;
  get_input test(I1,I2,I3,I4,A,B,C,D);
  initial
    begin
      I1 = 0;
      I2 = 0;
      I3 = 0;
      I4 = 0;
      #5 I1 = 1;
      #5 I1 = 0;
      #5 I3 = 1;
      #5 I3 = 0;
      #5 I4 = 1;
      #5 I4 = 0;
    end
endmodule

