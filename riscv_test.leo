#!/usr/bin/env emos
include 
riscv.leo
end

# ---------------------------------------------------------
# Framework de Test
# ---------------------------------------------------------

0 variable fails
0 variable passes

: fail
"✘" $. free cr
fails @ ++ ! pdrop
end

: pass
"✔" $. free cr
passes @ ++ ! pdrop
end

"\n=== PROBLEMA 1: SUMA DE 1 A 5 ===" $. free cr
# Objetivo: 1 + 2 + 3 + 4 + 5 = 15
# Usamos t0 como acumulador y t1, t2... como valores constantes

ADDI t0 ra 0      # Suma = 0
ds. ps.

ADDI t1 ra 1      
ADD t0 t0 t1      # Suma = 1
ds. ps.

ADDI t1 ra 2
ADD t0 t0 t1      # Suma = 1 + 2 = 3

ADDI t1 ra 3
ADD t0 t0 t1      # Suma = 3 + 3 = 6

ADDI t1 ra 4
ADD t0 t0 t1      # Suma = 6 + 4 = 10

ADDI t1 ra 5
ADD t0 t0 t1      # Suma = 10 + 5 = 15
10 base
ds. ps.

if t0@ 15 = { pass } else { fail }

"\n=== PROBLEMA 2: CONSTRUCCION HEX (0xABC) ===" $. free cr
# Queremos construir el valor ABC (hex) en un registro.
# ABC hex = 2748 decimal.
# Estrategia: Cargar A, moverlo, cargar B, moverlo, cargar C.

# 1. Cargar A (10)
ADDI t0 ra 10     # t0 = 0x00A

# 2. Desplazar 4 bits (un nibble) a la izquierda
SLLI t0 t0 4      # t0 = 0x0A0

# 3. Agregar B (11)
ADDI t1 ra 11
OR t0 t0 t1       # t0 = 0x0AB (combina A0 y 0B)

# 4. Desplazar 4 bits a la izquierda
SLLI t0 t0 4      # t0 = 0xAB0

# 5. Agregar C (12)
ADDI t1 ra 12
OR t0 t0 t1       # t0 = 0xABC

# Verificamos. 0xABC en decimal es 2748
if t0@ 2748 = { pass } else { fail }

"\n=== PROBLEMA 3: DETECTOR IMPAR ===" $. free cr
# Vamos a probar con el numero 25 (impar) y 30 (par)

# --- Caso 1: Numero 25 (11001 binario) ---
ADDI t0 ra 25
ANDI t1 t0 1      # Mascara con 1. Deberia quedar 1.

# --- Caso 2: Numero 30 (11110 binario) ---
ADDI t2 ra 30
ANDI t3 t2 1      # Mascara con 1. Deberia quedar 0.

# Verificamos ambos casos sumando los resultados
# t1 (1) + t3 (0) deberia ser 1
ADD t4 t1 t3

if t4@ 1 = { pass } else { fail }
