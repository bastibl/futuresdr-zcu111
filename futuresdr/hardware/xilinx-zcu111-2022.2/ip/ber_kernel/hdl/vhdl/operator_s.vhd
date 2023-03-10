-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity operator_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    mod_type_V : IN STD_LOGIC_VECTOR (1 downto 0);
    sym_M_real_V : IN STD_LOGIC_VECTOR (18 downto 0);
    sym_M_imag_V : IN STD_LOGIC_VECTOR (18 downto 0);
    inv_sigma_sq_V : IN STD_LOGIC_VECTOR (16 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of operator_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter11 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter12 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter13 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter14 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter15 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter16 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter17 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter18 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter19 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_start : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_done : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_idle : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_ready : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_ce : STD_LOGIC;
    signal grp_calc_llr_fu_64_ap_return_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_calc_llr_fu_64_ap_return_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_calc_llr_fu_64_ap_return_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_calc_llr_fu_88_ap_start : STD_LOGIC;
    signal grp_calc_llr_fu_88_ap_done : STD_LOGIC;
    signal grp_calc_llr_fu_88_ap_idle : STD_LOGIC;
    signal grp_calc_llr_fu_88_ap_ready : STD_LOGIC;
    signal grp_calc_llr_fu_88_ap_ce : STD_LOGIC;
    signal grp_calc_llr_fu_88_ap_return_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_calc_llr_fu_88_ap_return_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_calc_llr_fu_88_ap_return_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_grp_calc_llr_fu_64_ap_start : STD_LOGIC;
    signal ap_grp_calc_llr_fu_88_ap_start : STD_LOGIC;
    signal ap_idle_pp0_0to18 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component calc_llr IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_ce : IN STD_LOGIC;
        mod_type_V : IN STD_LOGIC_VECTOR (1 downto 0);
        sym_V : IN STD_LOGIC_VECTOR (18 downto 0);
        inv_sigma_sq_V : IN STD_LOGIC_VECTOR (16 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_calc_llr_fu_64 : component calc_llr
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_calc_llr_fu_64_ap_start,
        ap_done => grp_calc_llr_fu_64_ap_done,
        ap_idle => grp_calc_llr_fu_64_ap_idle,
        ap_ready => grp_calc_llr_fu_64_ap_ready,
        ap_ce => grp_calc_llr_fu_64_ap_ce,
        mod_type_V => mod_type_V,
        sym_V => sym_M_real_V,
        inv_sigma_sq_V => inv_sigma_sq_V,
        ap_return_0 => grp_calc_llr_fu_64_ap_return_0,
        ap_return_1 => grp_calc_llr_fu_64_ap_return_1,
        ap_return_2 => grp_calc_llr_fu_64_ap_return_2);

    grp_calc_llr_fu_88 : component calc_llr
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_calc_llr_fu_88_ap_start,
        ap_done => grp_calc_llr_fu_88_ap_done,
        ap_idle => grp_calc_llr_fu_88_ap_idle,
        ap_ready => grp_calc_llr_fu_88_ap_ready,
        ap_ce => grp_calc_llr_fu_88_ap_ce,
        mod_type_V => mod_type_V,
        sym_V => sym_M_imag_V,
        inv_sigma_sq_V => inv_sigma_sq_V,
        ap_return_0 => grp_calc_llr_fu_88_ap_return_0,
        ap_return_1 => grp_calc_llr_fu_88_ap_return_1,
        ap_return_2 => grp_calc_llr_fu_88_ap_return_2);





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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter11_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter11 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter12_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter12 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter13_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter13 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter14_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter14 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter15_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter15 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter16_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter16 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter17_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter17 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter18_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter18 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter19_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter19 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (ap_ce = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_enable_reg_pp0_iter0, ap_ce, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter19, ap_ce)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or (not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) and (ap_ce = ap_const_logic_1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter19)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_grp_calc_llr_fu_64_ap_start_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_start = ap_const_logic_1))) then 
            ap_grp_calc_llr_fu_64_ap_start <= ap_const_logic_1;
        else 
            ap_grp_calc_llr_fu_64_ap_start <= ap_const_logic_0;
        end if; 
    end process;


    ap_grp_calc_llr_fu_88_ap_start_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_start = ap_const_logic_1))) then 
            ap_grp_calc_llr_fu_88_ap_start <= ap_const_logic_1;
        else 
            ap_grp_calc_llr_fu_88_ap_start <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_idle_pp0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_enable_reg_pp0_iter12, ap_enable_reg_pp0_iter13, ap_enable_reg_pp0_iter14, ap_enable_reg_pp0_iter15, ap_enable_reg_pp0_iter16, ap_enable_reg_pp0_iter17, ap_enable_reg_pp0_iter18, ap_enable_reg_pp0_iter19)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2) and (ap_const_logic_0 = ap_enable_reg_pp0_iter3) and (ap_const_logic_0 = ap_enable_reg_pp0_iter4) and (ap_const_logic_0 = ap_enable_reg_pp0_iter5) and (ap_const_logic_0 = ap_enable_reg_pp0_iter6) and (ap_const_logic_0 = ap_enable_reg_pp0_iter7) and (ap_const_logic_0 = ap_enable_reg_pp0_iter8) and (ap_const_logic_0 = ap_enable_reg_pp0_iter9) and (ap_const_logic_0 = ap_enable_reg_pp0_iter10) and (ap_const_logic_0 = ap_enable_reg_pp0_iter11) and (ap_const_logic_0 = ap_enable_reg_pp0_iter12) and (ap_const_logic_0 = ap_enable_reg_pp0_iter13) and (ap_const_logic_0 = ap_enable_reg_pp0_iter14) and (ap_const_logic_0 = ap_enable_reg_pp0_iter15) and (ap_const_logic_0 = ap_enable_reg_pp0_iter16) and (ap_const_logic_0 = ap_enable_reg_pp0_iter17) and (ap_const_logic_0 = ap_enable_reg_pp0_iter18) and (ap_const_logic_0 = ap_enable_reg_pp0_iter19))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to18_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_enable_reg_pp0_iter12, ap_enable_reg_pp0_iter13, ap_enable_reg_pp0_iter14, ap_enable_reg_pp0_iter15, ap_enable_reg_pp0_iter16, ap_enable_reg_pp0_iter17, ap_enable_reg_pp0_iter18)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2) and (ap_const_logic_0 = ap_enable_reg_pp0_iter3) and (ap_const_logic_0 = ap_enable_reg_pp0_iter4) and (ap_const_logic_0 = ap_enable_reg_pp0_iter5) and (ap_const_logic_0 = ap_enable_reg_pp0_iter6) and (ap_const_logic_0 = ap_enable_reg_pp0_iter7) and (ap_const_logic_0 = ap_enable_reg_pp0_iter8) and (ap_const_logic_0 = ap_enable_reg_pp0_iter9) and (ap_const_logic_0 = ap_enable_reg_pp0_iter10) and (ap_const_logic_0 = ap_enable_reg_pp0_iter11) and (ap_const_logic_0 = ap_enable_reg_pp0_iter12) and (ap_const_logic_0 = ap_enable_reg_pp0_iter13) and (ap_const_logic_0 = ap_enable_reg_pp0_iter14) and (ap_const_logic_0 = ap_enable_reg_pp0_iter15) and (ap_const_logic_0 = ap_enable_reg_pp0_iter16) and (ap_const_logic_0 = ap_enable_reg_pp0_iter17) and (ap_const_logic_0 = ap_enable_reg_pp0_iter18))) then 
            ap_idle_pp0_0to18 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to18 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) and (ap_ce = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to18)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_idle_pp0_0to18))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= grp_calc_llr_fu_64_ap_return_0;
    ap_return_1 <= grp_calc_llr_fu_88_ap_return_0;
    ap_return_2 <= grp_calc_llr_fu_64_ap_return_1;
    ap_return_3 <= grp_calc_llr_fu_88_ap_return_1;
    ap_return_4 <= grp_calc_llr_fu_64_ap_return_2;
    ap_return_5 <= grp_calc_llr_fu_88_ap_return_2;

    grp_calc_llr_fu_64_ap_ce_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) and (ap_const_logic_1 = ap_ce))) then 
            grp_calc_llr_fu_64_ap_ce <= ap_const_logic_1;
        else 
            grp_calc_llr_fu_64_ap_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_calc_llr_fu_64_ap_start_assign_proc : process(ap_grp_calc_llr_fu_64_ap_start)
    begin
        if ((ap_const_logic_1 = ap_grp_calc_llr_fu_64_ap_start)) then 
            grp_calc_llr_fu_64_ap_start <= ap_grp_calc_llr_fu_64_ap_start;
        else 
            grp_calc_llr_fu_64_ap_start <= ap_const_logic_0;
        end if; 
    end process;


    grp_calc_llr_fu_88_ap_ce_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) and (ap_const_logic_1 = ap_ce))) then 
            grp_calc_llr_fu_88_ap_ce <= ap_const_logic_1;
        else 
            grp_calc_llr_fu_88_ap_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_calc_llr_fu_88_ap_start_assign_proc : process(ap_grp_calc_llr_fu_88_ap_start)
    begin
        if ((ap_const_logic_1 = ap_grp_calc_llr_fu_88_ap_start)) then 
            grp_calc_llr_fu_88_ap_start <= ap_grp_calc_llr_fu_88_ap_start;
        else 
            grp_calc_llr_fu_88_ap_start <= ap_const_logic_0;
        end if; 
    end process;

end behav;
