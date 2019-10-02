; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF

leaw $52 , %A ; 000110100
movw %A , %D  ; D = 000110100
leaw $21185, %A ; le o SW
movw (%A), %S   ; S = SW
leaw $128, %A   ; A = 010000000
andw %A, %S, %S ; S = SW and 010000000 
addw %D, %S, %D ; D = 000110100 + S
leaw $21184, %A ; le o LED
movw %D, (%A)   ; Grava no led





