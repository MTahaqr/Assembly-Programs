;Program to print string without using service routine 9 and without any bug
dosseg
.model small
.stack 100h
.data
str1 db "$Allaw yr program tu chal raha hy ;-)$"
.code
main proc
mov ax,@data
mov ds,ax

lea si,str1
mov bl,"$"
L1:
cmp[si],bl
je EXIT
mov ah,2
mov dl,[si]
int 21h
inc si
jmp L1

EXIT: mov ah,4ch
int 21h

main endp
end main
