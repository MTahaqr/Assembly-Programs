
;program to add to hard coded input with ASCII problem solve
dosseg
.model small
.stack 100h
.code 
main proc
mov al,"1"
mov bl,"2"
add al,bl
sub al,48
mov ah,2
mov dl,al
int 21h

mov ah,4ch
int 21h

main endp
end main