.model small
.data
n1 dw 05H
.code
 
start:mov ax,@data ;initialize the data segment
mov ds,ax
mov ax,01h ; initialize ax = 1
mov bx,n1 ;loadthenumberincx
call fact ; call procedure
 
mov ch,02h
mov cl,04h
mov bl,al
l3: ror bl,cl
mov dl,bl
and dl,0fh
cmp dl,09
jle l4
add dl,07h
l4: add dl,30h
mov ah,02h
int 21h
dec ch
jnz l3
 
mov ah,4ch
int 21h
 
fact proc near
cmp bx,01
jz l2
l1: mul bx
dec bx
cmp bx,01
jnz l1
 
l2:ret
endp
end start
