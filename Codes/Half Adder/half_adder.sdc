

# SDC for Half_Adder (Combinatorial Logic)
# ----------------------------------------
# Define a strict maximum delay constraint to force the Fitter 
# to aggressively optimize the propagation delay (tPD).

# Define input ports
set INPUT_PORTS  [get_ports {A B}]

# Define output ports
set OUTPUT_PORTS [get_ports {Sum Carry}]

# Constraint: Maximum allowable combinatorial path delay of 3.0 ns
# This forces the Fitter to find the fastest possible physical routing.
set_max_delay 3.000 -from $INPUT_PORTS -to $OUTPUT_PORTS