library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration: Defines the ports (inputs and outputs)
entity Half_Adder1 is
    port (
        A : in  std_logic; -- First input bit
        B : in  std_logic; -- Second input bit
        S : out std_logic; -- Sum output (A XOR B)
        C : out std_logic  -- Carry output (A AND B)
    );
end entity Half_Adder1;

-- Architecture declaration: Defines the logic using structural/dataflow style
architecture Behavioral of Half_Adder1 is
    -- No internal signals needed for this simple circuit
begin
    -- Dataflow description using simple Boolean equations:
    -- Sum (S) is the XOR operation of the two inputs.
    S <= A xor B;
    
    -- Carry (C) is the AND operation of the two inputs.
    C <= A and B;

end architecture Behavioral;