```vhdl
entity counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15 );
end entity;

architecture behavioral of counter is
    signal s_count : INTEGER range 0 to 15 := 0;
begin
    process (clk, rst)
    begin
        if rst = '1' then
            s_count <= 0;
        elsif rising_edge(clk) then
            s_count <= s_count + 1;
        end if;
    end process;
    count <= s_count;
end architecture;
```