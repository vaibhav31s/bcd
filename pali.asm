.model small
.data
string db 'madam','$'
string1 db 'string is palindrome','$'
string2 db 'string is not palindrome','$'
.code
start: mov ax,@data
 mov ds,ax
 call Pal
 mov ah,4cH
 int 21H
pal proc near
mov si,offset string
loop1: mov al,[si]
 cmp al,'$'
 je label1
 inc si
 jmp loop1
label1: mov di,offset string
 dec si
loop2: cmp si,di
 jl output1
 mov al,[si]
 mov bl,[di]
 cmp al,bl
 jne output2
 inc di
 dec si
 jmp loop2
output1: lea dx,string1
 mov ah,09H
 int 21H
 ret
output2: lea dx,string2
mov ah,09H
 int 21H
 ret
 ENDP
 end start