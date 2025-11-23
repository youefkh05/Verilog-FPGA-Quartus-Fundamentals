library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Required for signed arithmetic

-- Define the Entity (PORTS MUST BE STD_LOGIC_VECTOR)
entity Complex_Adder is
    port (
        -- Inputs: Use STD_LOGIC_VECTOR for the external ports
        Ar : in std_logic_vector(2 downto 0); -- A Real
        Ai : in std_logic_vector(2 downto 0); -- A Imaginary
        Br : in std_logic_vector(2 downto 0); -- B Real
        Bi : in std_logic_vector(2 downto 0); -- B Imaginary
        
        -- Outputs: Use STD_LOGIC_VECTOR for the external ports
        Yr : out std_logic_vector(6 downto 0); -- Y Real (Ar.Br - Ai.Bi)
        Yi : out std_logic_vector(6 downto 0)  -- Y Imaginary (Ar.Bi + Ai.Br)
    );
end entity Complex_Adder;

-- Define the Architecture (the component's behavior)
architecture Behavioral of Complex_Adder is
    -- Internal signals for arithmetic (use SIGNED type)
    signal Ar_sig, Ai_sig, Br_sig, Bi_sig : signed(2 downto 0); 
    signal Yr_sig, Yi_sig : signed(6 downto 0);
    
    -- Internal signals to store the 6-bit intermediate multiplication results
    signal P1 : signed(5 downto 0); -- Ar * Br
    signal P2 : signed(5 downto 0); -- Ai * Bi
    signal P3 : signed(5 downto 0); -- Ar * Bi
    signal P4 : signed(5 downto 0); -- Ai * Br

begin
    -- 1. TYPE CASTING: Convert external ports (STD_LOGIC_VECTOR) to internal SIGNED signals
    Ar_sig <= signed(Ar);
    Ai_sig <= signed(Ai);
    Br_sig <= signed(Br);
    Bi_sig <= signed(Bi);
    
    -- 2. Perform the four independent multiplications (using SIGNED signals)
    P1 <= Ar_sig * Br_sig;
    P2 <= Ai_sig * Bi_sig;
    P3 <= Ar_sig * Bi_sig;
    P4 <= Ai_sig * Br_sig;
    
    -- 3. Calculate the Real Part (Yr_sig) and Imaginary Part (Yi_sig)
    Yr_sig <= (resize(P1, Yr_sig'length) - resize(P2, Yr_sig'length));
    Yi_sig <= (resize(P3, Yi_sig'length) + resize(P4, Yi_sig'length));

    -- 4. TYPE CASTING: Convert internal SIGNED outputs back to external ports (STD_LOGIC_VECTOR)
    Yr <= std_logic_vector(Yr_sig);
    Yi <= std_logic_vector(Yi_sig);

end architecture Behavioral;