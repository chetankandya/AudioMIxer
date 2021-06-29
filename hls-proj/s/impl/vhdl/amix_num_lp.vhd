-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity amix_num_lp_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 51
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of amix_num_lp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111010011111100110110010100111", 
    1 => "10111010010101110101100001011011", 
    2 => "10111010000001110110101010011000", 
    3 => "00111000000100011011010111101010", 
    4 => "00111010011011000010001000110110", 
    5 => "00111011000001101001010100010011", 
    6 => "00111011010110001101101011010111", 
    7 => "00111011100011010011110101100011", 
    8 => "00111011100101011111001000111010", 
    9 => "00111011011011001100110100011000", 
    10 => "00111010100011011001010000010111", 
    11 => "10111011010001110110100011011011", 
    12 => "10111100000010000100100111001111", 
    13 => "10111100011000100010111111110001", 
    14 => "10111100100101001000000110111001", 
    15 => "10111100101000010010011111101111", 
    16 => "10111100100010100100010110010100", 
    17 => "10111100000011001011000000001010", 
    18 => "00111011101110010010000111100000", 
    19 => "00111100110011111010000111010110", 
    20 => "00111101010010001101000001101100", 
    21 => "00111101100110000100101110111111", 
    22 => "00111101110010011011000000100100", 
    23 => "00111101111100100111110001110111", 
    24 => "00111110000001101011000100111011", 
    25 => "00111110000010110110001101100111", 
    26 => "00111110000001101011000100111011", 
    27 => "00111101111100100111110001110111", 
    28 => "00111101110010011011000000100100", 
    29 => "00111101100110000100101110111111", 
    30 => "00111101010010001101000001101100", 
    31 => "00111100110011111010000111010110", 
    32 => "00111011101110010010000111100000", 
    33 => "10111100000011001011000000001010", 
    34 => "10111100100010100100010110010100", 
    35 => "10111100101000010010011111101111", 
    36 => "10111100100101001000000110111001", 
    37 => "10111100011000100010111111110001", 
    38 => "10111100000010000100100111001111", 
    39 => "10111011010001110110100011011011", 
    40 => "00111010100011011001010000010111", 
    41 => "00111011011011001100110100011000", 
    42 => "00111011100101011111001000111010", 
    43 => "00111011100011010011110101100011", 
    44 => "00111011010110001101101011010111", 
    45 => "00111011000001101001010100010011", 
    46 => "00111010011011000010001000110110", 
    47 => "00111000000100011011010111101010", 
    48 => "10111010000001110110101010011000", 
    49 => "10111010010101110101100001011011", 
    50 => "10111010011111100110110010100111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity amix_num_lp is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 51;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of amix_num_lp is
    component amix_num_lp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    amix_num_lp_rom_U :  component amix_num_lp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


