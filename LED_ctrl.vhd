library ieee;
use IEEE.std_logic_1164.all;


entity LED_ctrl is
	port (patt_en: in std_logic_vector (3 downto 0);
			patt_ctrl: in integer;
			led_light: out std_logic_vector (9 downto 0)
	);
	
end LED_ctrl;


architecture behav of LED_ctrl is
begin
	process (patt_ctrl, patt_en)
		begin
			if (patt_en = "0000") then
				led_light <= "0000000000";
				
			elsif(patt_en = "0001" or patt_en = "0010") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1000000000";
						when 2 => 
							led_light <= "0100000000";
						when 3 => 
							led_light <= "0010000000";
						when 4 => 
							led_light <= "0001000000";
						when 5 => 
							led_light <= "0000100000";
						when 6 => 
							led_light <= "0000010000";
						when 7 => 
							led_light <= "0000001000";
						when 8 => 
							led_light <= "0000000100";
						when 9 => 
							led_light <= "0000000010";
						when 10 => 
							led_light <= "0000000001";
						when others =>
							led_light <= "0000000000";
					end case;
					
			elsif(patt_en = "0011") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1000000001";
						when 2 => 
							led_light <= "0100000010";
						when 3 => 
							led_light <= "0010000100";
						when 4 => 
							led_light <= "0001001000";
						when 5 => 
							led_light <= "0000110000";
						when 6 => 
							led_light <= "0001001000";
						when 7 => 
							led_light <= "0010000100";
						when 8 => 
							led_light <= "0100000010";
						when 9 => 
							led_light <= "1000000001";
						when others =>
							led_light <= "0000000000";
					end case;
					
			elsif(patt_en = "0100") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1010101010";
						when 2 => 
							led_light <= "0000000000";
						when 3 => 
							led_light <= "0101010101";
						when others =>
							led_light <= "0000000000";
					end case;
					
			elsif(patt_en = "0101") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1000000000";
						when 2 => 
							led_light <= "0100000000";
						when 3 => 
							led_light <= "0010000000";
						when 4 => 
							led_light <= "0001000000";
						when 5 => 
							led_light <= "0000100000";
						when 6 => 
							led_light <= "0001000000";
						when 7 => 
							led_light <= "0010000000";
						when 8 => 
							led_light <= "0100000000";
						when 9 => 
							led_light <= "1000000000";							
						when others =>
							led_light <= "0000000000";
					end case;
				elsif(patt_en = "0110") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1000000000";
						when 2 => 
							led_light <= "1100000000";
						when 3 => 
							led_light <= "1010000000";
						when 4 => 
							led_light <= "1001000000";
						when 5 => 
							led_light <= "1000100000";
						when 6 => 
							led_light <= "1001000000";
						when 7 => 
							led_light <= "1010000000";
						when 8 => 
							led_light <= "1100000000";
						when 9 => 
							led_light <= "1000000000";							
						when others =>
							led_light <= "0000000000";
					end case;
					
			elsif(patt_en = "0111") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1010000000";
						when 2 => 
							led_light <= "0010100000";
						when 3 => 
							led_light <= "0000101000";
						when 4 => 
							led_light <= "0000001010";
						when 5 => 
							led_light <= "1000000010";							
						when others =>
							led_light <= "0000000000";
					end case;
					
			elsif(patt_en = "1000") then
					case patt_ctrl is 
						when 1 => 
							led_light <= "1000000001";
						when 2 => 
							led_light <= "1100000011";
						when 3 => 
							led_light <= "1110000111";
						when 4 => 
							led_light <= "1111001111";
						when 5 => 
							led_light <= "0111111110";
						when 6 => 
							led_light <= "0011111110";
						when 7 => 
							led_light <= "0011111100";
						when 8 => 
							led_light <= "0001111000";
						when 9 => 
							led_light <= "0000110000";
						when others =>
							led_light <= "0000000000";
					end case;					
			end if;
	end process;
	
end behav;