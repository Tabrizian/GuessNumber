module main(I1,I2,I3,I4,enter,a1,a2,a3,a4,b1,b2,b3,b4,suc,fail,win);
  input I1,I2,I3,I4,enter;
  output reg [0:6] a1,a2,a3,a4,b1,b2,b3,b4,suc;
  output reg win;
  
  initial
  begin
    getA get_input(I1,I2,I3,I4,enter,a1,a2,a3,a4);
    getB get_input(I1,I2,I3,I4,enter,b1,b2,b3,b4);
    suc = a1 & b1 & a2 & b2 & a3 & b3 & a4 & b4;
    if(suc[0]&suc[1]&suc[2]&suc[3)&suc[4]&suc[5]&suc[6])
       
  end
 
endmodule
module get_input(I1,I2,I3,I4,enter,a1,a2,a3,a4);
  input I1, I2, I3, I4, enter;
  output [0:6] a1,a2,a3,a4;
  reg [0:3] i = 1'd0;
  reg [0:6] a1,a2,a3,a4;
  reg run;
  initial
  begin
   run = 1;
   a1 = 0;
   a2 = 0;
   a3 = 0;
   a4 = 0;
  end
  always @(posedge I1 or posedge I2 or posedge I3 or posedge I4 or posedge enter)
    begin
    if(I1 & run)
      begin
        a1[i] = 1;
        i=i+1;
      end
    if(I2 & run)
      begin
        a2[i] = 1;
        i=i+1;
      end
    if(I3 & run)
      begin
        a3[i] = 1;
        i=i+1;
      end
    if(I4 & run)
     begin
        a4[i] = 1;
        i=i+1;
      end   
    if(enter & i >=4)
      run = 0;
    if(i == 7)
     	run = 0;
   	
   end
endmodule

module test_get_input;
  reg I1,I2,I3,I4,enter;
  wire [0:6] A,B,C,D;
  get_input test(I1,I2,I3,I4,enter,A,B,C,D);
  initial
    begin
      I1 = 0;
      I2 = 0;
      I3 = 0;
      I4 = 0;
      enter = 0;
      #5 I1 = 1;
      #5 I1 = 0;
      #5 I3 = 1;
      #5 I3 = 0;
      #5 I4 = 1;
      #5 I4 = 0;
      #5 enter = 1;
      #5 enter = 0;
      $stop;
    end
endmodule

