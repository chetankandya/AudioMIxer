-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity amix_num_hp_rom is 
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


architecture rtl of amix_num_hp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111010011010010110101101101110", 
    1 => "10111001110011101110101010000001", 
    2 => "10111010101001111000010010101010", 
    3 => "00111000111100101101101010001010", 
    4 => "00111011000001111100100010011110", 
    5 => "00111010000110011001100001010000", 
    6 => "10111011010100100000100000100111", 
    7 => "10111011000011001000011011111011", 
    8 => "00111011100011101001000100000000", 
    9 => "00111011101000011110101101010010", 
    10 => "10111011101000001110010101101101", 
    11 => "10111100000101101001111101111001", 
    12 => "00111011100001000010100011000111", 
    13 => "00111100011100110111101001011001", 
    14 => "10111010001010010110000000000100", 
    15 => "10111100101100010000010010110110", 
    16 => "10111011110110001001100000101110", 
    17 => "00111100111011000010101011001011", 
    18 => "00111100101000100000110100011011", 
    19 => "10111101000100100101010000001111", 
    20 => "10111101001100010110111110110101", 
    21 => "00111101001010011011111100000001", 
    22 => "00111101101111101010100110011001", 
    23 => "10111101001110010011101100011100", 
    24 => "10111110101000001101110000010000", 
    25 => "00111111000011000001010000010010", 
    26 => "10111110101000001101110000010000", 
    27 => "10111101001110010011101100011100", 
    28 => "00111101101111101010100110011001", 
    29 => "00111101001010011011111100000001", 
    30 => "10111101001100010110111110110101", 
    31 => "10111101000100100101010000001111", 
    32 => "00111100101000100000110100011011", 
    33 => "00111100111011000010101011001011", 
    34 => "10111011110110001001100000101110", 
    35 => "10111100101100010000010010110110", 
    36 => "10111010001010010110000000000100", 
    37 => "00111100011100110111101001011001", 
    38 => "00111011100001000010100011000111", 
    39 => "10111100000101101001111101111001", 
    40 => "10111011101000001110010101101101", 
    41 => "00111011101000011110101101010010", 
    42 => "00111011100011101001000100000000", 
    43 => "10111011000011001000011011111011", 
    44 => "10111011010100100000100000100111", 
    45 => "00111010000110011001100001010000", 
    46 => "00111011000001111100100010011110", 
    47 => "00111000111100101101101010001010", 
    48 => "10111010101001111000010010101010", 
    49 => "10111001110011101110101010000001", 
    50 => "00111010011010010110101101101110" );


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

entity amix_num_hp is
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

architecture arch of amix_num_hp is
    component amix_num_hp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    amix_num_hp_rom_U :  component amix_num_hp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


