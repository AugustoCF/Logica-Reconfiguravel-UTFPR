library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Relogio_com_Alarme is
    Port ( 
        clk : in STD_LOGIC;               -- Sinal de clock (sincronização)
        reset : in STD_LOGIC;             -- Sinal de reset
        btn_segundo : in STD_LOGIC;       -- Switch para incrementar 1 segundo
        btn_minuto : in STD_LOGIC;        -- Switch para incrementar 1 minuto
        btn_hora : in STD_LOGIC;          -- Switch para incrementar 1 hora
        btn_config_alarme : in STD_LOGIC; -- Switch para entrar no modo de configuração do alarme
        btn_confirmar : in STD_LOGIC;     -- Switch para confirmar o horário do alarme
        btn_desligar_alarme : in STD_LOGIC; -- Switch para desligar o alarme
		  
        segundos_dezena : out STD_LOGIC_VECTOR(3 downto 0);  -- Dezena dos segundos (0 a 5)
        segundos_unidade : out STD_LOGIC_VECTOR(3 downto 0);  -- Unidade dos segundos (0 a 9)
        minutos_dezena : out STD_LOGIC_VECTOR(3 downto 0);   -- Dezena dos minutos (0 a 5)
        minutos_unidade : out STD_LOGIC_VECTOR(3 downto 0);  -- Unidade dos minutos (0 a 9)
        horas_dezena : out STD_LOGIC_VECTOR(3 downto 0);     -- Dezena das horas (0 a 2)
        horas_unidade : out STD_LOGIC_VECTOR(3 downto 0);    -- Unidade das horas (0 a 9)
		  
        alarme_ativado : out STD_LOGIC;                      -- Sinal que indica se o alarme está ativado
        modo_config_alarme_led : out STD_LOGIC;              -- LED para indicar o modo de configuração do alarme
        leds_alarme : out STD_LOGIC_VECTOR(7 downto 0)       -- 8 LEDs para piscar quando o alarme tocar
    );
end Relogio_com_Alarme;

architecture Behavioral of Relogio_com_Alarme is
    signal contador_segundos : integer range 0 to 59 := 0;
    signal contador_minutos : integer range 0 to 59 := 0;
    signal contador_horas : integer range 0 to 23 := 0;

    signal alarme_segundos : integer range 0 to 59 := 0;
    signal alarme_minutos : integer range 0 to 59 := 0;
    signal alarme_horas : integer range 0 to 23 := 0;

    signal modo_config_alarme : STD_LOGIC := '0';  -- Modo de configuração do alarme
    signal alarme_ativado_reg : STD_LOGIC := '0';  -- Registro para o estado do alarme
    signal alarme_tocando : STD_LOGIC := '0';      -- Sinal que indica se o alarme está tocando
    signal leds_state : STD_LOGIC := '0';          -- Estado dos LEDs (0 = apagados, 1 = acesos)
    signal contador_piscar : integer := 0;         -- Contador para controlar o piscar dos LEDs
    constant CLOCK_DIVIDER_PISCAR : integer := 1;  -- Divisor de clock para piscar os LEDs (ajuste conforme necessário)
