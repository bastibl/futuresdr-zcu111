-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity run_ber_Loop_dup_enc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    block_cfg_n_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    block_cfg_n_empty_n : IN STD_LOGIC;
    block_cfg_n_read : OUT STD_LOGIC;
    enc_data_g_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    enc_data_g_V_empty_n : IN STD_LOGIC;
    enc_data_g_V_read : OUT STD_LOGIC;
    enc_data_i_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    enc_data_i_V_full_n : IN STD_LOGIC;
    enc_data_i_V_write : OUT STD_LOGIC;
    block_cfg_outputs_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    block_cfg_outputs_empty_n : IN STD_LOGIC;
    block_cfg_outputs_read : OUT STD_LOGIC;
    block_cfg_n_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    block_cfg_n_out_full_n : IN STD_LOGIC;
    block_cfg_n_out_write : OUT STD_LOGIC;
    block_cfg_outputs_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    block_cfg_outputs_out_full_n : IN STD_LOGIC;
    block_cfg_outputs_out_write : OUT STD_LOGIC );
end;


architecture behav of run_ber_Loop_dup_enc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal block_cfg_n_blk_n : STD_LOGIC;
    signal enc_data_g_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal enc_data_i_V_blk_n : STD_LOGIC;
    signal block_cfg_outputs_blk_n : STD_LOGIC;
    signal block_cfg_n_out_blk_n : STD_LOGIC;
    signal block_cfg_outputs_out_blk_n : STD_LOGIC;
    signal i1_0_i_i_reg_175 : STD_LOGIC_VECTOR (31 downto 0);
    signal block_cfg_n_read_reg_210 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal exitcond_i_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal i_fu_199_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and (exitcond_i_fu_194_p2 = ap_const_lv1_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and not((exitcond_i_fu_194_p2 = ap_const_lv1_1)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and (exitcond_i_fu_194_p2 = ap_const_lv1_1)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_0_i_i_reg_175_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (exitcond_i_fu_194_p2 = ap_const_lv1_0))) then 
                i1_0_i_i_reg_175 <= i_fu_199_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
                i1_0_i_i_reg_175 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then
                block_cfg_n_read_reg_210 <= block_cfg_n_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_enable_reg_pp0_iter1, ap_block_state1, exitcond_i_fu_194_p2, ap_block_state3, ap_enable_reg_pp0_iter0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((ap_block_state1 = ap_const_boolean_0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (exitcond_i_fu_194_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (exitcond_i_fu_194_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, block_cfg_n_empty_n, block_cfg_outputs_empty_n, block_cfg_n_out_full_n, block_cfg_outputs_out_full_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = block_cfg_n_empty_n) or (ap_const_logic_0 = block_cfg_outputs_empty_n) or (ap_const_logic_0 = block_cfg_n_out_full_n) or (ap_const_logic_0 = block_cfg_outputs_out_full_n));
    end process;


    ap_block_state3_assign_proc : process(enc_data_g_V_empty_n, enc_data_i_V_full_n)
    begin
                ap_block_state3 <= ((ap_const_logic_0 = enc_data_g_V_empty_n) or (ap_const_logic_0 = enc_data_i_V_full_n));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    block_cfg_n_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, block_cfg_n_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            block_cfg_n_blk_n <= block_cfg_n_empty_n;
        else 
            block_cfg_n_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    block_cfg_n_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, block_cfg_n_out_full_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            block_cfg_n_out_blk_n <= block_cfg_n_out_full_n;
        else 
            block_cfg_n_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    block_cfg_n_out_din <= block_cfg_n_dout;

    block_cfg_n_out_write_assign_proc : process(ap_CS_fsm_state1, ap_block_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
            block_cfg_n_out_write <= ap_const_logic_1;
        else 
            block_cfg_n_out_write <= ap_const_logic_0;
        end if; 
    end process;


    block_cfg_n_read_assign_proc : process(ap_CS_fsm_state1, ap_block_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
            block_cfg_n_read <= ap_const_logic_1;
        else 
            block_cfg_n_read <= ap_const_logic_0;
        end if; 
    end process;


    block_cfg_outputs_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, block_cfg_outputs_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            block_cfg_outputs_blk_n <= block_cfg_outputs_empty_n;
        else 
            block_cfg_outputs_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    block_cfg_outputs_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, block_cfg_outputs_out_full_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            block_cfg_outputs_out_blk_n <= block_cfg_outputs_out_full_n;
        else 
            block_cfg_outputs_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    block_cfg_outputs_out_din <= block_cfg_outputs_dout;

    block_cfg_outputs_out_write_assign_proc : process(ap_CS_fsm_state1, ap_block_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
            block_cfg_outputs_out_write <= ap_const_logic_1;
        else 
            block_cfg_outputs_out_write <= ap_const_logic_0;
        end if; 
    end process;


    block_cfg_outputs_read_assign_proc : process(ap_CS_fsm_state1, ap_block_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_block_state1 = ap_const_boolean_0))) then 
            block_cfg_outputs_read <= ap_const_logic_1;
        else 
            block_cfg_outputs_read <= ap_const_logic_0;
        end if; 
    end process;


    enc_data_g_V_blk_n_assign_proc : process(enc_data_g_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            enc_data_g_V_blk_n <= enc_data_g_V_empty_n;
        else 
            enc_data_g_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    enc_data_g_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))))) then 
            enc_data_g_V_read <= ap_const_logic_1;
        else 
            enc_data_g_V_read <= ap_const_logic_0;
        end if; 
    end process;


    enc_data_i_V_blk_n_assign_proc : process(enc_data_i_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            enc_data_i_V_blk_n <= enc_data_i_V_full_n;
        else 
            enc_data_i_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    enc_data_i_V_din <= enc_data_g_V_dout;

    enc_data_i_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_boolean_1 = ap_block_state3))))) then 
            enc_data_i_V_write <= ap_const_logic_1;
        else 
            enc_data_i_V_write <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_i_fu_194_p2 <= "1" when (i1_0_i_i_reg_175 = block_cfg_n_read_reg_210) else "0";
    i_fu_199_p2 <= std_logic_vector(unsigned(i1_0_i_i_reg_175) + unsigned(ap_const_lv32_1));
end behav;
