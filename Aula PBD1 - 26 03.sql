-- Active: 1709645286171@@127.0.0.1@5432@Aula PBD1 - 26 03
--1)
DO $$
DECLARE
n1 INTEGER;
BEGIN
n1 := floor(random() * 100 + 1)::int;
RAISE NOTICE '%', n1;
END $$;


--2)
DO $$
DECLARE
n2 NUMERIC (10, 1);
BEGIN
n2 := random() * 10 + 1;
RAISE NOTICE '%', n2;
END $$;


--3)
DO $$
DECLARE
    TC NUMERIC(5, 2);
    TF NUMERIC(5, 2);
BEGIN
    -- Gerar um número real no intervalo [20, 30]
    TC := random() * 10 + 20;
    RAISE NOTICE 'Temperatura em Celsius: %', TC;
    
    -- Converter para Fahrenheit
    TF := TC * 9 / 5 + 32;
    RAISE NOTICE 'Temperatura em Fahrenheit: %', TF;
END $$;


--4)

DO $$
DECLARE
a1 NUMERIC (5, 2);
b1 NUMERIC (5, 2);
c1 NUMERIC (5, 2);
delta NUMERIC (5, 2);
BEGIN
a1 := random() * 10 + 1;
RAISE NOTICE '%', a1;
b1 := random() * 10 + 1;
RAISE NOTICE '%', b1;
c1 := random() * 10 + 1;
RAISE NOTICE '%', c1;
delta := (b1 * b1) - (4	* a1 * c1);
RAISE NOTICE '%', delta;
END $$;

--5)
DO $$
DECLARE
n1 INTEGER;
ant INTEGER; 
suc INTEGER;
a1 NUMERIC (2, 5);
a2 NUMERIC (2, 5);

BEGIN
n1 := floor(random() * 100 + 1)::int;
RAISE NOTICE '%', n1;
--antecessor
ant := (n1 - 1);
RAISE NOTICE '||/ % = %', ant, ||/ ant;
--sucessor
suc := (n1 + 1);
RAISE NOTICE '|/ % = %', suc, |/ suc;
END $$;


--6)
DO $$
DECLARE	
valor NUMERIC (5, 2);
x NUMERIC (5, 2);
y NUMERIC (5, 2);
area NUMERIC (5, 2);
valor_area NUMERIC (10, 1);

BEGIN
--lado x
x := random() * 10 + 1;
RAISE NOTICE 'lado x: %', x;
--lado y
y := random() * 10 + 1;
RAISE NOTICE 'lado y: %', y;
-- Gerar um número real no intervalo [60, 70]
valor := random() * 10 + 60;
RAISE NOTICE 'valor: %', valor;
--Area
area := x * y;
RAISE NOTICE 'area: %', area;
valor_area := area * valor;
RAISE NOTICE 'valor total da area por m2: %', valor_area;
END $$;


-- 7)
DO $$
DECLARE	
ano_nascto INTEGER;
ano_atual INTEGER;
idade INTEGER;
BEGIN
-- Gerar ano de nascimento [1980, 2000]
ano_nascto := random() * 20 + 1980;
RAISE NOTICE 'ano nascto: %', ano_nascto;

-- Gerar ano atual [2010, 2020]
ano_atual := random() * 10 + 2010;
RAISE NOTICE 'ano atual: %', ano_atual;

-- Idade Atual
idade := ano_atual - ano_nascto;
RAISE NOTICE 'idade: %', idade;

END $$;


DO $$
DECLARE
n1 NUMERIC (5, 2);
n2 INTEGER;
limite_inferior INTEGER := 5;
limite_superior INTEGER := 17;
BEGIN
-- 0 <= n1 < 1 (real)
n1 := random();
RAISE NOTICE '%', n1;
-- 1 <= n1 < 10 (real)
n1 := random() * 10 + 1;
RAISE NOTICE '%', n1;
-- 1 <= n2 <10 (:: faz type cast) (floor arredonda para baixo)
n2 := floor(random() * 10 + 1)::int;
RAISE NOTICE '%', n2;
-- limite_inferior <= n2 <= limite_superior
n2 := floor(random() * (limite_superior - limite_inferior + 1) +
limite_inferior)::int;
RAISE NOTICE '%', n2;
END $$;

