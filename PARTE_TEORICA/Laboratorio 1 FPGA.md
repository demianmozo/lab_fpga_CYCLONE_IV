# Laboratorio 1: FPGA

#### Preguntas teóricas: 

1. Identifique qué elementos constituyen los LEs de la FPGA Cyclone III y qué estructura tienen las LABs. 

   - En la FPGA **Cyclone III**, los **Logic Elements (LEs)** son las unidades básicas de lógica. Cada LE contiene:

     - Una **tabla de búsqueda (LUT)** de 4 entradas, que puede implementar cualquier función lógica de 4 variables.
     - Un **flip-flop** para almacenamiento de estado.
     - Circuitería adicional como multiplexores para manejar la lógica combinacional y secuencial.

     Los LEs se agrupan en **Logic Array Blocks (LABs)**. Cada **LAB** contiene:

     - **10 LEs**, conectados entre sí y con otros LABs a través de una red de interconexión.
     - Una **red local de interconexión** que permite que los LEs dentro de un LAB se conecten fácilmente entre sí.

2. ¿De qué se trata el Nios® II?

   - El **Nios® II** es un procesador **softcore** de 32 bits diseñado por Intel (anteriormente Altera) para ser implementado en FPGAs. Es un procesador flexible y personalizable que se utiliza en aplicaciones embebidas dentro de las FPGA.

     Principales características:

     - **Softcore**: Se implementa como lógica configurable dentro de la FPGA, a diferencia de un procesador físico (hardcore).
     - **Personalizable**: Puedes ajustar su conjunto de instrucciones, periféricos, tamaño de memoria y otros aspectos según los requisitos de la aplicación.
     - **Integración**: Se usa junto con otros bloques de hardware diseñados dentro de la misma FPGA, permitiendo crear sistemas embebidos completos en un único dispositivo.

     Es ideal para tareas como control de sistemas, procesamiento de señales o aplicaciones de tiempo real en plataformas FPGA.

3. ¿Qué diferencia existe entre IP cores y los bloques embebidos (ej multiplicador embebido) disponibles en la FPGA?

   - La diferencia principal entre los **IP cores** y los **bloques embebidos** en una FPGA radica en su implementación y flexibilidad:

     **IP Cores**:

     - Son **módulos de diseño predefinidos** que puedes incorporar en una FPGA. Los IP cores (propiedad intelectual) son bloques de funcionalidad específicos, como controladores de memoria, procesadores (justamente como el Nios II), o interfaces de comunicación, diseñados por fabricantes o terceros.
     - Los **IP cores son configurables y personalizables**, permitiendo ajustarlos a las necesidades del proyecto. Pueden implementarse usando los recursos lógicos generales de la FPGA (como LUTs y flip-flops), pero también pueden aprovechar bloques embebidos si están disponibles.

     **Bloques embebidos**:

     - Son **componentes de hardware dedicados** que ya están físicamente presentes en la FPGA y no son configurables, aunque se pueden utilizar a través del diseño. Estos bloques están optimizados para funciones específicas, como multiplicadores, bloques DSP (procesamiento de señal digital), o bloques de memoria.
     - Al ser recursos dedicados, los **bloques embebidos** ofrecen mayor rendimiento y eficiencia en esas tareas específicas, sin consumir los recursos lógicos generales de la FPGA.
     - Ejemplos: Multiplicadores embebidos, bloques DSP, bloques de memoria RAM.

     En resumen, los **IP cores** son módulos de diseño flexibles y configurables, mientras que los **bloques embebidos** son recursos hardware específicos que ya vienen integrados en la FPGA y ofrecen mayor eficiencia en tareas concretas.

4. ¿Qué tipo de celda de programación posee el dispositivo FPGA Cyclone III?

   - La **FPGA Cyclone III** utiliza **celdas de programación SRAM (memoria de acceso aleatorio estático)**. Estas celdas controlan la configuración de los elementos lógicos y las interconexiones dentro de la FPGA.

     Las celdas de SRAM son **volátiles**, lo que significa que pierden su configuración cuando se apaga el dispositivo, por lo que la FPGA Cyclone III necesita ser reprogramada al encenderse, generalmente desde una memoria externa no volátil como una memoria Flash.

5. Realice la descripción en VHDL de un Flip Flop JK.

   ```vhdl
   library ieee;
   use ieee.std_logic_1164.all;
   
   entity FlipFlop_JK is
       port (
           J   : in  std_logic;     
           K   : in  std_logic;   
           clk : in  std_logic;     
           reset : in std_logic;   
           Q   : out std_logic      
       );
   end FlipFlop_JK;
   
   architecture Behavioral of FlipFlop_JK is
       signal Q_int : std_logic := '0';  -- Señal interna de Q
   begin
       -- Detecto clk
       process (clk, reset)
       begin
           if reset = '1' then  
               Q_int <= '0';
           elsif rising_edge(clk) then  -- flanco ascendente  
               Q_int <= (J and not Q_int) or (not K and Q_int); -- ec. de estado siguiente
           end if;
       end process;
             
       Q <= Q_int;  -- Asigno salida Q
   end Behavioral;
   ```

6. Realice la descripción en VHDL de un sumador completo de un bit (mismo que la guía).

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

7. Realice la descripción en VHDL del test bench del sumador completo de un bit.

   ```vhdl
   library ieee;
   use ieee.std_logic_1164.all;
   
   entity tb_SUMADOR_COMPLETO is
   end tb_SUMADOR_COMPLETO;
   
   architecture testbench of tb_SUMADOR_COMPLETO is
       -- Component Declaration
       component SUMADOR_COMPLETO
           port (
               A    : in  bit;
               B    : in  bit;
               Cin  : in  bit;
               Sum  : out bit;
               Cout : out bit
           );
       end component;
   
       -- Signals for testing
       signal A    : bit;
       signal B    : bit;
       signal Cin  : bit;
       signal Sum  : bit;
       signal Cout : bit;
   
   begin
       -- Instantiate the Unit Under Test (UUT)
       UUT: SUMADOR_COMPLETO
           port map (
               A => A,
               B => B,
               Cin => Cin,
               Sum => Sum,
               Cout => Cout
           );
   
       -- Stimulus process
       stimulus: process
       begin
           -- Caso 1
           A <= '0';
           B <= '0';
           Cin <= '0';
           wait for 10 ns;
   
           -- Caso 2
           A <= '0';
           B <= '0';
           Cin <= '1';
           wait for 10 ns;
   
           -- Caso 3
           A <= '0';
           B <= '1';
           Cin <= '0';
           wait for 10 ns;
   
           -- Caso 4
           A <= '0';
           B <= '1';
           Cin <= '1';
           wait for 10 ns;
   
           -- caso 5
           A <= '1';
           B <= '0';
           Cin <= '0';
           wait for 10 ns;
   
           -- Caso 6
           A <= '1';
           B <= '0';
           Cin <= '1';
           wait for 10 ns;
   
           -- Caso 7
           A <= '1';
           B <= '1';
           Cin <= '0';
           wait for 10 ns;
   
           -- Caso8
           A <= '1';
           B <= '1';
           Cin <= '1';
           wait for 10 ns;
   
           wait;
       end process;
   
   end testbench;
   ```

