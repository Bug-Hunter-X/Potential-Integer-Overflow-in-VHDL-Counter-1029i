# VHDL Counter with Potential Integer Overflow

This repository demonstrates a simple VHDL counter with a potential integer overflow bug. The counter increments indefinitely without a maximum limit, which can lead to unexpected simulation results or hardware malfunction. The `bug.vhdl` file contains the buggy code, while `bugSolution.vhdl` provides a corrected version.

**Bug:**

The `internal_count` signal is an `INTEGER` type, which has a limited range.  When the counter reaches the maximum value for `INTEGER`, incrementing it will cause an overflow, leading to unpredictable behavior. This is a common error in VHDL code involving counters.

**Solution:**

The solution is to use a type with a defined range, or implement a rollover mechanism to prevent the counter from exceeding a defined maximum value.