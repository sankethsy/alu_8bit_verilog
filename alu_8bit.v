

module alu_8bit(carry,result,A,B,opcode);
input[7:0]A,B; //8_bit input
input[3:0]opcode;//4bit_select line
output reg [7:0]carry,result;//8bit_output,where[7:0]result and [1:0]carry


always@(*)
begin
result=8'b0;
carry='b0;

case(opcode)
//bit wise reduction
4'b0000:result = {7'b0,&A};  //And reduction
4'b0001:result= {7'b0,^A};  //xor reduction
4'b0010:result= {7'b0,|A};  //or reduction
//bit wise operation
4'b0011:result = A & B;  //AND OPERATION
4'b0100:result = A | B;  //OR  OPERATION
4'b0101:result = A ^ B;  //XOR OPERATION

//arthimatic operator
4'b0110:{carry[0],result}= A  + B;  //ADDITION
4'b0111:{carry[0],result}=  A - B;  //SUBTRACTION
4'b1000:{carry,result} = A * B;  //MULTIPLICATION

//camparison operators  
4'b1001:result ={7'b0, (A==B)};  //EQUALITY
4'b1010:result ={7'b0, (A>B)};  //GREATER THAN
4'b1011:result ={7'b0, (A<B)};  //LESSER THAN

//shift operators
4'b1100:{carry,result}= {8'b0, A>>B[2:0]};  //SHIFT 3 BIT RIGHT
4'b1101:{carry,result}= {8'b0, A<<B[2:0]};  //SHIFT 3BIT LEFT

4'b1110:result=A & ~B;  //BIT CLEAR
4'b1111:result = ~A;  //INVERSE

default:$display("error");

endcase


end
endmodule












  

