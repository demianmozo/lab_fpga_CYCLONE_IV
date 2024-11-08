# Guia N°5: Dispositivos lógicos programables.

1. La principal diferencia entre una PAL y una GAL es: que usa tecnología EECMOS o $E^2CMOS$ (CMOS Electric Erasable). Se pueden reprogramar al menos 100 veces.
2. Conteste V o F:

- (F) Los ASICs (se refiere a ASICs como la clasificación, no especificamente a los Full Custom) poseen arquitecturas con conexiones fijas.
- (V) Un ASICs Full Custom está pensado para el desarrollo de un diseño en particular a gran escala.
- (F) Un ASICs Full Custom se utiliza para el diseño de prototipos.
- (V) Los Microprocesadores poseen arquitecturas fijas que no pueden reconfigurarse.
- (V) Un ASICs Full Custom es un circuito prediseñado en el cual el usuario establece las conexiones.
- (V) Las FPGA son configuradas por el usuario.
- (V) Las FPGA son muy utilizadas para pruebas y desarrollo de prototipos.
- (F) El consumo de potencia es mucho menor en las FPGA que en los circuitos Full-Custom.
- (F) Un microcontrolador (con las mismas características) implementado dentro de una FPGA es más rápido que un microcontrolador dedicado.

3. Construya en VHDL la arquitectura de un Sumador Completo.

a) Con procesos:

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity SUMADOR_COMPLETO is
    port (
        A    : in  bit;  
        B    : in  bit;  
        Cin  : in  bit;  
        Sum  : out bit;  
        Cout : out bit   
    );
end SUMADOR_COMPLETO;

architecture Behavioral of SUMADOR_COMPLETO is
begin
    process(A, B, Cin)
    begin
        -- Evaluación de todas las combinaciones de A, B, Cin
        if (A = '0' and B = '0' and Cin = '0') then
            Sum  <= '0';
            Cout <= '0';
        elsif (A = '0' and B = '0' and Cin = '1') then
            Sum  <= '1';
            Cout <= '0';
        elsif (A = '0' and B = '1' and Cin = '0') then
            Sum  <= '1';
            Cout <= '0';
        elsif (A = '0' and B = '1' and Cin = '1') then
            Sum  <= '0';
            Cout <= '1';
        elsif (A = '1' and B = '0' and Cin = '0') then
            Sum  <= '1';
            Cout <= '0';
        elsif (A = '1' and B = '0' and Cin = '1') then
            Sum  <= '0';
            Cout <= '1';
        elsif (A = '1' and B = '1' and Cin = '0') then
            Sum  <= '0';
            Cout <= '1';
        elsif (A = '1' and B = '1' and Cin = '1') then
            Sum  <= '1';
            Cout <= '1';
        end if;
    end process;
end Behavioral;
```



b) Sin procesos:

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity SUMADOR_COMPLETO is
    port (
        A    : in  bit;  
        B    : in  bit;  
        Cin  : in  bit;  
        Sum  : out bit;  
        Cout : out bit   
    );
end SUMADOR_COMPLETO;

architecture Behavioral of SUMADOR_COMPLETO is
begin
    Sum  <= A xor B xor Cin;
    Cout <= (A and B) or (A and Cin) or (B and Cin);
end Behavioral;
```
4. ¿Qué se sintetiza a partir de los siguientes códigos VHDL? construya la tabla de verdad para cada caso:

   a)  Es un MUX de 4 entradas (4 bits c/u).

   | Sel1 (2) | Out (4) |
   | -------- | ------- |
   | 00       | 0000    |
   | 01       | a       |
   | 10       | b       |
   | 11       | c       |

   b) Es un Tri-State Buffer.

   | Op   | Out     |
   | ---- | ------- |
   | 0    | High Z  |
   | 1    | Entrada |



5. ¿Cuáles son los tres tipos de elementos programables que posee una FPGA? ¿Qué funciones cumplen? ¿Cuáles son los componentes básicos de un bloque lógico de una FPGA?

   - **Interconexiones programables**.

   - **Bloques de lógica programable** donde se implementan los circuitos lógicos. También contienen registros programables. Estan compuestos por elementos lógicos (LE), celdas lógicas (LC) o SLICEs, que a su vez estan integrados por:
     - Multiplexor
     - Registro
     - Look up Table (LUT)
     - Lógica de acarreo
   - **Bloques de Entrada/Salida configurables (IOB, Input/Output Blocks)**: donde se conectan las configuraciones internas con pines de entrada y salida.

6. ¿Qué es un lenguaje de descripción de hardware y en qué se diferencia con los lenguajes de programación?

   ● Un lenguaje de descripción de hardware (HDL ) define la estructura, diseño y operación de circuitos electrónicos digitales, describe procesos que ocurren en **paralelo** y permite describir un sistema como la interconexión de componentes. En cambio los lenguajes de programación se usan para escribir software, es decir, programas que son ejecutados por un microprocesador en un entorno **secuencial**.

7. A partir de la siguiente arquitectura determine: cuántas entradas y salidas tendrá la entidad ¿Qué se sintetiza?

   ● La entidad tendrá 3 entradas y 8 salidas. Se sintetiza un deco de 3 bits a 8 bits.

8. A partir de la siguiente entidad:

   a) Realice un esquema de la entidad. 

   ​     👍

   b) Conteste ¿El circuito que se sintetiza es sincrónico o combinacional? Justifique.

      ● A pesar de que se use un proceso y parezca un sistema secuencial, lo que se implemente es un circuito puramente combinacional, ya que la comparación se realiza instantaneamente, haciendo todas las comparaciones en simultaneo, sin ningún elemento de memoria o señal de clock. 

   c) Conteste ¿A qué frecuencia máxima podrá operar el circuito? ¿Cómo podría incrementarlo? Explique ventajas y desventajas de aplicar la solución sugerida.

      ● La frecuencia maxima de operacion dependera del tiempo que tarden en leerse los datos de la RAM y del retardo de los bloques combinacionales en cascada utilizados (comparador + OR gigante). Para mejorar esto, podemos precargar los datos en la FPGA para no tener que realizar la lectura de la memoria. El problema de esto es que deberemos programar la placa cada vez que cambien los datos de la memoria.

   d) Conteste ¿Qué tamaño deberá tener la memoria RAM donde se sintetiza la tabla?

      ● Son 100 vectores de 8 bits cada uno, es decir que el arreglo (RAM) tendra un tamaño de 800 bits.