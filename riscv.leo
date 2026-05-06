#!/usr/bin/env emos


#------------MEMORIA--------------------------------

100 integers       #Memory size is define as 100 cells of 32 bits.
allocate           #The memory space is allocated.

ffff0001h ! 16 base @ . cr 1 integers shift
2h ! @ . cr 1 integers shift
3h ! @ . cr 1 integers shift
4h ! @ . cr 1 integers shift
5h ! @ . cr 1 integers shift
6h ! @ . cr 1 integers shift
7h ! @ . cr 1 integers shift
f0ed12c3h ! @ . cr 1 integers shift
09a7b4e5h ! @ . cr 1 integers shift
ddccbbaah ! @ . cr 1 integers shift
0047a9f2h ! @ . cr 1 integers shift
6e5d4c3bh ! @ . cr 1 integers shift
89abcdefh ! @ . cr 1 integers shift
13579bdfh ! @ . cr 1 integers shift
fedcba98h ! @ . cr 1 integers shift
deadbeefh ! @ . cr 1 integers shift
cafebebah ! @ . cr -16 integers shift

#---------------------------------------------------




0 constant zero
0 variable ra
0 variable sp
0 variable gp
0 variable tp
0 variable t0   
0 variable t1
0 variable t2
0 variable s0
0 variable s1
0 variable a0
0 variable a1
0 variable a2
0 variable a3
0 variable a4
0 variable a5
0 variable a6
0 variable a7
0 variable s2
0 variable s3
0 variable s4
0 variable s5
0 variable s6
0 variable s7
0 variable s8
0 variable s9
0 variable s10
0 variable s11
0 variable t3
0 variable t4
0 variable t5
0 variable t6


#------------------------------------------------------
: ra.
"ra: " $. free
ra @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: ra@
ra @ pdrop
end

#------------------------------------------------------
: sp.
"sp: " $. free
sp @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: sp@
sp @ pdrop
end

#------------------------------------------------------
: gp.
"gp: " $. free
gp @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: gp@
gp @ pdrop
end

#------------------------------------------------------
: tp.
"tp: " $. free
tp @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: tp@
tp @ pdrop
end

#------------------------------------------------------
: t0.
"t0: " $. free
t0 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t0@
t0 @ pdrop
end

#------------------------------------------------------
: t1.
"t1: " $. free
t1 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t1@
t1 @ pdrop
end

#------------------------------------------------------
: t2.
"t2: " $. free
t2 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t2@
t2 @ pdrop
end

#------------------------------------------------------
: s1.
"s1: " $. free
s1 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s1@
s1 @ pdrop
end

#------------------------------------------------------
: s2.
"s2: " $. free
s2 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s2@
s2 @ pdrop
end

#------------------------------------------------------
: a0.
"a0: " $. free
a0 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a0@
a0 @ pdrop
end

#------------------------------------------------------
: a1.
"a1: " $. free
a1 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a1@
a1 @ pdrop
end

#------------------------------------------------------
: a2.
"a2: " $. free
a2 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a2@
a2 @ pdrop
end

#------------------------------------------------------
: a3.
"a3: " $. free
a3 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a3@
a3 @ pdrop
end

#------------------------------------------------------
: a4.
"a4: " $. free
a4 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a4@
a4 @ pdrop
end

#------------------------------------------------------
: a5.
"a5: " $. free
a5 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a5@
a5 @ pdrop
end

#------------------------------------------------------
: a6.
"a6: " $. free
a6 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a6@
a6 @ pdrop
end

#------------------------------------------------------
: a7.
"a7: " $. free
a7 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: a7@
a7 @ pdrop
end

#------------------------------------------------------
: s3.
"s3: " $. free
s3 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s3@
s3 @ pdrop
end

#------------------------------------------------------
: s4.
"s4: " $. free
s4 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s4@
s4 @ pdrop
end

#------------------------------------------------------
: s5.
"s5: " $. free
s5 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s5@
s5 @ pdrop
end

#------------------------------------------------------
: s6.
"s6: " $. free
s6 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s6@
s6 @ pdrop
end

#------------------------------------------------------
: s7.
"s7: " $. free
s7 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s7@
s7 @ pdrop
end

#------------------------------------------------------
: s8.
"s8: " $. free
s8 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s8@
s8 @ pdrop
end

#------------------------------------------------------
: s9.
"s9: " $. free
s9 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s9@
s9 @ pdrop
end

#------------------------------------------------------
: s10.
"s10: " $. free
s10 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s10@
s10 @ pdrop
end


#------------------------------------------------------
: s11.
"s11: " $. free
s11 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: s11@
s11 @ pdrop
end

#------------------------------------------------------
: t3.
"t3: " $. free
t3 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t3@
t3 @ pdrop
end

#------------------------------------------------------
: t4.
"t4: " $. free
t4 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t4@
t4 @ pdrop
end

