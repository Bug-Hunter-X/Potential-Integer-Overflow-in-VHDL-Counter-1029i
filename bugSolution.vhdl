```vhdl
ENTITY counter IS
    GENERIC (max_count : INTEGER := 1023);
    PORT (clk : IN  STD_LOGIC;
          rst : IN  STD_LOGIC;
          count : OUT INTEGER RANGE 0 TO max_count);
END ENTITY counter;

ARCHITECTURE behavioral OF counter IS
    SIGNAL internal_count : INTEGER RANGE 0 TO max_count := 0;
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            internal_count <= 0;
        ELSIF rising_edge(clk) THEN
            IF internal_count = max_count THEN
                internal_count <= 0; 
            ELSE
                internal_count <= internal_count + 1;
            END IF;
        END IF;
    END PROCESS;
    count <= internal_count;
END ARCHITECTURE behavioral;
```