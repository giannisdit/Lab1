title Laboratory 1 : Evaluating Simple Arithmetic Expressions
Include Irvine32.inc
	p EQU 8d
.data
	x SDWORD 16d
	y SDWORD 154d
	z SDWORD -17d
	w SDWORD ?
.code
main PROC
	;w=  (x+ y) –(50d+ x+ y+ z-p)
	MOV eax,x	;EAX=x
	ADD eax,y	;EAX=x+y
	
	MOV ebx,50d	;EBX=50
	ADD ebx,eax	;EBX=50+x+y
	ADD ebx,z	;EBX=50+x+y+z
	SUB ebx,p	;EBX=50+x+y-p
	SUB eax,ebx ;EAX=(x+ y) –(50d+ x+ y+ z-p)
	MOV w,eax	;w=EAX
	call WriteInt
	exit
main ENDP
END main