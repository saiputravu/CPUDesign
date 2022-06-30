INPUT_VERILOG 	= *.v
VVP    			= adder.vvp

all: compile run waveform

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
