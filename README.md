1. Describe multiplexer:
	1.1 Electrical switch
	1.2 Logical switch (CMOS-technology transistors)
	1.3 Table of Truth/Look-Up Table (LUT)
	1.4 AND + OR + NOT terms
	1.5 VHDL behavioral
	1.6 VHDL structural

2. Digital design flow
	2.1 Functional 
	2.2 RTL
	2.3 Logic
	2.4 Circuit
	2.5 Physical

3. Digital design flow (FPGA-based)
	3.1 Functional specification
		3.1.1 External Block diagram (Show FPGA in the sytem)
		3.1.2 Intenal Block diagram (Show all major internal functional sections)
		3.1.3 I/O pins (Output drive capability, input threshold (cmos/ttl))
		3.1.4 Timing estimates (setup + hold times for input / propagation times for output / clock cycle)
		3.1.5 Package type (BGA, TQFP, TSOP, etc.)?
	3.2 Design Entry (Results in RTL description)
		3.2.1 HDL descriptions
		3.2.2 LUTs
		3.2.3 State diagrams for Finite-state-machines
		3.2.4 Block diagrams
		3.2.5 Flowcharts for algorithms
		3.2.6 C/C++ SystemC
	3.3 Design synthesis 
		3.3.1 RTL -> Synthesis (with User Timing/Area Constraints) -> FPGA Gate Level Design
	3.4 Design implementation
		3.4.1 Mapping (Gate Level Design (from 3.3) -> FPGA physical primitives)
		3.4.2 Place and Routing (Place primitives according to FPGA physical layout, route)
		3.4.3 Translation (To binary)
		3.4.4 On FPGA Chip Layout

4. 

