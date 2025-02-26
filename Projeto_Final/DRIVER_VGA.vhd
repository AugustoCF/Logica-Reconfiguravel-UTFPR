library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_time_display is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        -- Entradas de tempo (dígitos em BCD)
        H_tens      : in  std_logic_vector(3 downto 0);
        H_units     : in  std_logic_vector(3 downto 0);
        M_tens      : in  std_logic_vector(3 downto 0);
        M_units     : in  std_logic_vector(3 downto 0);
        S_tens      : in  std_logic_vector(3 downto 0);
        S_units     : in  std_logic_vector(3 downto 0);
        -- Indicadores de alarme
        alarm_active: in  std_logic;
        alarm_mode  : in  std_logic;
        alarm_set   : in  std_logic;
        -- Saídas VGA
        VGA_HS      : out std_logic;
        VGA_VS      : out std_logic;
        VGA_RED     : out std_logic_vector(3 downto 0);
        VGA_GREEN   : out std_logic_vector(3 downto 0);
        VGA_BLUE    : out std_logic_vector(3 downto 0)
    );
end vga_time_display;

architecture behavioral of vga_time_display is

    ----------------------------------------------------------------------------
    -- Componente do driver VGA
    ----------------------------------------------------------------------------
    component VGA_drvr is
        port(
            i_vid_clk      : in  std_logic;
            i_rstb         : in  std_logic;
            o_h_sync       : out std_logic;
            o_v_sync       : out std_logic;
            o_pixel_x      : out std_logic_vector(9 downto 0);
            o_pixel_y      : out std_logic_vector(9 downto 0);
            o_vid_display  : out std_logic;
            i_red_in       : in  std_logic_vector(3 downto 0);
            i_green_in     : in  std_logic_vector(3 downto 0);
            i_blue_in      : in  std_logic_vector(3 downto 0);
            o_red_out      : out std_logic_vector(3 downto 0);
            o_green_out    : out std_logic_vector(3 downto 0);
            o_blue_out     : out std_logic_vector(3 downto 0)
        );
    end component;

    ----------------------------------------------------------------------------
    -- Codificação dos dígitos em 7-segmentos (segmentos A-G)
    ----------------------------------------------------------------------------
    type seg7 is array (0 to 9) of std_logic_vector(6 downto 0);
    constant SEGMENT_CODES : seg7 := (
        "1111110", -- 0
        "0110000", -- 1
        "1101101", -- 2
        "1111001", -- 3
        "0110011", -- 4
        "1011011", -- 5
        "1011111", -- 6
        "1110000", -- 7
        "1111111", -- 8
        "1111011"  -- 9
    );

    ----------------------------------------------------------------------------
    -- Sinais internos
    ----------------------------------------------------------------------------
    signal pixel_x    : std_logic_vector(9 downto 0);
    signal pixel_y    : std_logic_vector(9 downto 0);
    signal display_on : std_logic;
    signal rgb_in     : std_logic_vector(11 downto 0);
    signal blink      : std_logic := '0';
    signal counter    : integer := 0;

    ----------------------------------------------------------------------------
    -- Constantes para centralização do relógio na tela (resolução 640x480)
    ----------------------------------------------------------------------------
    constant SCREEN_WIDTH   : integer := 640;
    constant SCREEN_HEIGHT  : integer := 480;
    constant DIGIT_WIDTH    : integer := 40;
    constant DIGIT_HEIGHT   : integer := 75;
    constant DIGIT_SPACING  : integer := 10;
    constant TOTAL_WIDTH    : integer := (6 * DIGIT_WIDTH) + (2 * DIGIT_SPACING) + 40;
    constant START_X        : integer := (SCREEN_WIDTH - TOTAL_WIDTH) / 2;
    constant START_Y        : integer := (SCREEN_HEIGHT - DIGIT_HEIGHT) / 2;