#------------------------------------------------------
: t5.
"t5: " $. free
t5 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t5@
t5 @ pdrop
end

#------------------------------------------------------
: t6.
"t6: " $. free
t6 @ pdrop
16 base
1 zeros
9 digits
. cr
end
#------------------------------------------------------
: t6@
t6 @ pdrop
end

#------------------------------------------------------
#------------------------------------------------------

#Funciones.
#Instrucciones tipo I

: ADDI
, call , call @ ,
pdrop
+ ! pdrop
end

#prueba ADDI

ADDI t1 ra 2
if  t1@ 2 =
 {
    "ADDI ✓" $. free cr
 }
else
 {
    "ADDI x" $. free cr
 }

#------------------------------------------------------
: ORI
, call , call @ ,
pdrop
or ! pdrop
end

#prueba ORI
    
ORI t0 ra 00000011
if  t0@ 00000011 =
 {
    "ORI ✓" $. free cr
 }
else
 {
    "ORI x" $. free cr

 }
#------------------------------------------------------
: SLTI
, call , call @ ,
pdrop
s< ! pdrop
end

#prueba SLTI    
SLTI t0 ra 1
if  t0@ 1 =
 {
    "SLTI ✓" $. free cr
 }
else
 {
    "SLTI x" $. free cr
 }


#------------------------------------------------------
: XORI
, call , call @ ,
pdrop
xor ! pdrop
end

#prueba XORI    
XORI t0 ra 1
if  t0@ 1 =
 {
    "XORI ✓" $. free cr
 }
else
 {
    "XORI x" $. free cr
 }

 


#------------------------------------------------------
: ANDI
, call , call @ ,
pdrop
and ! pdrop
end

#prueba ANDI    
ANDI t0 ra 1
if  t0@ 0 =
 {
    "ANDI ✓" $. free cr
 }
else
 {
    "ANDI x" $. free cr
 }


#------------------------------------------------------
: SLLI
, call , call @ ,
pdrop
<< ! pdrop
end

#prueba SLLI
ADDI t0 ra 1
SLLI ra t0 1
if  ra@ 2 =
 {
    "SLLI ✓" $. free cr
 }
else
 {
    "SLLI x" $. free cr
 }

#------------------------------------------------------
: SRLI
, call , call @ ,
pdrop
>> ! pdrop
end

#prueba SRLI
ADDI t0 ra 0
SRLI t0 ra 1
if  t0@ 1 =
 {
    "SRLI ✓" $. free cr
 }
else
 {
    "SRLI x" $. free cr
 }

#SRAI Desplazamiento Aritmetico Derecho Inmediato
#Guarda en P1, el resultado de P2 recorrido P3 bits a la derecha, conservando el signo
: SRAI
	, call , call @ ,
	pdrop
	#Revisar si primer bit es 1
	2 roll dup 80000000h and
	if 80000000h =
	 { 2 roll 
	 dup 3 roll 2 roll
	 >> 2 roll ffffffffh 2 roll
	 >> not or }
	else
	 { 2 roll >> }
	!
	pdrop
end

#prueba SRAI
SRAI t2 t1 1
if  t2@ 1 =
 {
    "SRAI ✓" $. free cr
 }
else
 {
    "SRAI x" $. free cr
 }

#SLTIU
#-----------------------------------------------------

: SLTIU
    , call , call @ ,  
    pdrop 
    < ! pdrop
end     


#SLTIU prueba
SLTIU t2 t1 1
if  t0@ 1 =
 {
    "SLTIU ✓" $. free cr
 }
else
 {
    "SLTIU x" $. free cr
 }


#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#Instrucciones tipo R


: ADD
, call , call @ , call @
pdrop pdrop
+ ! pdrop
end

#prueba A   DD
#1
#2
#0
ADD t0 t1 t2

if  t0@ 2 =
 {
    "ADD ✓" $. free cr
 }
else
 {
    "ADD x" $. free cr
 }
#-----------------------------------------------------

: SUB
, call , call @ , call @
pdrop pdrop
- ! pdrop
end

#prueba SUB
SUB t2 t1 t0
if  t2@ 0 =
 {
    "SUB ✓" $. free cr
 }
else
 {
    "SUB x" $. free cr
 }
#-----------------------------------------------------

: SLL
, call , call @ , call @
pdrop pdrop
<< ! pdrop
end

#prueba SLL
SLL t2 t1 t0
if  t2@ 8 =
 {
    "SLL ✓" $. free cr
 }
else
 {
    "SLL x" $. free cr
 }
#-----------------------------------------------------

: SLT
, call , call @ , call @
pdrop pdrop
< ! pdrop
end

#prueba SLT
SLT t0 t2 t1
if  t0@ 0 =
 {
    "SLT ✓" $. free cr
 }
else
 {
    "SLT x" $. free cr
 }
