section     .text
global      _start                              

_syscall:                                       
    int     0x25
	  ret

_start:                                         

	  push    dword len                           
	  push    dword msg                           
  	push    dword 1                             
	  mov     eax,0x3                             
	  call    _syscall                            
	  add     esp,12                              

	  push    dword 0                             
	  mov     eax,0x3f                            
	  call    _syscall                            
				                                        
section     .data

msg     db  "Hello world!",0xa                  
len     equ $ - msg                            
