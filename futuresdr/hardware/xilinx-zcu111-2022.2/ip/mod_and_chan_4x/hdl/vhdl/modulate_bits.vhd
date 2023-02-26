-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1.0
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity modulate_bits is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    modulation_type : IN STD_LOGIC_VECTOR (2 downto 0);
    symbol_V : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of modulate_bits is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv16_D2BE : STD_LOGIC_VECTOR (15 downto 0) := "1101001010111110";
    constant ap_const_lv16_2D41 : STD_LOGIC_VECTOR (15 downto 0) := "0010110101000001";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal QAM16_LUT_M_real_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal QAM16_LUT_M_real_V_ce0 : STD_LOGIC;
    signal QAM16_LUT_M_real_V_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal QAM16_LUT_M_imag_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal QAM16_LUT_M_imag_V_ce0 : STD_LOGIC;
    signal QAM16_LUT_M_imag_V_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal QAM64_LUT_M_real_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal QAM64_LUT_M_real_V_ce0 : STD_LOGIC;
    signal QAM64_LUT_M_real_V_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal QAM64_LUT_M_imag_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal QAM64_LUT_M_imag_V_ce0 : STD_LOGIC;
    signal QAM64_LUT_M_imag_V_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal modulation_type_read_reg_240 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_100_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_247 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_104_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_reg_252 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal tmp_3_fu_112_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_108_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sel_tmp2_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal channel_data_M_imag_2_fu_161_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp4_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal channel_data_M_imag_fu_144_p6 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp3_fu_170_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp6_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal channel_data_M_real_fu_124_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp5_fu_183_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal channel_data_M_real_3_fu_157_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal channel_data_M_real_1_fu_131_p6 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp_fu_204_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sel_tmp1_fu_212_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal complex_M_real_V_wr_fu_220_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal complex_M_imag_V_wr_fu_196_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component mod_and_chan_4x_mfYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        din3 : IN STD_LOGIC_VECTOR (15 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component modulate_bits_QAMbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


    component modulate_bits_QAMcud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


    component modulate_bits_QAMdEe IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component modulate_bits_QAMeOg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    QAM16_LUT_M_real_V_U : component modulate_bits_QAMbkb
    generic map (
        DataWidth => 15,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => QAM16_LUT_M_real_V_address0,
        ce0 => QAM16_LUT_M_real_V_ce0,
        q0 => QAM16_LUT_M_real_V_q0);

    QAM16_LUT_M_imag_V_U : component modulate_bits_QAMcud
    generic map (
        DataWidth => 15,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => QAM16_LUT_M_imag_V_address0,
        ce0 => QAM16_LUT_M_imag_V_ce0,
        q0 => QAM16_LUT_M_imag_V_q0);

    QAM64_LUT_M_real_V_U : component modulate_bits_QAMdEe
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => QAM64_LUT_M_real_V_address0,
        ce0 => QAM64_LUT_M_real_V_ce0,
        q0 => QAM64_LUT_M_real_V_q0);

    QAM64_LUT_M_imag_V_U : component modulate_bits_QAMeOg
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => QAM64_LUT_M_imag_V_address0,
        ce0 => QAM64_LUT_M_imag_V_ce0,
        q0 => QAM64_LUT_M_imag_V_q0);

    mod_and_chan_4x_mfYi_U1 : component mod_and_chan_4x_mfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 2,
        dout_WIDTH => 16)
    port map (
        din0 => ap_const_lv16_2D41,
        din1 => ap_const_lv16_D2BE,
        din2 => ap_const_lv16_2D41,
        din3 => ap_const_lv16_D2BE,
        din4 => tmp_1_reg_252,
        dout => channel_data_M_real_1_fu_131_p6);

    mod_and_chan_4x_mfYi_U2 : component mod_and_chan_4x_mfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 2,
        dout_WIDTH => 16)
    port map (
        din0 => ap_const_lv16_2D41,
        din1 => ap_const_lv16_2D41,
        din2 => ap_const_lv16_D2BE,
        din3 => ap_const_lv16_D2BE,
        din4 => tmp_1_reg_252,
        dout => channel_data_M_imag_fu_144_p6);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                modulation_type_read_reg_240 <= modulation_type;
                tmp_1_reg_252 <= tmp_1_fu_104_p1;
                tmp_reg_247 <= tmp_fu_100_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    QAM16_LUT_M_imag_V_address0 <= tmp_3_fu_112_p1(4 - 1 downto 0);

    QAM16_LUT_M_imag_V_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            QAM16_LUT_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            QAM16_LUT_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    QAM16_LUT_M_real_V_address0 <= tmp_3_fu_112_p1(4 - 1 downto 0);

    QAM16_LUT_M_real_V_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            QAM16_LUT_M_real_V_ce0 <= ap_const_logic_1;
        else 
            QAM16_LUT_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    QAM64_LUT_M_imag_V_address0 <= tmp_4_fu_118_p1(6 - 1 downto 0);

    QAM64_LUT_M_imag_V_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            QAM64_LUT_M_imag_V_ce0 <= ap_const_logic_1;
        else 
            QAM64_LUT_M_imag_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    QAM64_LUT_M_real_V_address0 <= tmp_4_fu_118_p1(6 - 1 downto 0);

    QAM64_LUT_M_real_V_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            QAM64_LUT_M_real_V_ce0 <= ap_const_logic_1;
        else 
            QAM64_LUT_M_real_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_ce)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_const_logic_0 = ap_ce) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= complex_M_real_V_wr_fu_220_p3;
    ap_return_1 <= complex_M_imag_V_wr_fu_196_p3;
        channel_data_M_imag_2_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(QAM16_LUT_M_imag_V_q0),16));

        channel_data_M_real_3_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(QAM16_LUT_M_real_V_q0),16));

    channel_data_M_real_fu_124_p3 <= 
        ap_const_lv16_D2BE when (tmp_reg_247(0) = '1') else 
        ap_const_lv16_2D41;
    complex_M_imag_V_wr_fu_196_p3 <= 
        channel_data_M_real_fu_124_p3 when (sel_tmp6_fu_191_p2(0) = '1') else 
        sel_tmp5_fu_183_p3;
    complex_M_real_V_wr_fu_220_p3 <= 
        channel_data_M_real_fu_124_p3 when (sel_tmp6_fu_191_p2(0) = '1') else 
        sel_tmp1_fu_212_p3;
    sel_tmp1_fu_212_p3 <= 
        channel_data_M_real_1_fu_131_p6 when (sel_tmp4_fu_178_p2(0) = '1') else 
        sel_tmp_fu_204_p3;
    sel_tmp2_fu_165_p2 <= "1" when (modulation_type_read_reg_240 = ap_const_lv3_2) else "0";
    sel_tmp3_fu_170_p3 <= 
        channel_data_M_imag_2_fu_161_p1 when (sel_tmp2_fu_165_p2(0) = '1') else 
        QAM64_LUT_M_imag_V_q0;
    sel_tmp4_fu_178_p2 <= "1" when (modulation_type_read_reg_240 = ap_const_lv3_1) else "0";
    sel_tmp5_fu_183_p3 <= 
        channel_data_M_imag_fu_144_p6 when (sel_tmp4_fu_178_p2(0) = '1') else 
        sel_tmp3_fu_170_p3;
    sel_tmp6_fu_191_p2 <= "1" when (modulation_type_read_reg_240 = ap_const_lv3_0) else "0";
    sel_tmp_fu_204_p3 <= 
        channel_data_M_real_3_fu_157_p1 when (sel_tmp2_fu_165_p2(0) = '1') else 
        QAM64_LUT_M_real_V_q0;
    tmp_1_fu_104_p1 <= symbol_V(2 - 1 downto 0);
    tmp_2_fu_108_p1 <= symbol_V(4 - 1 downto 0);
    tmp_3_fu_112_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_108_p1),64));
    tmp_4_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(symbol_V),64));
    tmp_fu_100_p1 <= symbol_V(1 - 1 downto 0);
end behav;