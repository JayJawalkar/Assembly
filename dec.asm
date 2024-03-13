data segment
num db 12,5,3,8
data ends 
code segment
assume cs:code,ds:data
start:
MOv ax,data
Mov ds,ax
Mov bx,3 
t1:
Mov cx,3
Mov si,offset num
t2:
Mov al,[si]
CMP al,[si+1]
jc t3
inc si
loop t2
jmp t4
t3:
XCHG al,[si+1]
xchg al,[si]
inc si
loop t2
t4:
dec bx
jc t1
Mov ah,4ch
INT 21h
code ends
End start