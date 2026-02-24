//========================================================================
// FullAdder_GL
//========================================================================

`ifndef FULL_ADDER_GL_V
`define FULL_ADDER_GL_V

`include "ece2300/ece2300-misc.v"

module FullAdder_GL
(
  (* keep=1 *) input  wire in0,
  (* keep=1 *) input  wire in1,
  (* keep=1 *) input  wire cin,
  (* keep=1 *) output wire cout,
  (* keep=1 *) output wire sum
);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement full adder w/ explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  wire check_in;
  xor ( check_in, in0, in1 );
  xor ( sum, check_in, cin );

  wire [2:0] check_c;
  and ( check_c[0], in0, in1 );
  and ( check_c[1], in0, cin );
  and ( check_c[2], in1, cin );
  or ( cout, check_c[0], check_c[1], check_c[2] );


endmodule

`endif /* FULL_ADDER_GL_V */

