-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity modulate_bits_QAMibs_rom is 
    generic(
             dwidth     : integer := 16; 
             awidth     : integer := 6; 
             mem_size    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of modulate_bits_QAMibs_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 to 1=> "0001110110100000", 2 to 3=> "1110001001011111", 4 to 5=> "0001110110100000", 
    6 to 7=> "1110001001011111", 8 to 9=> "0011000101100000", 10 to 11=> "1100111010011111", 
    12 to 13=> "0011000101100000", 14 to 15=> "1100111010011111", 16 to 17=> "0001110110100000", 
    18 to 19=> "1110001001011111", 20 to 21=> "0001110110100000", 22 to 23=> "1110001001011111", 
    24 to 25=> "0011000101100000", 26 to 27=> "1100111010011111", 28 to 29=> "0011000101100000", 
    30 to 31=> "1100111010011111", 32 to 33=> "0000100111100000", 34 to 35=> "1111011000011111", 
    36 to 37=> "0000100111100000", 38 to 39=> "1111011000011111", 40 to 41=> "0100010100100000", 
    42 to 43=> "1011101011011111", 44 to 45=> "0100010100100000", 46 to 47=> "1011101011011111", 
    48 to 49=> "0000100111100000", 50 to 51=> "1111011000011111", 52 to 53=> "0000100111100000", 
    54 to 55=> "1111011000011111", 56 to 57=> "0100010100100000", 58 to 59=> "1011101011011111", 
    60 to 61=> "0100010100100000", 62 to 63=> "1011101011011111" );


attribute EQUIVALENT_REGISTER_REMOVAL : string;
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

entity modulate_bits_QAMibs is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of modulate_bits_QAMibs is
    component modulate_bits_QAMibs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    modulate_bits_QAMibs_rom_U :  component modulate_bits_QAMibs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


