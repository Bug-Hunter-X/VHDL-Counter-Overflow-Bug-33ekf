```vhdl
entity counter_fixed is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15;
           overflow : out STD_LOGIC);
end entity;

architecture behavioral of counter_fixed is
    signal s_count : INTEGER range 0 to 15 := 0;
begin
    process (clk, rst)
    begin
        if rst = '1' then
            s_count <= 0;
            overflow <= '0';
        elsif rising_edge(clk) then
            if s_count = 15 then
                overflow <= '1';
                s_count <= 15;  -- Or any other desired overflow behavior
            else
                s_count <= s_count + 1;
                overflow <= '0';
            end if;
        end if;
    end process;
    count <= s_count;
end architecture;
```