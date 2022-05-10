.model small
.data
array db 12h,23h,26h,63h,25h,36h,2fh,33h,10h,35h
.code
start: mov ax,@data
 mov ds,ax
 mov cl,10h
 mov si,2000h
 mov di,2010h
 lea bp,array
next: mov al,ds:[bp]
 mov bl,al
 and al,01h
 jz eve
 mov [di],bl
 inc di
 jmp skip
 eve:mov [si],bl
 inc si
 jmp skip
 skip:inc bp
 dec cl
 jnz next
 int 03H
 end start