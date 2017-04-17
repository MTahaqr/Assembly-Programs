;Program to take input character from user and print it
dosseg
.model small
.stack 100h
.data
s1 db "Input = $"
s2 db "Output = $"

.code
main proc

mov ax,@data
mov ds,ax

mov ah,9
lea dx,s1
int 21h


mov ah,1
int 21h
mov bl,al

mov ah,2
mov dl,10
int 21h


mov ah,2
mov dl,13
int 21h


mov ah,9
lea dx,s2
int 21h


mov ah,2
mov dl,bl
int 21h


mov ah,4ch
int 21h

main endp
end main
