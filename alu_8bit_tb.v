module alu_8bit_tb;
 reg [7:0] A,B;
 reg [3:0] opcode;
 
 wire [7:0] carry;
 wire [7:0] result;
 
 alu_8bit dut(carry,result,A,B,opcode);
 
 initial 
 begin
 
 $monitor($time,"carry=%b,result=%b,A=%b,B=%b,opcode=%b",carry,result,A,B,opcode);
 
 A=8'b10101110;
 B=8'b11100110;
 
    #10 opcode = 4'b0000;
    #10 opcode = 4'b0001;
    #10 opcode = 4'b0010;
    #10 opcode = 4'b0011;
    #10 opcode = 4'b0100;
    #10 opcode = 4'b0101;
    #10 opcode = 4'b0110;
    #10 opcode = 4'b0111;
    #10 opcode = 4'b1000;
    #10 opcode = 4'b1001;
    #10 opcode = 4'b1010;
    #10 opcode = 4'b1011;
    #10 opcode = 4'b1100;
    #10 opcode = 4'b1101;
    #10 opcode = 4'b1110;
    #10 opcode = 4'b1111;
    $finish;
    end


  
 

   
endmodule
