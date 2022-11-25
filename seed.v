

initial begin
  seed = 1033932;
  repeat(10) begin
    a = $random(seed);
    $display("a=%d",a);
  end
end
endmodule
