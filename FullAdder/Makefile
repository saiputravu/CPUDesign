TOP_MODULE		= full_adder
TESTBENCH 		= $(TOP_MODULE)_tb.v

INPUT_VERILOG 	= adder.v
INPUT_VERILOG  += $(TOP_MODULE).v $(TESTBENCH)

VVP    			= $(TOP_MODULE).vvp

all: clean compile run waveform

compile:
	iverilog -o $(VVP) $(INPUT_VERILOG)

run:
	vvp $(VVP) -vcd

waveform:
	gtkwave dump.vcd

clean:
	rm -f *.vvp
	rm -f *.vcd

.DEFAULT_GOAL := all
