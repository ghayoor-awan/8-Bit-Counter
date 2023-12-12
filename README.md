# 8-Bit-Counter

### One Increment Count FPGA Module

This Verilog module implements a counter that increments by one and outputs the count value on 8 LEDs of an FPGA. The code utilizes an external clock signal (`clk_in`) and a reset signal to control the counter's functionality.

**Description**:
- The module includes an 8-bit counter (`counter`) and a 26-bit internal count register (`count`).
- The `reset` input triggers the reset operation, resetting the `counter`, `count`, and an additional clock signal (`clk_out`).
- The counter increments when the count value reaches a certain threshold (`25000000`), representing a clock cycle.
- Upon reaching the threshold, the count resets to zero, the clock signal toggles, and if the clock is high (`clk_out`) and the `counter` value is less than `255`, the `counter` increments by one.
- The `counter` value is displayed on 8 LEDs connected to the FPGA, indicating the current count value.

**Simulation**: The code has been implemented to display the output on 8 LEDs of an FPGA. However, it is designed to function with an FPGA and an external clock signal (`clk_in`). Simulations or implementation on FPGA hardware can demonstrate its functionality.

This Verilog module demonstrates a basic counting functionality with LED output on an FPGA, serving as a foundational block for various digital applications requiring count-based operations.
