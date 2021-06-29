-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity amix_num_bp_rom is 
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


architecture rtl of amix_num_bp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111000101010011110001111011101", 
    1 => "00111010100111111011101101101011", 
    2 => "00111010111010111010010010010000", 
    3 => "10111001000111100010000001111011", 
    4 => "10111011010000110010101000001101", 
    5 => "10111011001011010101101010000111", 
    6 => "10111000111000000001101000010000", 
    7 => "10111011000011100110010010000011", 
    8 => "10111100000100101000101001111011", 
    9 => "10111100000011000110110000111011", 
    10 => "00111011011110110101010111101010", 
    11 => "00111100010010001101001011111000", 
    12 => "00111011100011001101100011111000", 
    13 => "10111010100010010001111110011001", 
    14 => "00111100100110100010011101001101", 
    15 => "00111101001010010110100101010111", 
    16 => "00111100110000001101001101101101", 
    17 => "10111100101001100000011001000111", 
    18 => "10111100110100001011000101000000", 
    19 => "00111100001010011111110010101010", 
    20 => "10111011101111001001000101101010", 
    21 => "10111101111011011010011110001111", 
    22 => "10111110010001001000111010101001", 
    23 => "10111101100101100100101011000000", 
    24 => "00111110001110110011010111100110", 
    25 => "00111110101000101111111110000111", 
    26 => "00111110001110110011010111100110", 
    27 => "10111101100101100100101011000000", 
    28 => "10111110010001001000111010101001", 
    29 => "10111101111011011010011110001111", 
    30 => "10111011101111001001000101101010", 
    31 => "00111100001010011111110010101010", 
    32 => "10111100110100001011000101000000", 
    33 => "10111100101001100000011001000111", 
    34 => "00111100110000001101001101101101", 
    35 => "00111101001010010110100101010111", 
    36 => "00111100100110100010011101001101", 
    37 => "10111010100010010001111110011001", 
    38 => "00111011100011001101100011111000", 
    39 => "00111100010010001101001011111000", 
    40 => "00111011011110110101010111101010", 
    41 => "10111100000011000110110000111011", 
    42 => "10111100000100101000101001111011", 
    43 => "10111011000011100110010010000011", 
    44 => "10111000111000000001101000010000", 
    45 => "10111011001011010101101010000111", 
    46 => "10111011010000110010101000001101", 
    47 => "10111001000111100010000001111011", 
    48 => "00111010111010111010010010010000", 
    49 => "00111010100111111011101101101011", 
    50 => "00111000101010011110001111011101" );


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

entity amix_num_bp is
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

architecture arch of amix_num_bp is
    component amix_num_bp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    amix_num_bp_rom_U :  component amix_num_bp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


