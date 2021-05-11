// Computes R0 * R1
// Pseudo Code
//
// n = R0
// m = R1
// i = 1
// R2  = 0
//
// Loop:
// 	if i > n goto STOP
//	R2 = R2 +R1
//	i = i + 1
//	goto Loop
//
// END

@0
D=M
@n			// @16
M=D
@1
D=M
@m			// @17
M=D			// n = R0
@i			// @18
M=1			// i = 1
@2
M=0			// R2 = 0
(LOOP)
@i			// @18
D=M
@n			// @16
D=D-M	
@END		// if i > n
D;JGT		// goto STOP else
@m			// @17
D=M
@2
M=D+M		// R2 = R2 + R1 (R2 = 0 at first)
@i			// @18
M=M+1		// i = i + 1
@LOOP
0;JMP		// Jumps back into loop 
(END)		// Jumps here if i > n
@END
0;JMP		// End of program. Infinite loop
