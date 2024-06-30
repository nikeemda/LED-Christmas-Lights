library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity patterns is
    Port ( clk_og : in  STD_LOGIC;
	   pattern: in std_logic_vector (3 downto 0);
	   speed: in std_logic_vector (1 downto 0);
	   led_out: out std_logic_vector (9 downto 0)
	);
end patterns;

architecture behav of patterns is 

component LED_ctrl
	port (patt_en: in std_logic_vector (3 downto 0);
			patt_ctrl: in integer;
		led_light: out std_logic_vector (9 downto 0)
	);
	
end component;

component clockdiv
	port( orig_clk: in std_logic;
		speed: in std_logic_vector (1 downto 0);
		new_clk: out std_logic
	);
end component;

signal patt_ctrl: integer range 0 to 10 := 0;
signal clk_speed: std_logic;


begin

clock: clockdiv port map (clk_og, speed, clk_speed);
	

	pattern_control: process(clk_speed, pattern, patt_ctrl, speed)
		begin
		
		if (clk_speed'event and clk_speed = '1')  then
			case pattern is
				when "0000" => patt_ctrl <= 0;

				when "0001" => 	
						patt_ctrl <= 1;
						if (patt_ctrl < 10) then 
							patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0010" => 
						patt_ctrl <= 1;
						if (patt_ctrl < 10) then 
							patt_ctrl <= patt_ctrl + 2;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0011" => 
						patt_ctrl <= 1;
						if (patt_ctrl <= 9) then 
								patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0100" => 
						patt_ctrl <= 1;
						if (patt_ctrl < 3) then 
							patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0101" => 
						patt_ctrl <= 1;
						if (patt_ctrl < 9) then 
							patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0110" => 
						patt_ctrl <= 1;
						if (patt_ctrl < 9) then 
							patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "0111" => 
						patt_ctrl <= 1;
						if (patt_ctrl < 5) then 
							patt_ctrl <= patt_ctrl + 1;
          			else 
           				patt_ctrl <= 1;
          			end if;

		
				when "1000" => 

						if (patt_ctrl < 10) then 
							patt_ctrl <= patt_ctrl + 1;
						else 
							patt_ctrl <= 1;
          			end if;

		
				when others => patt_ctrl <= 0;
			end case;
			
		end if;
		
	end process;

LED_comp: LED_ctrl port map (pattern, patt_ctrl, led_out);

end behav;