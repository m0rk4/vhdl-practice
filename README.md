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

4. VHDL Descriptions
	4.1 Behavioral (synthesized)
	4.2 Structural (synthesized)
	4.3 Time description (Z <= A and B after 10 ns;) (not synthesized)
	4.4 Mixed description (4.1? + 4.2? + 4.3?)

5. Port - component, which is used to provide connection between internal and external environment
	5.1 IN (read inside component)
	5.2 OUT (write to port)
	5.3 INOUT (5.1 + 5.2)
	5.4 buffer (5.2 + read inside Unit)

6. STD_LOGIC type 
	6.1 'U' - uninitialized
	6.2 'X' - force unknown 
	6.3 '0' - force 0 (synthesized)
	6.4 '1' - force 1 (synthesized)
	6.5 'Z' - high impedence (synthesized)
	6.6 'W' - weak unknown 
	6.7 'L' - weak 0
	6.8 'H' - weak 1
	6.9 '-' - don't care

7. BIT type
	7.1 '0' - logic 0
	7.2 '1' - logic 1

8. STD_LOGIC_VECTOR type
	8.1 std_logic_vector(3 downto 0) - Little endian
	8.2 std_logic_vector(1 to 3) - Big endian

9. Ports and signal operators:
	9.1 AND, OR, NOT, XOR, NAND, NOR, XNOR

10. Each statement in architecture body is executed in parallel

11. Resolution table is used to cover situations with multiple drivers for one port/signal (like '0'-'1'='X')

12. Signal is like a wire.

13. Structural Descriptions are based on components usages 
	13.1 Syntax: Component [Name] port(...) End Component;
	13.2 Usage with For-loop syntax:  [Group Name]: FOR J in [start] to [end] GENERATE [Component Name]: [Compnent] port map(...); end generate;

14. 
