# NEW/Correct SDC Content
# Select all input ports (4 ports, 3 bits each)
set INPUT_PORTS  [get_ports {Ar[*] Ai[*] Br[*] Bi[*]}]

# Select all output ports (2 ports, 7 bits each)
set OUTPUT_PORTS [get_ports {Yr[*] Yi[*]}]

# Apply the max delay constraint
set_max_delay 1.000 -from $INPUT_PORTS -to $OUTPUT_PORTS