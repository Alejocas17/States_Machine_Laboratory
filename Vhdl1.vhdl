

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is
	Port (
		inicio: in std_logic;
		ck: in std_logic;
		x: in std_logic;
		z0: out std_logic;
		z1: out std_logic
		);
end fsm;

architecture behavioral of fsm is

type nombres_estados is (Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10);
signal estado: nombres_estados;
signal entrada_aux: std_logic;

begin

entrada_aux<=x;

process(inicio, ck)
begin
if inicio='1' then
	estado<=Q0;
elsif ck='1' and ck'event then
	case estado is
		when Q0 =>
			case entrada_aux is
				when '0' => estado<=Q0;
				when '1' => estado<=Q2;
				when others => estado<=Q0;
			end case;
		when Q1 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q3;
				when others => estado<=Q0;
			end case;
		when Q2 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q4;
				when others => estado<=Q0;
			end case;
		when Q3 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q9;
				when others => estado<=Q0;
			end case;
		when Q4 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q5;
				when others => estado<=Q0;
			end case;
		when Q5 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when '1' => estado<=Q5;
				when others => estado<=Q0;
			end case;
		when Q6 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when '1' => estado<=Q7;
				when others => estado<=Q0;
			end case;
		when Q7 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when others => estado<=Q0;
			end case;
		when Q8 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q10;
				when others => estado<=Q0;
			end case;
		when Q9 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q10;
				when others => estado<=Q0;
			end case;
		when Q10 =>
			case entrada_aux is
				when others => estado<=Q0;
			end case;
		when others => estado<=Q0;
	end case;
end if;
end process;

process(estado, entrada_aux)
begin
case estado is
	when Q0 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q1 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q2 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q3 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q4 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q5 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q6 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
			when '1' =>
				z0<='0';
				z1<='1';
		end case;
	when Q7 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
		end case;
	when Q8 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='1';
				z1<='0';
		end case;
	when Q9 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='1';
				z1<='0';
		end case;
	when Q10 =>
		case entrada_aux is
		end case;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is
	Port (
		inicio: in std_logic;
		ck: in std_logic;
		x: in std_logic;
		z0: out std_logic;
		z1: out std_logic
		);
end fsm;

architecture behavioral of fsm is

type nombres_estados is (Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10);
signal estado: nombres_estados;
signal entrada_aux: std_logic;

begin

entrada_aux<=x;

process(inicio, ck)
begin
if inicio='1' then
	estado<=Q0;
elsif ck='1' and ck'event then
	case estado is
		when Q0 =>
			case entrada_aux is
				when '0' => estado<=Q0;
				when '1' => estado<=Q2;
				when others => estado<=Q0;
			end case;
		when Q1 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q3;
				when others => estado<=Q0;
			end case;
		when Q2 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q4;
				when others => estado<=Q0;
			end case;
		when Q3 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q9;
				when others => estado<=Q0;
			end case;
		when Q4 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q5;
				when others => estado<=Q0;
			end case;
		when Q5 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when '1' => estado<=Q5;
				when others => estado<=Q0;
			end case;
		when Q6 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when '1' => estado<=Q7;
				when others => estado<=Q0;
			end case;
		when Q7 =>
			case entrada_aux is
				when '0' => estado<=Q6;
				when others => estado<=Q0;
			end case;
		when Q8 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q10;
				when others => estado<=Q0;
			end case;
		when Q9 =>
			case entrada_aux is
				when '0' => estado<=Q1;
				when '1' => estado<=Q10;
				when others => estado<=Q0;
			end case;
		when Q10 =>
			case entrada_aux is
				when others => estado<=Q0;
			end case;
		when others => estado<=Q0;
	end case;
end if;
end process;

process(estado, entrada_aux)
begin
case estado is
	when Q0 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q1 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q2 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q3 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q4 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q5 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
			when '1' =>
				z0<='0';
				z1<='0';
		end case;
	when Q6 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
			when '1' =>
				z0<='0';
				z1<='1';
		end case;
	when Q7 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='1';
		end case;
	when Q8 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='1';
				z1<='0';
		end case;
	when Q9 =>
		case entrada_aux is
			when '0' =>
				z0<='0';
				z1<='0';
			when '1' =>
				z0<='1';
				z1<='0';
		end case;
	when Q10 =>
		case entrada_aux is
		end case;
end case;
end process;

end behavioral;

end process;

end behavioral;