library IEEE;
library WORK;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

--use WORK.cpu_package.all;

entity fpga is
    port (
        btn_A_i : in std_logic;
        btn_B_i : in std_logic;
        led_G_o : out std_logic;
        led_B_o : out std_logic;
        led_R_o : out std_logic
    );
end fpga;

architecture behavior of fpga is

begin

led_G_o <= btn_A_i when btn_B_i = '1' 
        else 'Z';

led_R_o <= btn_B_i when btn_A_i = '1' 
        else 'Z';

led_B_o <= '0' when btn_A_i = '0' and btn_B_i = '0'
        else 'Z';

end behavior;