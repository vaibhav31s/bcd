.model small
.data
a db 25H
.code
start:mov ax,@data
 mov ds,ax
 mov cl,08h
 mov dx,0000h
 mov al,a
 l2:rcl al,01
 jc one
 inc dl
 jmp next
 one:inc dh
next:dec cl
 jnz l2
 mov ah,02h
 int 03h
 end start