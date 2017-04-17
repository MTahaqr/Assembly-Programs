;program to take to numbers from user and and print their sum and take input in variables
dosseg
.model small
.stack 100h
.data
s1 db "firstNumber = $"
s2 db "secondNumber = $"
s3 db "sum = $"

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

mov ah,1
int 21h
add bl,al


mov ah,2
mov dl,10
int 21h

mov ah,2
mov dl,13
int 21h

mov ah,9
lea dx,s3
int 21h

mov dl,bl
mov ah,2
sub dl,48
int 21h

mov ah,4ch
int 21h

main endp
end main