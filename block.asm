.model small
.code
start:mov SI,0640H
 mov DI,4000H
 mov cl,05H
 l2:mov bl,[SI]
 mov [DI],bl
 inc SI
 inc DI
 dec cl
 jnz l2
 int 03H
 end start