begin

    ----------------------------------------------------------------------------
    -- Instância do driver VGA
    ----------------------------------------------------------------------------
    vga_driver: VGA_drvr
        port map(
            i_vid_clk     => clk,
            i_rstb        => reset,
            o_h_sync      => VGA_HS,
            o_v_sync      => VGA_VS,
            o_pixel_x     => pixel_x,
            o_pixel_y     => pixel_y,
            o_vid_display => display_on,
            i_red_in      => rgb_in(11 downto 8),
            i_green_in    => rgb_in(7 downto 4),
            i_blue_in     => rgb_in(3 downto 0),
            o_red_out     => VGA_RED,
            o_green_out   => VGA_GREEN,
            o_blue_out    => VGA_BLUE
        );

    ----------------------------------------------------------------------------
    -- Processo para gerar o sinal de piscar (blink) do alarme
    ----------------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '0' then
            counter <= 0;
            blink <= '0';
        elsif rising_edge(clk) then
            counter <= counter + 1;
            if counter = 25000000 then 
                blink <= not blink;
                counter <= 0;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Desenho do relógio (dígitos, separadores e indicadores)
    ----------------------------------------------------------------------------
    process(clk, reset)
        variable x      : integer;
        variable y      : integer;
        variable color  : std_logic_vector(11 downto 0);
        variable seg    : std_logic_vector(6 downto 0);
        variable pos_x  : integer;
        variable pos_y  : integer;
        variable digit  : std_logic_vector(3 downto 0);
    begin
        if reset = '0' then
            rgb_in <= (others => '0');
        elsif rising_edge(clk) then
            x := to_integer(unsigned(pixel_x));
            y := to_integer(unsigned(pixel_y));

            ----------------------------------------------------------------------------
            -- Definir a cor de fundo: se o alarme estiver ativo e blink = '1', fundo vermelho; caso contrário, fundo preto.
            ----------------------------------------------------------------------------
            if alarm_active = '1' and blink = '1' then
                color := x"F00";  -- Fundo vermelho piscante
            else
                color := x"000";  -- Fundo preto
            end if;

            ----------------------------------------------------------------------------
            -- Desenhar os dígitos do relógio
            ----------------------------------------------------------------------------
            for i in 0 to 5 loop
                case i is
                    when 0 =>
                        pos_x := START_X;
                        digit := H_tens;
                    when 1 =>
                        pos_x := START_X + DIGIT_WIDTH + DIGIT_SPACING;
                        digit := H_units;
                    when 2 =>
                        pos_x := START_X + 2*(DIGIT_WIDTH + DIGIT_SPACING) + 20;
                        digit := M_tens;
                    when 3 =>
                        pos_x := START_X + 3*(DIGIT_WIDTH + DIGIT_SPACING) + 20;
                        digit := M_units;
                    when 4 =>
                        pos_x := START_X + 4*(DIGIT_WIDTH + DIGIT_SPACING) + 40;
                        digit := S_tens;
                    when others =>
                        pos_x := START_X + 5*(DIGIT_WIDTH + DIGIT_SPACING) + 40;
                        digit := S_units;
                end case;
                pos_y := START_Y;
                
                -- Se o pixel estiver dentro da área do dígito :
                if (x >= pos_x) and (x < pos_x + DIGIT_WIDTH) and
                   (y >= pos_y) and (y < pos_y + DIGIT_HEIGHT) then
                    seg := SEGMENT_CODES(to_integer(unsigned(digit)));
                    -- Verificar cada segmento do dígito e desenhá-lo se ativo
                    if (seg(6) = '1' and y < pos_y + 5) or 
                       (seg(5) = '1' and x >= pos_x + 35 and y < pos_y + 35) or 
                       (seg(4) = '1' and x >= pos_x + 35 and y >= pos_y + 40) or 
                       (seg(3) = '1' and y >= pos_y + 70) or 
                       (seg(2) = '1' and x < pos_x + 5 and y >= pos_y + 40) or 
                       (seg(1) = '1' and x < pos_x + 5 and y < pos_y + 35) or 
                       (seg(0) = '1' and y >= pos_y + 35 and y < pos_y + 40) then 
                        -- Se o modo alarme estiver ativo, desenha em verde; caso contrário, branco
                        if alarm_mode = '1' then
                            color := x"0F0";
                        else
                            color := x"FFF";
                        end if;
                    end if;
                end if;
            end loop;

            ----------------------------------------------------------------------------
            -- Desenhar os pontos separadores (:) entre os dígitos de hora, minuto e segundo
            ----------------------------------------------------------------------------
            if ((x >= START_X + 2*(DIGIT_WIDTH + DIGIT_SPACING) + 5) and 
                (x < START_X + 2*(DIGIT_WIDTH + DIGIT_SPACING) + 10) and
                ((y >= START_Y + 25 and y < START_Y + 30) or 
                 (y >= START_Y + 50 and y < START_Y + 55))) or
               ((x >= START_X + 4*(DIGIT_WIDTH + DIGIT_SPACING) + 20) and 
                (x < START_X + 4*(DIGIT_WIDTH + DIGIT_SPACING) + 25) and
                ((y >= START_Y + 25 and y < START_Y + 30) or 
                 (y >= START_Y + 50 and y < START_Y + 55))) then
                color := x"FFF";
            end if;

            ----------------------------------------------------------------------------
            -- Indicador de alarme configurado
            ----------------------------------------------------------------------------
            if alarm_set = '1' then
					if (x >= START_X) and (x < START_X + 6*(DIGIT_WIDTH + DIGIT_SPACING) + 10) and
						(y >= START_Y + DIGIT_HEIGHT + 5) and (y < START_Y + DIGIT_HEIGHT + 7) then
						 color := x"FF0";
					end if;
				end if;

            rgb_in <= color;
        end if;
    end process;

end behavioral;
