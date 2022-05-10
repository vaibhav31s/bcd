.model small
.data
a db 06H
b db 02H
.code
start:mov ax,@data
 mov ds,ax
 mov al,a
 mov bl,b
 mov cl, 04h
 rcl al,cl
 add al,bl
 mov bh,al
 mov ch,02H
 mov cl,04H
 l2:rol bh,cl
 mov dl,bh
 and dl,0fH
 cmp dl,09H
 jbe l4
 add dl,07H
 l4:add dl,30H
 mov ah,02H
 int 21H
 dec ch
 jnz l2
 mov ah,4cH
 int 21H
 end start