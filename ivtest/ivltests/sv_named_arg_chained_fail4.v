// Check that an error is reported trying to provide a positional argument to a
// function after a named argument.

module test;

  class B;
    function new(integer a, integer b);
      $display("FAILED");
    endfunction
  endclass

  class C extends B;
    function new;
      super.new(.a(2), 1); // This should fail. Positional arguments must
                           // precede named arguments.
    endfunction
  endclass

  initial begin
    C c;
    c = new;
  end

endmodule
