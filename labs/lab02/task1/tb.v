// tb.v

module tb;

  // DUT inputs
  reg t_i0;
  reg t_i1;
  reg t_s;

  // DUT output
  wire t_y;

  // DUT instantiation
  DUT U1 (
    .I0(t_i0),
    .I1(t_i1),
    .S(t_s),
    .Y(t_y)
  );

  // Waveform dump configuration
  string vcd_file;

  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, tb);
    end
  end

  // Apply all 8 combinations
  initial begin
    {t_i0, t_i1, t_s} = 3'b000;
    #5;
    {t_i0, t_i1, t_s} = 3'b001;
    #5;
    {t_i0, t_i1, t_s} = 3'b010;
    #5;
    {t_i0, t_i1, t_s} = 3'b011;
    #5;
    {t_i0, t_i1, t_s} = 3'b100;
    #5;
    {t_i0, t_i1, t_s} = 3'b101;
    #5;
    {t_i0, t_i1, t_s} = 3'b110;
    #5;
    {t_i0, t_i1, t_s} = 3'b111;
    #5;

    $finish;
  end

  initial begin
    $monitor($time, " I0=%b I1=%b S=%b | Y=%b",
             t_i0, t_i1, t_s, t_y);
  end

endmodule