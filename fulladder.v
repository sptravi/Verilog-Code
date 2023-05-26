//Verilog Module:
/*""" module fulladder ( input [3:0] a, input [3:0] b, input c_in, output c_out, output [3:0] sum );
// Declare the module's inputs and outputs
// Inputs: // - a: A 4-bit input signal a // - b: A 4-bit input signal b // - c_in: A single-bit input carry signal
// Outputs: // - c_out: A single-bit output carry signal // - sum: A 4-bit output sum signal
// Full adder logic assign {c_out, sum} = a + b + c_in;
endmodule """*/

/*
Module Name: Full Adder
Purpose        : The purpose of this module is to implement a full adder circuit. 
                 It takes two 4-bit input signals, a and b, along with a single-bit input carry signal, c_in. 
                 The module generates a 4-bit output sum signal, sum, and a single-bit output carry signal, c_out. 
                 The full adder circuit performs binary addition on the input signals and produces the sum and carry outputs.
Design Decision : The design decision for this module was to implement the full adder logic using the assign statement. 
                 The sum output and carry output are calculated by adding the input signals (a, b)
                 and the carry input (c_in). This design choice ensures a concise and efficient implementation of the full adder 
                 functionality.
Inputs:
a: A 4-bit input signal representing the first operand.
b: A 4-bit input signal representing the second operand.
c_in: A single-bit input carry signal.

Outputs:
c_out: A single-bit output carry signal representing the carry output.
sum: A 4-bit output signal representing the sum of the inputs.  */

// Instantiate the full adder module
fulladder my_adder (
  .a(input_a),
  .b(input_b),
  .c_in(input_carry),
  .c_out(output_carry),
  .sum(output_sum)
);

// Describe the connections and signals used in the example
initial begin
  // Set the input signals
  input_a = 4'b1010;
  input_b = 4'b1101;
  input_carry = 1'b1;
  
  // Wait for some time or trigger an event
  
  // Read the output signals
  $display("Output Carry: %b", output_carry);
  $display("Output Sum: %b", output_sum);
end

//In this example, the full adder module is instantiated with appropriate input and output signals. The input signals input_a, input_b, and input_carry are set to specific values. After a certain period or event, the output signals output_carry and output_sum are read and displayed using the $display system function
