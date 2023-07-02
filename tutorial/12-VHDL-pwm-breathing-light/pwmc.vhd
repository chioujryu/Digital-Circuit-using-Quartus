library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pwmc is
    generic(
        p_dw:integer:=8
        );
    port(
        pwmc_i_clk        :in std_logic;
        pwmc_i_rstn        :in std_logic;
        pwmc_i_enable    :in std_logic;
        pwmc_i_offt        :in std_logic_vector((p_dw-1) downto 0);
        pwmc_i_period    :in std_logic_vector((p_dw-1) downto 0);
        pwmc_o_pwmop    :out std_logic);
end entity pwmc;

architecture rtl of pwmc is

    type grafcet is (x0, x1, x2);
    signal w_next_state : grafcet;
    signal r_curr_state : grafcet;

    signal w_cntr : std_logic_vector((p_dw-1) downto 0);
    signal r_cntr : std_logic_vector((p_dw-1) downto 0);
    
    signal w_pwmbuf : std_logic;
    signal r_pwmbuf : std_logic;
    
begin
    
    gstate: process(pwmc_i_clk, pwmc_i_rstn)
    begin
        if pwmc_i_rstn = '0' then
            r_curr_state <= x0;
        elsif rising_edge(pwmc_i_clk) then
            r_curr_state <= w_next_state;
        end if;
    end process;
    
    control_path: process(r_curr_state, pwmc_i_enable, r_cntr, pwmc_i_offt, pwmc_i_period)
    begin
        case r_curr_state is
            when x0 =>
                if pwmc_i_enable = '1' then
                    w_next_state <= x1;
                else
                    w_next_state <= x0;
                end if;
            when x1 =>
                if r_cntr = pwmc_i_offt then
                    w_next_state <= x2;
                else
                    w_next_state <= x1;
                end if;
            when x2 =>
                if r_cntr = pwmc_i_period then
                    if pwmc_i_enable = '1' then
                        w_next_state <= x1;
                    else
                        w_next_state <= x0;
                    end if;
                else
                    w_next_state <= x2;
                end if;
        end case;
    end process;
	 data_path: process(r_curr_state, r_cntr, pwmc_i_offt, pwmc_i_period)
    begin
        case r_curr_state is
            when x0 =>
                w_cntr <= (others => '0');
                w_pwmbuf <= '0';
            when x1 =>
                w_cntr <= r_cntr + '1';
                w_pwmbuf <= '0';
            when x2 =>
                if r_cntr = pwmc_i_period then
                    w_cntr <= (others => '0');
                else
                    w_cntr <= r_cntr + '1';
                end if;
                w_pwmbuf <= '1';
        end case;
    end process;
    
    outbuf_path: process(pwmc_i_clk, pwmc_i_rstn)
    begin
        if pwmc_i_rstn = '0' then
            r_cntr <= (others => '0');
            r_pwmbuf <= '0';
        elsif rising_edge(pwmc_i_clk) then
            r_cntr <= w_cntr;
            r_pwmbuf <= w_pwmbuf;
        end if;
    end process;
    
    pwmc_o_pwmop <= r_pwmbuf;
    
end rtl;