#-----------------------------------------------------

: SLTU
, call , call @ , call @
pdrop pdrop
< ! pdrop
end

#prueba SLTU
SLTU t0 t1 t2
if  t0@ 1 =
 {
    "SLTU ✓" $. free cr
 }
else
 {
    "SLTU x" $. free cr
 }
#-----------------------------------------------------

: XOR
, call , call @ , call @
pdrop pdrop
xor ! pdrop
end

#prueba XOR
XOR t2 t1 t0
if  t2@ 3 =
 {
    "XOR ✓" $. free cr
 }
else
 {
    "XOR x" $. free cr
 }
#-----------------------------------------------------

: AND
, call , call @ , call @
pdrop pdrop
and ! pdrop
end

#prueba AND
AND t1 t0 t2
if  t1@ 1 =
 {
    "AND ✓" $. free cr
 }
else
 {
    "AND x" $. free cr
 }
#-----------------------------------------------------

: OR
, call , call @ , call @
pdrop pdrop
or ! pdrop
end

#prueba OR
OR t2 t0 t1
if  t2@ 1 =
 {
    "OR ✓" $. free cr
 }
else
 {
    "OR x" $. free cr
 }
 
#-------------------------------------------------------------
#SRL
: SRL
, call , call @ , call @
pdrop pdrop
>> ! pdrop
end

#prueba SRL

ADDI t0 t1 1 
ADDI t2 t1 1
SRL t2 t0 t1
if  t2@ 1 =
 {
    "SRL ✓" $. free cr
 }
else
 {
    "SRL x" $. free cr
 }

#------------------------------------------------------
#SRA
: SRA
	, call , call @ , call @ 
	pdrop pdrop
	#Revisar si primer bit es 1
	2 roll dup 80000000h and
	if 80000000h =
	 { 2 roll 
	 dup 3 roll 2 roll
	 >> 2 roll ffffffffh 2 roll
	 >> not or }
	else
	 { 2 roll >> }
	!
	pdrop
end

#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#Instrucciones de carga 


#------------------------------------------------------


# LW rd, offset, rs1

: LW
   , call , , call @ 
   pdrop
   pswap
   pdup
   +
   dup
   if 0 =
   {   
    drop   
   }
   else
   {   
      integers shift
   }
   @
   pdrop
   pswap
   !
   pdrop
end

#Prueba LW
LW t5 0 t6
if  t5@ ffff0001h =
 {
    "LW ✓" $. free cr
 }
else
 {
    "LW x" $. free cr
 }
 

#------------------------------------------------------
# LB rd, offset, rs1

: LB
   , call , , call @ 
   pdrop
   pswap
   pdup
   +
   dup
   if 0 =
   {   
    drop   
   }
   else
   {   
       symbols shift
   }
   @

      

   ffh and              

   dup 80h and          
   if 80h =             
   {
      ffffff00h or      
   }
   else
   {
     
   }



   pdrop
   pswap
   !
   pdrop
end

#Prueba LB
LB t5 0 t6
if  t5@ 1 =
 {
    "LB ✓" $. free cr
 }
else
 {
    "LB x" $. free cr
 }

#------------------------------------------------------
# LBU rd, offset, rs1

: LBU
   , call , , call @ 
   pdrop
   pswap
   pdup
   +
   dup
   if 0 =
   {   
    drop   
   }
   else
   {   
       symbols shift
   }
   @
   
   ffh and

   pdrop
   pswap
   !
   pdrop
end

#Prueba LBU
LBU t5 0 t6
if  t5@ 1 =
 {
    "LBU ✓" $. free cr
 }
else
 {
    "LBU x" $. free cr
 }


#------------------------------------------------------
# LH rd, offset, rs1

: LH
   , call , , call @ 
   pdrop
   pswap
   pdup
   +
   dup
   if 0 =
   {   
    drop   
   }
   else
   {   
      2
      *
      symbols shift
   }
   @

      

   ffffh and              

   dup 8000h and          
   if 8000h =             
   {
      ffff0000h or      
   }
   else
   {
     
   }



   pdrop
   pswap
   !
   pdrop
end

#Prueba LH
LH t5 0 t6
if  t5@ 1 =
 {
    "LH ✓" $. free cr
 }
else
 {
    "LH x" $. free cr
 }

#------------------------------------------------------
# LHU rd, offset, rs1

: LHU
   , call , , call @ 
   pdrop
   pswap
   pdup
   +
   dup
   if 0 =
   {   
    drop   
   }
   else
   {   
      2 *
      symbols shift
   }
   @

   ffffh and

   pdrop
   pswap
   !
   pdrop
end

#Prueba LHU
LHU t5 1 t6
if  t5@ ffffh =
 {
    "LHU ✓" $. free cr
 }
else
 {
    "LHU x" $. free cr
 }
#--------------------------------------------------


