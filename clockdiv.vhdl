library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity clockdiv is 
	port(
		orig_clk : in STD_LOGIC;
		speed: in STD_LOGIC_VECTOR(1 downto 0);
		new_clk : out std_logic
		);
end clockdiv;

architecture behav of clockdiv is 
	signal count1: integer:= 0;
	signal count2: integer:= 0;
	signal count3: integer:= 0;
	signal count4: integer:= 0;
	signal clk_out1: std_logic := '0';
	signal clk_out2: std_logic := '0';
	signal clk_out3: std_logic := '0';
	signal clk_out4: std_logic := '0';
	
begin
	speed_1:process(orig_clk)
		begin
		
			if (orig_clk'event and orig_clk ='1') then
					count1 <= count1 + 1;
			
					if (count1 = 40) then
						count1 <= 0;
					end if;
					
					if(count1 = 20) then
							clk_out1 <= '0';
					else 
							clk_out1 <= '1';
					end if;
			
			end if;
			
	end process;

	speed_2:process(orig_clk)
		begin
		
			if (orig_clk'event and orig_clk ='1') then
					count2 <= count2 + 1;
			
					if (count2 = 20) then
						count2 <= 0;
					end if;
					
					if(count2 = 10) then
							clk_out2 <= '0';
					else 
							clk_out2 <= '1';
					end if;
			
			end if;
			
	end process;


	speed_3:process(orig_clk)
		begin
		
			if (orig_clk'event and orig_clk ='1') then
					count3 <= count3 + 1;
			
					if (count3 = 10) then
						count3 <= 0;
					end if;
					
					if(count3 = 5) then
							clk_out3 <= '0';
					else 
							clk_out3 <= '1';
					end if;
			
			end if;
			
	end process;


	speed_4:process(orig_clk)
		begin
		
			if (orig_clk'event and orig_clk ='1') then
					count4 <= count4 + 1;
			
					if (count4 = 5) then
						count4 <= 0;
					end if;
					
					if(count4 = 1) then
							clk_out4 <= '0';
					else 
							clk_out4 <= '1';
					end if;
			
			end if;
			
	end process;	
	
	
	new_clk <= clk_out1 when (speed = "00") else
					clk_out2 when (speed = "01") else
					clk_out3 when (speed = "10") else
					clk_out4;
	
	
end behav;





