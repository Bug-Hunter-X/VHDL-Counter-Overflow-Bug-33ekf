# VHDL Counter with Overflow Handling
This repository demonstrates a potential overflow bug in a simple VHDL counter and provides a solution with improved overflow handling. 

## Bug Description
The original `counter.vhdl` code implements a counter that increments on each rising clock edge. However, it lacks explicit handling for the case when the counter reaches its maximum value (15).  This can cause unexpected behavior, especially in systems where overflow should trigger a specific response.

## Solution
The `counter_fixed.vhdl` file presents a solution to the problem. The improved code checks if the counter has reached its maximum value and handles it accordingly; in this case, it stops incrementing.  Other overflow handling mechanisms can be implemented as needed.

## Usage
Both VHDL files can be simulated and synthesized using standard VHDL simulators and synthesis tools. You should observe the differences in behavior between the original and fixed counter implementations.