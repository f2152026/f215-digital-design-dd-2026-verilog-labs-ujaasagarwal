// FA_Gate.v
// Gate-level model of a 1-bit full adder.

module FA_Gate(
  input a,
  input b,
  input cin,
  output sum,
  output cout
);

  wire ps, pc1, pc2;

  // Reordered gate instantiations for Part (b)
  and (pc1, a, b);
  xor (ps, a, b);
  and (pc2, cin, ps);
  xor (sum, cin, ps);
  or  (cout, pc1, pc2);

endmodule