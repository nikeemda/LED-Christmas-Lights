quit -sim

# compile our VHDL file
vcom patterns.vhd

# start the simulation - set timescale to nanoseconds
vsim -t ns patterns

add wave -divider Inputs:
add wave clk_og pattern speed


add wave -divider Outputs:
add wave led_out


force clk_og 0, 1 10ns -r 20ns
force pattern "0000"
force speed "00"
run 30ns

#tesing pattern 8 at all speeds
force clk_og 0, 1 10ns -r 20ns
force pattern "1000"
force speed "00"
run 2000ns

#
force clk_og 0, 1 10ns -r 20ns
force pattern "1000"
force speed "01"
run 2000ns

#
force clk_og 0, 1 10ns -r 20ns
force pattern "1000"
force speed "10"
run 2000ns

#
force clk_og 0, 1 10ns -r 20ns
force pattern "1000"
force speed "11"
run 2000ns


