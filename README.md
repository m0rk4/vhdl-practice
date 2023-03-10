1. Describe multiplexer:
   1. Electrical switch
   2. Logical switch (CMOS-technology transistors)
   3. Table of Truth/Look-Up Table (LUT)
   4. AND + OR + NOT terms
   5. VHDL behavioral
   6. VHDL structural

2. Digital design flow
   1. Functional 
   2. RTL
   3. Logic
   4. Circuit
   5. Physical

3. Digital design flow (FPGA-based)
	1. Functional specification
		1. External Block diagram (Show FPGA in the sytem)
		2. Intenal Block diagram (Show all major internal functional sections)
		3. I/O pins (Output drive capability, input threshold (cmos/ttl))
		4. Timing estimates (setup + hold times for input / propagation times for output / clock cycle)
		5. Package type (BGA, TQFP, TSOP, etc.)?
	2. Design Entry (Results in RTL description)
		1. HDL descriptions
		2. LUTs
		3. State diagrams for Finite-state-machines
		4. Block diagrams
		5. Flowcharts for algorithms
		6. C/C++ SystemC
	3. Design synthesis 
		1. RTL -> Synthesis (with User Timing/Area Constraints) -> FPGA Gate Level Design
	4. Design implementation
		1. Mapping (Gate Level Design (from 3.3) -> FPGA physical primitives)
		2. Place and Routing (Place primitives according to FPGA physical layout, route)
		3. Translation (To binary)
		4. On FPGA Chip Layout

4. VHDL Descriptions
	1. Behavioral (synthesized)
	2. Structural (synthesized)
	3. Time description (Z <= A and B after 10 ns;) (not synthesized)
	4. Mixed description (4.1? + 4.2? + 4.3?)

5. Port - component, which is used to provide connection between internal and external environment
	1. IN (read inside component)
	2. OUT (write to port)
	3. INOUT (5.1 + 5.2)
	4. buffer (5.2 + read inside Unit)

6. STD_LOGIC type 
	1. 'U' - uninitialized
	2. 'X' - force unknown 
	3. '0' - force 0 (synthesized)
	4. '1' - force 1 (synthesized)
	5. 'Z' - high impedence (synthesized)
	6. 'W' - weak unknown 
	7. 'L' - weak 0
	8. 'H' - weak 1
	9. '-' - don't care

7. BIT type
	1. '0' - logic 0
	2. '1' - logic 1

8. STD_LOGIC_VECTOR type
	1. std_logic_vector(3 downto 0) - Little endian
	2. std_logic_vector(1 to 3) - Big endian

9. Ports and signal operators: AND, OR, NOT, XOR, NAND, NOR, XNOR

10. Each statement in architecture body is executed in parallel

11. Resolution table is used to cover situations with multiple drivers for one port/signal (like '0'-'1'='X')

12. Signal is like a wire.

13. Structural Descriptions are based on components usages 
	1. Syntax: Component [Name] port(...) End Component;
	2. Usage with For-loop syntax:  [Group Name]: FOR J in [start] to [end] GENERATE [Component Name]: [Compnent] port map(...); end generate;

14. Process
	1. Processes are parallel, statements in processes are sequential
	2. Sensitivity list
		1. Running state (executes statements)
		2. Suspending (waiting for signals changing)
		3. Lifecycle: Suspended -> [Signal from sensetivity list changed] -> Execute all statements (Running) -> Suspended

