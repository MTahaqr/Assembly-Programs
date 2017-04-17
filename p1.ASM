;program to add to hard coded input without ASCII problem solve
dosseg
.model small
.stack 100h
.code 
main proc
mov al,1
mov bl,2
add al,bl
mov ah,2
mov dl,al
int 21h

main endp
end main