begin

    process(clk, reset)
    begin
        if reset = '1' then
            -- Reinicia todos os contadores e o alarme
            contador_segundos <= 0;
            contador_minutos <= 0;
            contador_horas <= 0;
            alarme_segundos <= 0;
            alarme_minutos <= 0;
            alarme_horas <= 0;
            modo_config_alarme <= '0';  -- Garante que o modo de configuração do alarme seja desativado no reset
            alarme_ativado_reg <= '0';
            alarme_tocando <= '0';
            leds_state <= '0';
            contador_piscar <= 0;
        elsif rising_edge(clk) then
            -- Lógica para alternar entre o modo normal e o modo de configuração do alarme
            if btn_config_alarme = '1' then
                modo_config_alarme <= '1';  -- Entra no modo de configuração do alarme
            elsif btn_confirmar = '1' then
                modo_config_alarme <= '0';  -- Sai do modo de configuração do alarme
                alarme_ativado_reg <= '1';  -- Ativa o alarme
            end if;

            -- Lógica para contar o tempo automaticamente (sempre ativa, independente do modo)
            if contador_segundos = 59 then
                contador_segundos <= 0;
                if contador_minutos = 59 then
                    contador_minutos <= 0;
                    if contador_horas = 23 then
                        contador_horas <= 0;
                    else
                        contador_horas <= contador_horas + 1;
                    end if;
                else
                    contador_minutos <= contador_minutos + 1;
                end if;
            else
                contador_segundos <= contador_segundos + 1;
            end if;

            -- Lógica para incrementar tempo com as teclas (funciona em ambos os modos)
            if btn_segundo = '1' then
                if modo_config_alarme = '0' then
                    -- Incrementa os segundos do relógio
                    if contador_segundos = 59 then
                        contador_segundos <= 0;
                        if contador_minutos = 59 then
                            contador_minutos <= 0;
                            if contador_horas = 23 then
                                contador_horas <= 0;
                            else
                                contador_horas <= contador_horas + 1;
                            end if;
                        else
                            contador_minutos <= contador_minutos + 1;
                        end if;
                    else
                        contador_segundos <= contador_segundos + 1;
                    end if;
                else
                    -- Incrementa os segundos do alarme
                    if alarme_segundos = 59 then
                        alarme_segundos <= 0;
                    else
                        alarme_segundos <= alarme_segundos + 1;
                    end if;
                end if;
            end if;

            if btn_minuto = '1' then
                if modo_config_alarme = '0' then
                    -- Incrementa os minutos do relógio
                    if contador_minutos = 59 then
                        contador_minutos <= 0;
                        if contador_horas = 23 then
                            contador_horas <= 0;
                        else
                            contador_horas <= contador_horas + 1;
                        end if;
                    else
                        contador_minutos <= contador_minutos + 1;
                    end if;
                else
                    -- Incrementa os minutos do alarme
                    if alarme_minutos = 59 then
                        alarme_minutos <= 0;
                    else
                        alarme_minutos <= alarme_minutos + 1;
                    end if;
                end if;
            end if;

            if btn_hora = '1' then
                if modo_config_alarme = '0' then
                    -- Incrementa as horas do relógio
                    if contador_horas = 23 then
                        contador_horas <= 0;
                    else
                        contador_horas <= contador_horas + 1;
                    end if;
                else
                    -- Incrementa as horas do alarme
                    if alarme_horas = 23 then
                        alarme_horas <= 0;
                    else
                        alarme_horas <= alarme_horas + 1;
                    end if;
                end if;
            end if;

            -- Lógica para ativar o alarme
            if alarme_ativado_reg = '1' and contador_horas = alarme_horas and contador_minutos = alarme_minutos and contador_segundos = alarme_segundos then
                alarme_tocando <= '1';  -- Ativa o piscar dos LEDs
            end if;

            -- Lógica para desligar o alarme
            if btn_desligar_alarme = '1' then
                alarme_tocando <= '0';  -- Desativa o piscar dos LEDs
                alarme_ativado_reg <= '0';  -- Desativa o alarme
            end if;

            -- Lógica para piscar os LEDs
            if alarme_tocando = '1' then
                if contador_piscar = CLOCK_DIVIDER_PISCAR - 1 then
                    contador_piscar <= 0;
                    leds_state <= not leds_state;  -- Alterna o estado dos LEDs
                else
                    contador_piscar <= contador_piscar + 1;
                end if;
            else
                leds_state <= '0';  -- Mantém os LEDs apagados
            end if;
        end if;
    end process;

    -- Seleciona as saídas com base no modo de operação
    segundos_dezena <= conv_std_logic_vector(alarme_segundos / 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_segundos / 10, 4);
    segundos_unidade <= conv_std_logic_vector(alarme_segundos mod 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_segundos mod 10, 4);
    minutos_dezena <= conv_std_logic_vector(alarme_minutos / 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_minutos / 10, 4);
    minutos_unidade <= conv_std_logic_vector(alarme_minutos mod 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_minutos mod 10, 4);
    horas_dezena <= conv_std_logic_vector(alarme_horas / 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_horas / 10, 4);
    horas_unidade <= conv_std_logic_vector(alarme_horas mod 10, 4) when modo_config_alarme = '1' else conv_std_logic_vector(contador_horas mod 10, 4);

    -- Saída do estado do alarme
    alarme_ativado <= alarme_ativado_reg;

    -- Saída para o LED que indica o modo de configuração do alarme
    modo_config_alarme_led <= modo_config_alarme;

    -- Saída para os LEDs do alarme
    leds_alarme <= (others => leds_state) when alarme_tocando = '1' else (others => '0');

end Behavioral;