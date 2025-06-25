 8-Bit ALU in Verilog

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU supports 16 operations, including 
arithmetic, bitwise, shift, and comparison functionalities. The testbench is also included for simulation.



Features

-8-bit Input Operands: A and B
-4-bit Opcode: Selects one of 16 operations
-8-bit Output: Result and carry/overflow
-Supported Operations:

 Opcode   Operation              Description                  

 0000  >  AND Reduction         = &A                        
 0001  >  XOR Reduction         = ^A                         
 0010  >  OR Reduction          = |A                        
 0011  >  AND                   = A & B                      
 0100  >  OR                    = A | B                      
 0101  >  XOR                   = A ^ B                     
 0110  >  Addition              = A + B                     
 0111  >  Subtraction           = A - B                     
 1000  >  Multiplication        = A * B                      
 1001  >  Equality              = A == B                    
 1010  >  Greater Than          = A > B                      
 1011  >  Less Than             = A < B`                      
 1100  >  Logical Right Shift   = A >> B[2:0]                
 1101  >  Logical Left Shift    = A << B[2:0]               
 1110  >  Bit Clear             = A & ~B                     
 1111  >  Bitwise Inverse       = ~A                        
