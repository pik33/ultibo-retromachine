	.file "umain.pas"
# Begin asmlist al_procedures

.section .text.n_umain_$$_rainbow
	.balign 4
UMAIN_$$_RAINBOW:
# [umain.pas]
# [38] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
# Peephole Add/Sub to Preindexed done
# [39] box2(10,1011,1782,1012,48+16);
	mov	r0,#64
	str	r0,[r13, #-48]!
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#243
	orr	r1,r1,#768
	mov	r3,#1012
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [40] box2(10,1013,1782,1014,48+17);
	mov	r0,#65
	str	r0,[r13]
	mov	r3,#246
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#245
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [41] box2(10,1015,1782,1016,48+18);
	mov	r0,#66
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#247
	orr	r1,r1,#768
	mov	r3,#1016
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [42] box2(10,1017,1782,1018,48+19);
	mov	r0,#67
	str	r0,[r13]
	mov	r3,#250
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#249
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [43] box2(10,1019,1782,1020,48+20);
	mov	r0,#68
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#251
	orr	r1,r1,#768
	mov	r3,#1020
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [44] box2(10,1021,1782,1022,48+21);
	mov	r0,#69
	str	r0,[r13]
	mov	r3,#254
	orr	r3,r3,#768
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#253
	orr	r1,r1,#768
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [45] box2(10,1023,1782,1024,48+22);
	mov	r0,#70
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#255
	orr	r1,r1,#768
	mov	r3,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [46] box2(10,1025,1782,1026,48+23);
	mov	r0,#71
	str	r0,[r13]
	mov	r3,#2
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#1
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [47] box2(10,1027,1782,1028,48+24);
	mov	r0,#72
	str	r0,[r13]
	mov	r3,#4
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#3
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [48] box2(10,1029,1782,1030,48+25);
	mov	r0,#73
	str	r0,[r13]
	mov	r3,#6
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#5
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [49] box2(10,1031,1782,1032,48+26);
	mov	r0,#74
	str	r0,[r13]
	mov	r3,#8
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#7
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [50] box2(10,1033,1782,1034,48+27);
	mov	r0,#75
	str	r0,[r13]
	mov	r3,#10
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#9
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [51] box2(10,1035,1782,1036,48+28);
	mov	r0,#76
	str	r0,[r13]
	mov	r3,#12
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#11
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [52] box2(10,1037,1782,1038,48+29);
	mov	r0,#77
	str	r0,[r13]
	mov	r3,#14
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#13
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [53] box2(10,1039,1782,1040,48+30);
	mov	r0,#78
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#15
	orr	r1,r1,#1024
	mov	r3,#1040
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [54] box2(10,1041,1782,1042,48+31);
	mov	r0,#79
	str	r0,[r13]
	mov	r3,#18
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#17
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [55] box2(10,1043,1782,1044,48+32);
	mov	r0,#80
	str	r0,[r13]
	mov	r3,#20
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#19
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [56] box2(10,1045,1782,1046,48+33);
	mov	r0,#81
	str	r0,[r13]
	mov	r3,#22
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#21
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [57] box2(10,1047,1782,1048,48+34);
	mov	r0,#82
	str	r0,[r13]
	mov	r3,#24
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#23
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [58] box2(10,1049,1782,1050,48+35);
	mov	r0,#83
	str	r0,[r13]
	mov	r3,#26
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#25
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [59] box2(10,1051,1782,1052,48+36);
	mov	r0,#84
	str	r0,[r13]
	mov	r3,#28
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#27
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [60] box2(10,1053,1782,1054,48+37);
	mov	r0,#85
	str	r0,[r13]
	mov	r3,#30
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#29
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [61] box2(10,1055,1782,1056,48+38);
	mov	r0,#86
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#31
	orr	r1,r1,#1024
	mov	r3,#1056
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [62] box2(10,1057,1782,1058,48+39);
	mov	r0,#87
	str	r0,[r13]
	mov	r3,#34
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#33
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [63] end;
	ldmea	r11,{r11,r13,r15}
.Le0:
	.size	UMAIN_$$_RAINBOW, .Le0 - UMAIN_$$_RAINBOW

.section .text.n_umain_$$_main1
	.balign 4
.globl	UMAIN_$$_MAIN1
UMAIN_$$_MAIN1:
# [69] begin
	mov	r12,r13
	stmfd	r13!,{r11,r12,r14,r15}
	sub	r11,r12,#4
# Var t located in register r0:r0
# Var i located in register r1
# Rescheduled
# [73] raml^[$18010]:=$01001100;    raml^[$18011]:=$00040004;
	ldr	r0,.Lj7
	sub	r13,r13,#68
	ldr	r1,[r0]
	mov	r2,#16777216
# Rescheduled
	ldr	r3,.Lj8
	orr	r2,r2,#4352
# Rescheduled
	ldr	r0,.Lj7
	str	r2,[r1, r3]
	ldr	r1,[r0]
	mov	r2,#4
# Rescheduled
	ldr	r0,.Lj10
	orr	r2,r2,#262144
# Rescheduled
# [74] raml^[$18012]:=$01001100;    raml^[$18013]:=$00040004;
	ldr	r3,.Lj7
	str	r2,[r1, r0]
	ldr	r3,[r3]
	mov	r2,#16777216
# Rescheduled
	ldr	r1,.Lj12
	orr	r2,r2,#4352
# Rescheduled
	ldr	r0,.Lj7
	str	r2,[r3, r1]
	ldr	r0,[r0]
	mov	r2,#4
# Rescheduled
	ldr	r1,.Lj14
	orr	r2,r2,#262144
# Rescheduled
# [75] raml^[$18014]:=$01001100;    raml^[$18015]:=$00040004;
	ldr	r3,.Lj7
	str	r2,[r0, r1]
	ldr	r2,[r3]
	mov	r1,#16777216
# Rescheduled
	ldr	r3,.Lj16
	orr	r1,r1,#4352
# Rescheduled
	ldr	r0,.Lj7
	str	r1,[r2, r3]
	ldr	r1,[r0]
	mov	r0,#4
# Rescheduled
	ldr	r2,.Lj18
	orr	r0,r0,#262144
# Rescheduled
# [76] raml^[$18016]:=$01001100;    raml^[$18017]:=$00040004;
	ldr	r3,.Lj7
	str	r0,[r1, r2]
	ldr	r1,[r3]
	mov	r2,#16777216
# Rescheduled
	ldr	r0,.Lj20
	orr	r2,r2,#4352
# Rescheduled
	ldr	r3,.Lj7
	str	r2,[r1, r0]
	ldr	r2,[r3]
	mov	r0,#4
# Rescheduled
	ldr	r3,.Lj22
	orr	r0,r0,#262144
# Rescheduled
# [77] raml^[$18018]:=$01001100;    raml^[$18019]:=$00040004;
	ldr	r1,.Lj7
	str	r0,[r2, r3]
	ldr	r0,[r1]
	mov	r2,#16777216
# Rescheduled
	ldr	r1,.Lj24
	orr	r2,r2,#4352
# Rescheduled
	ldr	r3,.Lj7
	str	r2,[r0, r1]
	ldr	r1,[r3]
	mov	r2,#4
# Rescheduled
	ldr	r0,.Lj26
	orr	r2,r2,#262144
# Rescheduled
# [78] raml^[$1801a]:=$01001100;    raml^[$1801b]:=$00040004;
	ldr	r3,.Lj7
	str	r2,[r1, r0]
	ldr	r0,[r3]
	mov	r3,#16777216
# Rescheduled
	ldr	r1,.Lj28
	orr	r3,r3,#4352
# Rescheduled
	ldr	r2,.Lj7
	str	r3,[r0, r1]
	ldr	r1,[r2]
	mov	r3,#4
# Rescheduled
	ldr	r2,.Lj30
	orr	r3,r3,#262144
# Rescheduled
# [79] raml^[$1801c]:=$01001100;    raml^[$1801d]:=$00040004;
	ldr	r0,.Lj7
	str	r3,[r1, r2]
	ldr	r1,[r0]
	mov	r0,#16777216
# Rescheduled
	ldr	r2,.Lj32
	orr	r0,r0,#4352
# Rescheduled
	ldr	r3,.Lj7
	str	r0,[r1, r2]
	ldr	r0,[r3]
	mov	r1,#4
# Rescheduled
	ldr	r2,.Lj34
	orr	r1,r1,#262144
# Rescheduled
# [80] raml^[$1801e]:=$01001100;    raml^[$1801f]:=$00020002;
	ldr	r3,.Lj7
	str	r1,[r0, r2]
	ldr	r0,[r3]
	mov	r1,#16777216
# Rescheduled
	ldr	r2,.Lj36
	orr	r1,r1,#4352
# Rescheduled
	ldr	r3,.Lj7
	str	r1,[r0, r2]
	ldr	r2,[r3]
	mov	r0,#2
# Rescheduled
	ldr	r1,.Lj38
	orr	r0,r0,#131072
	str	r0,[r2, r1]
# Var i located in register r1
# [84] for i:=0 to 31 do
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj41:
	add	r1,r1,#1
# Rescheduled
# [85] for j:=0 to 31 do  begin
	ldr	r2,.Lj45
	mov	r0,#0
# Rescheduled
	ldr	r3,.Lj45
	str	r0,[r2]
	ldr	r0,[r3]
	sub	r0,r0,#1
	str	r0,[r3]
	.balign 4
.Lj44:
	ldr	r3,.Lj45
	ldr	r0,[r3]
	add	r2,r0,#1
# Rescheduled
# [86] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj45
	str	r2,[r3]
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj50
	ldr	r0,.Lj45
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
	b	.Lj53
.Lj50:
	ldr	r0,.Lj45
	ldr	r0,[r0]
	mov	r2,#31
	sub	r0,r2,r0
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
.Lj53:
# [87] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14800+i+32*j]:=k else  raml^[$14800+i+32*j]:=$0;
	cmp	r1,#11
	blt	.Lj56
	cmp	r1,#21
	bgt	.Lj56
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj56
	cmp	r0,#21
	ble	.Lj61
.Lj56:
	ldr	r0,.Lj7
	ldr	r12,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#83968
# [144] end;
	add	r0,r2,r0,lsl #5
# Rescheduled
	ldr	r2,.Lj52
	mov	r3,r0,lsl #2
	ldr	r0,[r2]
	str	r0,[r12, r3]
	b	.Lj65
.Lj61:
	ldr	r0,.Lj7
	ldr	r3,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#83968
	add	r0,r2,r0,lsl #5
	mov	r2,#0
# Peephole FoldShiftLdrStr done
	str	r2,[r3, r0, lsl #2]
.Lj65:
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj44
	cmp	r1,#31
	blt	.Lj41
# Var i located in register r1
# [90] for i:=0 to 31 do
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj71:
	add	r1,r1,#1
# Rescheduled
# [91] for j:=0 to 31 do  begin
	ldr	r2,.Lj45
	mov	r0,#0
# Rescheduled
	ldr	r3,.Lj45
	str	r0,[r2]
	ldr	r0,[r3]
	sub	r0,r0,#1
	str	r0,[r3]
	.balign 4
.Lj74:
	ldr	r3,.Lj45
	ldr	r0,[r3]
	add	r2,r0,#1
# Rescheduled
# [92] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj45
	str	r2,[r3]
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj80
	ldr	r0,.Lj45
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
	b	.Lj83
.Lj80:
	ldr	r0,.Lj45
	ldr	r0,[r0]
	mov	r2,#31
	sub	r0,r2,r0
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
.Lj83:
# [93] k:=k shl 8;
	ldr	r0,.Lj52
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #8
	str	r0,[r2]
# [94] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14C00+i+32*j]:=k else  raml^[$14C00+i+32*j]:=$0;
	cmp	r1,#11
	blt	.Lj88
	cmp	r1,#21
	bgt	.Lj88
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj88
	cmp	r0,#21
	ble	.Lj93
.Lj88:
	ldr	r0,.Lj7
	ldr	r12,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#84992
	add	r0,r2,r0,lsl #5
# Rescheduled
	ldr	r2,.Lj52
	mov	r3,r0,lsl #2
	ldr	r0,[r2]
	str	r0,[r12, r3]
	b	.Lj97
.Lj93:
	ldr	r0,.Lj7
	ldr	r3,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#84992
	add	r0,r2,r0,lsl #5
	mov	r2,#0
# Peephole FoldShiftLdrStr done
	str	r2,[r3, r0, lsl #2]
.Lj97:
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj74
	cmp	r1,#31
	blt	.Lj71
# Var i located in register r1
# [97] for i:=0 to 31 do
	mov	r1,#0
	sub	r1,r1,#1
	.balign 4
.Lj103:
	add	r1,r1,#1
# Rescheduled
# [98] for j:=0 to 31 do  begin
	ldr	r0,.Lj45
	mov	r2,#0
# Rescheduled
	ldr	r3,.Lj45
	str	r2,[r0]
	ldr	r0,[r3]
	sub	r0,r0,#1
	str	r0,[r3]
	.balign 4
.Lj106:
	ldr	r3,.Lj45
	ldr	r0,[r3]
	add	r2,r0,#1
# Rescheduled
# [99] if j<16 then k:=j*16 else k:=(31-j)*16 ;
	ldr	r0,.Lj45
	str	r2,[r3]
	ldr	r0,[r0]
	cmp	r0,#16
	bge	.Lj112
	ldr	r0,.Lj45
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
	b	.Lj115
.Lj112:
	ldr	r0,.Lj45
	ldr	r2,[r0]
	mov	r0,#31
	sub	r0,r0,r2
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #4
	str	r0,[r2]
.Lj115:
# [100] k:=k shl 16;
	ldr	r0,.Lj52
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	mov	r0,r0,lsl #16
	str	r0,[r2]
# [101] if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$15000+i+32*j]:=k else  raml^[$15000+i+32*j]:=$0;
	cmp	r1,#11
	blt	.Lj120
	cmp	r1,#21
	bgt	.Lj120
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#11
	blt	.Lj120
	cmp	r0,#21
	ble	.Lj125
.Lj120:
	ldr	r0,.Lj7
	ldr	r12,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#86016
	add	r0,r2,r0,lsl #5
# Rescheduled
	ldr	r2,.Lj52
	mov	r3,r0,lsl #2
	ldr	r0,[r2]
	str	r0,[r12, r3]
	b	.Lj129
.Lj125:
	ldr	r0,.Lj7
	ldr	r3,[r0]
# Rescheduled
	ldr	r0,.Lj45
# Peephole FoldShiftProcess done
# Rescheduled
	ldr	r0,[r0]
	add	r2,r1,#86016
	add	r0,r2,r0,lsl #5
	mov	r2,#0
# Peephole FoldShiftLdrStr done
	str	r2,[r3, r0, lsl #2]
.Lj129:
	ldr	r0,.Lj45
	ldr	r0,[r0]
	cmp	r0,#31
	blt	.Lj106
	cmp	r1,#31
	blt	.Lj103
# [106] raml^[$18002]:=0;
	ldr	r0,.Lj7
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj134
	mov	r1,#0
# Rescheduled
# [107] raml^[$18008]:=1792;
	ldr	r3,.Lj7
	str	r1,[r0, r2]
	ldr	r0,[r3]
# Rescheduled
	ldr	r2,.Lj136
	mov	r1,#1792
# Rescheduled
# [108] raml^[$18009]:=1120;
	ldr	r3,.Lj7
	str	r1,[r0, r2]
	ldr	r1,[r3]
# Rescheduled
	ldr	r0,.Lj138
	mov	r2,#1120
	str	r2,[r1, r0]
# [109] setataripallette(0);
	mov	r0,#0
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [110] setataripallette(1);
	mov	r0,#1
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [111] setataripallette(2);
	mov	r0,#2
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [112] setataripallette(3);
	mov	r0,#3
	bl	RETROMALINA_$$_SETATARIPALLETTE$LONGINT
# [113] cls(146);
	mov	r0,#146
	bl	RETROMALINA_$$_CLS$LONGINT
# [114] outtextxyz(128,16,ver,154,4,2);
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj139
	mov	r3,#154
	mov	r1,#16
	mov	r0,#128
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [115] box2(8,64,1784,1112,0);
	mov	r0,#0
	str	r0,[r13]
	mov	r3,#88
	orr	r3,r3,#1024
	mov	r2,#248
	orr	r2,r2,#1536
	mov	r1,#64
	mov	r0,#8
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [116] box2(10,1062,1782,1110,120);
	mov	r0,#120
	str	r0,[r13]
	mov	r3,#86
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#38
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [117] outtextxyz(32,1070,'Screen time:',124,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
# Rescheduled
	ldr	r2,.Lj140
	mov	r3,#124
	mov	r0,#32
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [118] k:=raml^[$18000];
	ldr	r0,.Lj7
# Rescheduled
	ldr	r1,.Lj142
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj52
	ldr	r0,[r0, r1]
# Rescheduled
# [119] raml^[$18003]:=$002040;
	ldr	r1,.Lj7
	str	r0,[r2]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj145
	mov	r2,#8256
	str	r2,[r0, r1]
# [120] sethidecolor(250,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#250
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [121] sethidecolor(44,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#44
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [122] sethidecolor(190,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#190
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# [123] sethidecolor(188,0,$FF);
	mov	r2,#255
	mov	r1,#0
	mov	r0,#188
	bl	RETROMALINA_$$_SETHIDECOLOR$LONGINT$LONGINT$LONGINT
# Rescheduled
# [124] c:=0;
	ldr	r1,.Lj146
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj147
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [125] avsct:=0;
	ldr	r1,.Lj148
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj149
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
# [126] avspt:=0;
	ldr	r1,.Lj150
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj151
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [127] avall:=0;
	ldr	r1,.Lj152
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj153
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
# [128] avsid:=0;
	ldr	r1,.Lj154
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r0,.Lj155
	mov	r1,#0
	str	r1,[r0]
# [129] rainbow;
	bl	UMAIN_$$_RAINBOW
# [130] outtextxyz(24,1019,'A retromachine SID player by pik33 --- inspired by Johannes Ahlebrand''s Parallax Propeller SIDCog --- F1,F2,F3',89,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#251
	orr	r1,r1,#768
# Rescheduled
	ldr	r2,.Lj156
	mov	r3,#89
	mov	r0,#24
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [131] blit($1000000,10,1011,$1800000,10,1011,1771,48,1792,1792);
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#10
	str	r0,[r13]
	mov	r0,#235
	orr	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#25165824
	mov	r1,#10
	mov	r0,#16777216
	bl	RETROMALINA_$$_BLIT$crc5A667533
# [132] rainbow;
	bl	UMAIN_$$_RAINBOW
# [133] outtextxyz(24,1019,'- channels 1..3 on/off; 1-100 Hz, 2-200 Hz, 3-150 Hz, 4-400 Hz, 5-50 Hz; F - toggle fullscreen, P - pause',89,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#251
	orr	r1,r1,#768
# Rescheduled
	ldr	r2,.Lj157
	mov	r3,#89
	mov	r0,#24
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [134] blit($1000000,10,1011,$1800000,10,1059,1771,48,1792,1792);
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#10
	str	r0,[r13]
	mov	r0,#235
	orr	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#35
	orr	r0,r0,#1024
	str	r0,[r13, #4]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#25165824
	mov	r1,#10
	mov	r0,#16777216
	bl	RETROMALINA_$$_BLIT$crc5A667533
# [135] box2(10,800,894,848,246);
	mov	r0,#246
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r3,#848
	mov	r1,#800
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [136] box2(10,851,894,1008,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#83
	orr	r1,r1,#768
	mov	r3,#1008
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [137] outtextxyz(320,808,'Now playing',250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj158
	mov	r3,#250
	mov	r1,#808
	mov	r0,#320
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [138] box2(10,118,894,797,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#29
	orr	r3,r3,#768
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#118
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [139] box2(10,67,894,115,180);
	mov	r0,#180
	str	r0,[r13]
	mov	r2,#126
	orr	r2,r2,#768
	mov	r3,#115
	mov	r1,#67
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [140] outtextxyz(320,75,'File info',188,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj159
	mov	r3,#188
	mov	r1,#75
	mov	r0,#320
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [141] box2(897,118,1782,1008,34);
	mov	r0,#34
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#1008
	mov	r1,#118
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [142] box2(897,67,1782,115,36);
	mov	r0,#36
	str	r0,[r13]
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r0,#129
	orr	r0,r0,#768
	mov	r3,#115
	mov	r1,#67
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [143] outtextxyz(1296,75,'Files',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
# Rescheduled
	ldr	r2,.Lj160
	mov	r3,#44
	mov	r1,#75
	mov	r0,#1296
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
	ldmea	r11,{r11,r13,r15}
.Lj7:
	.long	U_$RETROMALINA_$$_R1
.Lj8:
	.long	393280
.Lj10:
	.long	393284
.Lj12:
	.long	393288
.Lj14:
	.long	393292
.Lj16:
	.long	393296
.Lj18:
	.long	393300
.Lj20:
	.long	393304
.Lj22:
	.long	393308
.Lj24:
	.long	393312
.Lj26:
	.long	393316
.Lj28:
	.long	393320
.Lj30:
	.long	393324
.Lj32:
	.long	393328
.Lj34:
	.long	393332
.Lj36:
	.long	393336
.Lj38:
	.long	393340
.Lj45:
	.long	U_$RETROMALINA_$$_J
.Lj52:
	.long	U_$RETROMALINA_$$_K
.Lj134:
	.long	393224
.Lj136:
	.long	393248
.Lj138:
	.long	393252
.Lj139:
	.long	.Ld1
.Lj140:
	.long	.Ld2
.Lj142:
	.long	393216
.Lj145:
	.long	393228
.Lj146:
	.long	TC_$UMAIN_$$_C
.Lj147:
	.long	TC_$UMAIN_$$_C+4
.Lj148:
	.long	TC_$UMAIN_$$_AVSCT
.Lj149:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj150:
	.long	TC_$UMAIN_$$_AVSPT
.Lj151:
	.long	TC_$UMAIN_$$_AVSPT+4
.Lj152:
	.long	TC_$UMAIN_$$_AVALL
.Lj153:
	.long	TC_$UMAIN_$$_AVALL+4
.Lj154:
	.long	TC_$UMAIN_$$_AVSID
.Lj155:
	.long	TC_$UMAIN_$$_AVSID+4
.Lj156:
	.long	.Ld3
.Lj157:
	.long	.Ld4
.Lj158:
	.long	.Ld5
.Lj159:
	.long	.Ld6
.Lj160:
	.long	.Ld7
.Le1:
	.size	UMAIN_$$_MAIN1, .Le1 - UMAIN_$$_MAIN1

.section .text.n_umain_$$_main2
	.balign 4
.globl	UMAIN_$$_MAIN2
UMAIN_$$_MAIN2:
# Temps allocated between r11-248 and r11-92
# [156] begin
	mov	r12,r13
	stmfd	r13!,{r4,r5,r6,r7,r8,r9,r10,r11,r12,r14,r15}
	sub	r11,r12,#4
	sub	r13,r13,#272
# Var c1 located in register r10
# Var ii located in register r0
# Var iii located in register r0
# Var il located in register r0
# Var i located in register r4
# Var cc located in register r4
# Var qqq located in register r5:r4
# Var mm located in register r6:r5
# Var hh located in register r8:r7
# Var ss located in register r4:r9
# Var buf located at r11-72, size=OS_NO
# Var mms located at r11-76, size=OS_32
# Var hhs located at r11-80, size=OS_32
# Var sss located at r11-84, size=OS_32
# Var kwas located at r11-88, size=OS_32
# Var clock located at r11-92, size=OS_32
	mov	r0,#0
	str	r0,[r11, #-76]
# Peephole MovStrMov done
	str	r0,[r11, #-80]
# Peephole MovStrMov done
	str	r0,[r11, #-84]
# Peephole MovStrMov done
	str	r0,[r11, #-92]
# Peephole MovStrMov done
	str	r0,[r11, #-248]
# Peephole MovStrMov done
	str	r0,[r11, #-224]
	sub	r2,r11,#104
	sub	r1,r11,#208
	mov	r0,#1
	bl	fpc_pushexceptaddr
	bl	fpc_setjmp
	str	r0,[r11, #-212]
	cmp	r0,#0
	bne	.Lj163
# [158] clock:=timetostr(now);
	bl	SYSUTILS_$$_NOW$$TDATETIME
	str	r0,[r11, #-220]
	str	r1,[r11, #-216]
	ldr	r1,[r11, #-220]
	ldr	r2,[r11, #-216]
	sub	r0,r11,#92
	bl	SYSUTILS_$$_TIMETOSTR$TDATETIME$$ANSISTRING
# [159] k:=raml^[$18000];
	ldr	r0,.Lj165
# Rescheduled
	ldr	r2,.Lj166
	ldr	r0,[r0]
# Rescheduled
# Rescheduled
	ldr	r0,[r0, r2]
	ldr	r1,.Lj167
	str	r0,[r1]
# [160] if peek($70006)=0 then repeat until raml^[$18000]>k;
	mov	r0,#6
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#0
	bne	.Lj169
	.balign 4
.Lj170:
	ldr	r0,.Lj165
# Rescheduled
	ldr	r1,.Lj166
	ldr	r0,[r0]
# Rescheduled
	ldr	r2,.Lj167
	ldr	r1,[r0, r1]
	ldr	r0,[r2]
	cmp	r1,r0
	ble	.Lj170
.Lj169:
# [161] qqq:=gettime;
	bl	RETROMALINA_$$_GETTIME$$INT64
	mov	r4,r0
	mov	r5,r1
# [163] qqq:=gettime-qqq;
	bl	RETROMALINA_$$_GETTIME$$INT64
	subs	r4,r0,r4
	sbc	r5,r1,r5
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
# [164] if peek($70006)=0 then sdlevents;// get events from SDL and update system variables
	mov	r0,#6
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#0
	bne	.Lj177
.Lj177:
# [165] c:=c+1; c1:=c mod 60;
	ldr	r0,.Lj178
# Rescheduled
	ldr	r1,.Lj179
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r12,r0,#1
# Rescheduled
	ldr	r2,.Lj178
	adc	r0,r1,#0
# Rescheduled
	ldr	r3,.Lj179
	str	r12,[r2]
# Rescheduled
	ldr	r1,.Lj179
	str	r0,[r3]
# Rescheduled
	ldr	r0,.Lj178
	ldr	r3,[r1]
	ldr	r2,[r0]
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
# Rescheduled
# [166] if time6502>0 then c6+=1;
	ldr	r1,.Lj184
	mov	r10,r0
# Rescheduled
	ldr	r0,.Lj185
	ldr	r3,[r1]
	ldr	r2,[r0]
	mov	r0,#0
	mov	r1,#0
	cmp	r2,r1
	bgt	.Lj186
	blt	.Lj187
	cmp	r3,r0
	bls	.Lj187
.Lj186:
	ldr	r0,.Lj188
# Rescheduled
	ldr	r1,.Lj189
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r3,r0,#1
# Rescheduled
	ldr	r2,.Lj188
	adc	r0,r1,#0
# Rescheduled
	ldr	r1,.Lj189
	str	r3,[r2]
	str	r0,[r1]
.Lj187:
# [167] ss:=(songtime div 1000000) mod 60;
	ldr	r0,.Lj192
# Rescheduled
	ldr	r1,.Lj193
	ldr	r3,[r0]
	ldr	r2,[r1]
	mov	r1,#0
	mov	r0,#999424
	orr	r0,r0,#576
	bl	fpc_div_int64
	mov	r2,r0
	mov	r3,r1
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
	mov	r9,r0
# Rescheduled
# [168] mm:=(songtime div 60000000) mod 60;
	ldr	r2,.Lj192
	mov	r4,r1
# Rescheduled
	ldr	r0,.Lj193
	ldr	r3,[r2]
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj196
	mov	r1,#0
# Peephole LdrMov2Ldr removed superfluous mov
	bl	fpc_div_int64
	mov	r2,r0
	mov	r3,r1
	mov	r1,#0
	mov	r0,#60
	bl	fpc_mod_int64
	mov	r5,r0
# Rescheduled
# [169] hh:=(songtime div 3600000000);
	ldr	r2,.Lj192
	mov	r6,r1
# Rescheduled
	ldr	r0,.Lj193
	ldr	r3,[r2]
	ldr	r2,[r0]
# Rescheduled
	ldr	r0,.Lj199
	mov	r1,#0
# Peephole LdrMov2Ldr removed superfluous mov
	bl	fpc_div_int64
	mov	r7,r0
	mov	r8,r1
# [170] sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
	mov	r2,r4
	mov	r1,r9
	sub	r0,r11,#84
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r1,#10
	mov	r0,#0
	cmp	r4,r0
	blt	.Lj200
	bgt	.Lj201
	cmp	r9,r1
	bcs	.Lj201
.Lj200:
	ldr	r2,[r11, #-84]
	sub	r0,r11,#84
# Rescheduled
	ldr	r1,.Lj202
	mov	r3,#0
	bl	fpc_ansistr_concat
.Lj201:
# [171] mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
	mov	r2,r6
	mov	r1,r5
	sub	r0,r11,#76
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r1,#10
	mov	r0,#0
	cmp	r6,r0
	blt	.Lj203
	bgt	.Lj204
	cmp	r5,r1
	bcs	.Lj204
.Lj203:
	ldr	r2,[r11, #-76]
	sub	r0,r11,#76
# Rescheduled
	ldr	r1,.Lj202
	mov	r3,#0
	bl	fpc_ansistr_concat
.Lj204:
# [172] hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
	mov	r2,r8
	mov	r1,r7
	sub	r0,r11,#80
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	mov	r0,#10
	mov	r1,#0
	cmp	r8,r1
	blt	.Lj206
	bgt	.Lj207
	cmp	r7,r0
	bcs	.Lj207
.Lj206:
	ldr	r2,[r11, #-80]
	sub	r0,r11,#80
# Rescheduled
	ldr	r1,.Lj202
	mov	r3,#0
	bl	fpc_ansistr_concat
.Lj207:
# [173] songfreq:=1000000 div siddelay;
	mov	r3,#0
	mov	r2,#999424
# Rescheduled
	ldr	r0,.Lj209
	orr	r2,r2,#576
# Rescheduled
	ldr	r12,.Lj210
	ldr	r1,[r0]
	ldr	r0,[r12]
	bl	fpc_div_int64
# Rescheduled
	ldr	r3,.Lj211
# Rescheduled
	ldr	r2,.Lj212
	str	r0,[r3]
	str	r1,[r2]
# [174] box(18,864,640,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#640
	mov	r1,#864
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [175] box(18,960,640,32,244);
	mov	r0,#244
	str	r0,[r13]
	mov	r3,#32
	mov	r2,#640
	mov	r1,#960
	mov	r0,#18
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [176] outtextxyz(18,864,songname,250,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
# Rescheduled
	ldr	r1,.Lj213
	str	r0,[r13]
	ldr	r2,[r1]
	mov	r3,#250
	mov	r1,#864
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [177] outtextxyz(18,960,hhs+':'+mms+':'+sss,190,4,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r1,[r11, #-80]
# Rescheduled
	ldr	r0,.Lj214
	str	r1,[r11, #-244]
# Rescheduled
	ldr	r1,[r11, #-76]
	str	r0,[r11, #-240]
# Rescheduled
	ldr	r0,.Lj214
	str	r1,[r11, #-236]
# Rescheduled
	ldr	r1,[r11, #-84]
	str	r0,[r11, #-232]
	str	r1,[r11, #-228]
	sub	r1,r11,#244
	mov	r3,#0
	mov	r2,#4
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
	mov	r0,#4
	str	r0,[r13]
	mov	r3,#190
	mov	r1,#960
	mov	r0,#18
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# Rescheduled
# [182] avsct1[c1]:=tim;
	ldr	r0,.Lj216
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj217
	str	r0,[r1, r10, lsl #2]
# Rescheduled
# [183] avspt1[c1]:=ts;
	ldr	r0,.Lj218
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj219
	str	r0,[r1, r10, lsl #2]
# Rescheduled
# [184] sidtime1[c1]:=sidtime;
	ldr	r0,.Lj220
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj221
	str	r0,[r1, r10, lsl #2]
# Rescheduled
# [185] av65021[c1]:=time6502;
	ldr	r0,.Lj184
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,[r0]
	ldr	r1,.Lj223
	str	r0,[r1, r10, lsl #2]
# Rescheduled
# [186] avsct:=0; for i:=0 to 59 do avsct+=avsct1[i]; avsct:=round(avsct/60);
	ldr	r0,.Lj224
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj225
	mov	r1,#0
	str	r1,[r0]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj228:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj217
	add	r4,r4,#1
	ldr	r2,[r1, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj224
	mov	r12,r2,asr #31
# Rescheduled
	ldr	r1,.Lj225
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r3,r0,r2
# Rescheduled
	ldr	r2,.Lj224
	adc	r1,r1,r12
# Rescheduled
	ldr	r0,.Lj225
	str	r3,[r2]
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj228
	ldr	r0,.Lj225
# Rescheduled
	ldr	r2,.Lj224
	ldr	r1,[r0]
	ldr	r0,[r2]
	bl	fpc_int64_to_double
	vmov	d1,r0,r1
# [227] end;
	b	.Lj374
.Lj165:
	.long	U_$RETROMALINA_$$_R1
.Lj166:
	.long	393216
.Lj167:
	.long	U_$RETROMALINA_$$_K
.Lj178:
	.long	TC_$UMAIN_$$_C
.Lj179:
	.long	TC_$UMAIN_$$_C+4
.Lj184:
	.long	U_$RETROMALINA_$$_TIME6502
.Lj185:
	.long	U_$RETROMALINA_$$_TIME6502+4
.Lj188:
	.long	TC_$UMAIN_$$_C6
.Lj189:
	.long	TC_$UMAIN_$$_C6+4
.Lj192:
	.long	U_$RETROMALINA_$$_SONGTIME+4
.Lj193:
	.long	U_$RETROMALINA_$$_SONGTIME
.Lj196:
	.long	60000000
.Lj199:
	.long	-694967296
.Lj202:
	.long	.Ld8
.Lj209:
	.long	TC_$RETROMALINA_$$_SIDDELAY+4
.Lj210:
	.long	TC_$RETROMALINA_$$_SIDDELAY
.Lj211:
	.long	U_$RETROMALINA_$$_SONGFREQ
.Lj212:
	.long	U_$RETROMALINA_$$_SONGFREQ+4
.Lj213:
	.long	U_$UMAIN_$$_SONGNAME
.Lj214:
	.long	.Ld9
.Lj216:
	.long	U_$RETROMALINA_$$_TIM
.Lj217:
	.long	U_$UMAIN_$$_AVSCT1
.Lj218:
	.long	U_$RETROMALINA_$$_TS
.Lj219:
	.long	U_$UMAIN_$$_AVSPT1
.Lj220:
	.long	TC_$RETROMALINA_$$_SIDTIME
.Lj221:
	.long	U_$UMAIN_$$_SIDTIME1
.Lj223:
	.long	U_$UMAIN_$$_AV65021
.Lj224:
	.long	TC_$UMAIN_$$_AVSCT
.Lj225:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj374:
	vldr	d0,.Lj236
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r3,.Lj237
# Rescheduled
	ldr	r2,.Lj238
	str	r0,[r3]
	str	r1,[r2]
# Rescheduled
# [187] avspt:=0; for i:=0 to 59 do avspt+=avspt1[i]; avspt:=round(avspt/60);
	ldr	r0,.Lj239
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj240
	mov	r1,#0
	str	r1,[r0]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj243:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj244
	add	r4,r4,#1
	ldr	r2,[r0, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj239
	mov	r12,r2,asr #31
# Rescheduled
	ldr	r1,.Lj240
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r3,.Lj239
	adc	r1,r1,r12
# Rescheduled
	ldr	r0,.Lj240
	str	r2,[r3]
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj243
	ldr	r0,.Lj240
# Rescheduled
	ldr	r2,.Lj239
	ldr	r1,[r0]
	ldr	r0,[r2]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj251
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r3,.Lj239
# Rescheduled
	ldr	r2,.Lj240
	str	r0,[r3]
	str	r1,[r2]
# Rescheduled
# [188] avall:=0; for i:=0 to 59 do avall+=sidtime1[i]; avall:=round(avall/60);
	ldr	r0,.Lj254
	mov	r1,#0
	str	r1,[r0]
# Rescheduled
	ldr	r0,.Lj255
	mov	r1,#0
	str	r1,[r0]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj258:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj259
	add	r4,r4,#1
	ldr	r2,[r0, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj254
	mov	r12,r2,asr #31
# Rescheduled
	ldr	r1,.Lj255
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r2
# Rescheduled
	ldr	r3,.Lj254
	adc	r1,r1,r12
# Rescheduled
	ldr	r0,.Lj255
	str	r2,[r3]
	str	r1,[r0]
	cmp	r4,#59
	blt	.Lj258
	ldr	r0,.Lj255
# Rescheduled
	ldr	r2,.Lj254
	ldr	r1,[r0]
	ldr	r0,[r2]
	bl	fpc_int64_to_double
	vmov	d1,r0,r1
	vldr	d0,.Lj266
	vmul.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r3,.Lj254
# Rescheduled
	ldr	r2,.Lj255
	str	r0,[r3]
	str	r1,[r2]
# Rescheduled
# [189] av6502:=0; for i:=0 to 59 do av6502+=av65021[i]; av6502:=round(av6502/60);
	ldr	r1,.Lj269
	mov	r0,#0
	str	r0,[r1]
# Rescheduled
	ldr	r1,.Lj270
	mov	r0,#0
	str	r0,[r1]
	mov	r4,#0
	sub	r4,r4,#1
	.balign 4
.Lj273:
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r0,.Lj274
	add	r4,r4,#1
	ldr	r2,[r0, r4, lsl #2]
# Rescheduled
	ldr	r0,.Lj269
	mov	r12,r2,asr #31
# Rescheduled
	ldr	r1,.Lj270
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r3,r0,r2
# Rescheduled
	ldr	r2,.Lj269
	adc	r0,r1,r12
# Rescheduled
	ldr	r1,.Lj270
	str	r3,[r2]
	str	r0,[r1]
	cmp	r4,#59
	blt	.Lj273
	ldr	r0,.Lj270
# Rescheduled
	ldr	r2,.Lj269
	ldr	r1,[r0]
	ldr	r0,[r2]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj281
	vmul.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r3,.Lj269
# Rescheduled
	ldr	r2,.Lj270
	str	r0,[r3]
	str	r1,[r2]
# [191] box2(10,1062,1782,1110,118);
	mov	r0,#118
	str	r0,[r13]
	mov	r3,#86
	orr	r3,r3,#1024
	mov	r2,#246
	orr	r2,r2,#1536
	mov	r1,#38
	orr	r1,r1,#1024
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [192] outtextxyz(32,1070,'Times: ',44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
# Rescheduled
	ldr	r2,.Lj284
	mov	r3,#44
	mov	r0,#32
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [196] outtextxyz(144,1070,'screen '+inttostr(avsct)+' us',44,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj285
# Rescheduled
	ldr	r1,.Lj238
	str	r0,[r11, #-236]
# Rescheduled
	ldr	r0,.Lj237
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-248]
# Rescheduled
	ldr	r0,.Lj288
	str	r1,[r11, #-232]
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#44
	mov	r0,#144
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [197] outtextxyz(400,1070,'sprites '+inttostr(avspt)+' us',186,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj289
# Rescheduled
	ldr	r1,.Lj240
	str	r0,[r11, #-236]
# Rescheduled
	ldr	r0,.Lj239
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-248]
# Rescheduled
	ldr	r0,.Lj288
	str	r1,[r11, #-232]
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#186
	mov	r0,#400
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [198] if sidcount<>0 then outtextxyz(656,1070,'SID '+inttostr(avall)+' us',233,2,2);
	ldr	r0,.Lj293
	ldr	r0,[r0]
	cmp	r0,#0
	beq	.Lj295
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj296
# Rescheduled
	ldr	r1,.Lj255
	str	r0,[r11, #-236]
# Rescheduled
	ldr	r0,.Lj254
	ldr	r2,[r1]
	ldr	r1,[r0]
	sub	r0,r11,#248
	bl	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
	ldr	r1,[r11, #-248]
# Rescheduled
	ldr	r0,.Lj288
	str	r1,[r11, #-232]
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#233
	mov	r0,#656
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj295:
# [199] outtextxyz(880,1070,'6502 '+floattostrf((av6502/16),fffixed,4,1)+' us',124,2,2);
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	ldr	r0,.Lj300
	str	r0,[r11, #-236]
	mov	r0,#1
	str	r0,[r13, #4]
	mov	r0,#4
# Rescheduled
	ldr	r1,.Lj270
	str	r0,[r13]
# Rescheduled
	ldr	r0,.Lj269
	ldr	r1,[r1]
	ldr	r0,[r0]
	bl	fpc_int64_to_double
	vmov	d0,r0,r1
	vldr	d1,.Lj303
	vmul.f64	d0,d0,d1
	vmov	r1,r2,d0
	mov	r3,#2
	b	.Lj375
.Lj236:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj237:
	.long	TC_$UMAIN_$$_AVSCT
.Lj238:
	.long	TC_$UMAIN_$$_AVSCT+4
.Lj239:
	.long	TC_$UMAIN_$$_AVSPT
.Lj240:
	.long	TC_$UMAIN_$$_AVSPT+4
.Lj244:
	.long	U_$UMAIN_$$_AVSPT1
.Lj251:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj254:
	.long	TC_$UMAIN_$$_AVALL
.Lj255:
	.long	TC_$UMAIN_$$_AVALL+4
.Lj259:
	.long	U_$UMAIN_$$_SIDTIME1
.Lj266:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj269:
	.long	TC_$UMAIN_$$_AV6502
.Lj270:
	.long	TC_$UMAIN_$$_AV6502+4
.Lj274:
	.long	U_$UMAIN_$$_AV65021
.Lj281:
# value: 0d+1.6666666666666666E-002
	.byte	17,17,17,17,17,17,145,63
.Lj284:
	.long	.Ld10
.Lj285:
	.long	.Ld11
.Lj288:
	.long	.Ld12
.Lj289:
	.long	.Ld13
.Lj293:
	.long	TC_$RETROMALINA_$$_SIDCOUNT
.Lj296:
	.long	.Ld14
.Lj300:
	.long	.Ld15
.Lj303:
# value: 0d+6.2500000000000000E-002
	.byte	0,0,0,0,0,0,176,63
.Lj375:
	sub	r0,r11,#248
	bl	SYSUTILS_$$_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
	ldr	r1,[r11, #-248]
# Rescheduled
	ldr	r0,.Lj304
	str	r1,[r11, #-232]
	str	r0,[r11, #-228]
	sub	r1,r11,#236
	mov	r3,#0
	mov	r2,#2
	sub	r0,r11,#224
	bl	fpc_ansistr_concat_multi
	ldr	r2,[r11, #-224]
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#124
	mov	r0,#880
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [200] outtextxyz(1280,1070,clock,220,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	ldr	r2,[r11, #-92]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#220
	mov	r0,#1280
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [201] if peek($70003)=1 then outtextxyz(1540,1070,inttostr(peek($d404)shr 4),108,2,2);
	mov	r0,#3
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj306
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r0,#4
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#4
	orr	r0,r0,#1536
	mov	r3,#108
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj306:
# [202] if peek($70004)=1 then outtextxyz(1580,1070,inttostr(peek($d40b)shr 4),200,2,2);
	mov	r0,#4
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj308
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r0,#11
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#44
	orr	r0,r0,#1536
	mov	r3,#200
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj308:
# [203] if peek($70005)=1 then outtextxyz(1620,1070,inttostr(peek($d412)shr 4),40,2,2);
	mov	r0,#5
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	cmp	r0,#1
	bne	.Lj310
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r0,#18
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,r0,lsr #4
	mov	r2,#0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r0,#84
	orr	r0,r0,#1536
	mov	r3,#40
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
.Lj310:
# [204] outtextxyz(1680,1070,inttostr(dpeek($60028)),44,2,2);
	mov	r0,#2
	str	r0,[r13, #4]
# Peephole MovStrMov done
	str	r0,[r13]
	mov	r0,#40
	orr	r0,r0,#393216
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	mov	r1,r0
	sub	r0,r11,#224
	bl	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
	ldr	r2,[r11, #-224]
	mov	r1,#46
	orr	r1,r1,#1024
	mov	r3,#44
	mov	r0,#1680
	bl	RETROMALINA_$$_OUTTEXTXYZ$LONGINT$LONGINT$ANSISTRING$LONGINT$LONGINT$LONGINT
# [205] for i:=64 to 88 do lpoke($10000+4*i,lpeek($10000+2048+4*((c div 2) mod 256)+4*i));
	mov	r4,#64
	sub	r4,r4,#1
	.balign 4
.Lj313:
# Rescheduled
	ldr	r0,.Lj314
	add	r4,r4,#1
# Rescheduled
	ldr	r1,.Lj315
	ldr	r6,[r0]
	ldr	r5,[r1]
	mov	r2,#63
	mov	r1,r5
	mov	r0,r6
	bl	fpc_sarint64
	and	r0,r0,#1
	mov	r1,#0
	adds	r0,r0,r6
	adc	r1,r1,r5
	mov	r2,#1
	bl	fpc_sarint64
	mov	r5,r0
	mov	r6,r1
	mov	r2,#63
	mov	r1,r6
	mov	r0,r5
	bl	fpc_sarint64
	eor	r2,r0,r5
	eor	r12,r1,r6
	subs	r3,r2,r0
	sbc	r2,r12,r1
	and	r2,r3,#255
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r0,r2,r0
	sbc	r1,r3,r1
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	mov	r2,r1,lsl #2
	mov	r1,r0,lsl #2
	orr	r2,r2,r0,lsr #30
	adds	r1,r1,#67584
	adc	r2,r2,#0
	mov	r0,r4,lsl #2
	mov	r3,r0,asr #31
	adds	r0,r0,r1
	adc	r1,r3,r2
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,r0
	mov	r0,r4,lsl #2
	add	r0,r0,#65536
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
	cmp	r4,#88
	blt	.Lj313
# [206] if (c mod 32)=0 then lpoke($10000+4*89,lpeek($10000+2048+(4*(c div 32) mod 256)))   ;
	ldr	r0,.Lj314
# Rescheduled
	ldr	r1,.Lj315
	ldr	r5,[r0]
	ldr	r4,[r1]
	mov	r2,#63
	mov	r1,r4
	mov	r0,r5
	bl	fpc_sarint64
	eor	r3,r0,r5
	eor	r2,r1,r4
	subs	r3,r3,r0
	sbc	r2,r2,r1
	and	r2,r3,#31
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r0,r2,r0
	sbc	r1,r3,r1
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	orrs	r0,r0,r1
	bne	.Lj319
	ldr	r0,.Lj314
# Rescheduled
	ldr	r1,.Lj315
	ldr	r5,[r0]
	ldr	r4,[r1]
	mov	r2,#63
	mov	r1,r4
	mov	r0,r5
	bl	fpc_sarint64
	and	r0,r0,#31
	mov	r1,#0
	adds	r0,r0,r5
	adc	r1,r1,r4
	mov	r2,#5
	bl	fpc_sarint64
	mov	r5,r1,lsl #2
	mov	r4,r0,lsl #2
	orr	r5,r5,r0,lsr #30
	mov	r2,#63
	mov	r1,r5
	mov	r0,r4
	bl	fpc_sarint64
	eor	r3,r0,r4
	eor	r2,r1,r5
	subs	r3,r3,r0
	sbc	r2,r2,r1
	and	r2,r3,#255
	mov	r3,#0
	eor	r2,r2,r0
	eor	r3,r3,r1
	subs	r0,r2,r0
	sbc	r1,r3,r1
# Peephole DataMov2Data removed superfluous mov
# Peephole DataMov2Data removed superfluous mov
	adds	r0,r0,#67584
	adc	r1,r1,#0
	bl	RETROMALINA_$$_LPEEK$LONGINT$$LONGWORD
	mov	r1,r0
	mov	r0,#65536
	orr	r0,r0,#356
	bl	RETROMALINA_$$_LPOKE$LONGINT$LONGWORD
.Lj319:
# [207] cc:=(2*c) mod 3544 ;
	ldr	r0,.Lj314
# Rescheduled
	ldr	r1,.Lj315
	ldr	r0,[r0]
	ldr	r1,[r1]
	adds	r2,r0,r0
	adc	r3,r1,r1
	mov	r1,#0
	mov	r0,#216
	orr	r0,r0,#3328
	bl	fpc_mod_int64
	mov	r4,r0
# [208] if cc<1772 then blit($1800000,10+(cc),1011,$1000000,12,1011,1771-(cc),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	bge	.Lj325
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#12
	str	r0,[r13]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#235
	orr	r0,r0,#1536
	sub	r0,r0,r4
	str	r0,[r13, #8]
	add	r1,r4,#10
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#16777216
	mov	r0,#25165824
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj325:
# [209] if cc<1772 then blit($1800000,10,1059,$1000000,11+1771-(cc),1011,(cc),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	bge	.Lj327
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	str	r4,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#246
	orr	r0,r0,#1536
	sub	r0,r0,r4
	str	r0,[r13]
	mov	r2,#35
	orr	r2,r2,#1024
	mov	r3,#16777216
	mov	r1,#10
	mov	r0,#25165824
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj327:
# [210] if cc>=1772 then blit ($1800000,10,1011,$1000000,11+3543-(cc),1011,(cc-1772),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	blt	.Lj329
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	sub	r0,r4,#236
	sub	r0,r0,#1536
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r0,#226
	orr	r0,r0,#3328
	sub	r0,r0,r4
	str	r0,[r13]
	mov	r2,#243
	orr	r2,r2,#768
	mov	r3,#16777216
	mov	r1,#10
	mov	r0,#25165824
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj329:
# [211] if cc>=1772 then blit($1800000,10+(cc-1772),1059,$1000000,12,1011,1771-(cc-1772),48,1792,1792);
	mov	r0,#236
	orr	r0,r0,#1536
	cmp	r4,r0
	blt	.Lj331
	mov	r0,#1792
	str	r0,[r13, #20]
# Peephole MovStrMov done
	str	r0,[r13, #16]
	mov	r0,#48
	str	r0,[r13, #12]
	mov	r0,#12
	str	r0,[r13]
	sub	r1,r4,#236
	sub	r1,r1,#1536
	mov	r0,#235
	orr	r0,r0,#1536
	sub	r0,r0,r1
	str	r0,[r13, #8]
	mov	r0,#243
	orr	r0,r0,#768
	str	r0,[r13, #4]
	mov	r2,#35
	orr	r2,r2,#1024
	sub	r0,r4,#236
	sub	r0,r0,#1536
	add	r1,r0,#10
	mov	r3,#16777216
	mov	r0,#25165824
	bl	RETROMALINA_$$_BLIT$crc5A667533
.Lj331:
# [212] box2(10,610,894,797,178);
	mov	r0,#178
	str	r0,[r13]
	mov	r3,#29
	orr	r3,r3,#768
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#98
	orr	r1,r1,#512
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [213] box2(10,700,894,701,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#189
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#700
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [214] box2(10,636,894,637,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#125
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#636
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# [215] box2(10,764,894,765,140);
	mov	r0,#140
	str	r0,[r13]
	mov	r3,#253
	orr	r3,r3,#512
	mov	r2,#126
	orr	r2,r2,#768
	mov	r1,#764
	mov	r0,#10
	bl	RETROMALINA_$$_BOX2$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
# Rescheduled
# [216] for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 512,2,2,190);
	ldr	r0,.Lj335
	mov	r1,#20
# Rescheduled
	ldr	r2,.Lj335
	str	r1,[r0]
	ldr	r0,[r2]
	sub	r0,r0,#1
	str	r0,[r2]
	.balign 4
.Lj334:
	ldr	r2,.Lj335
	ldr	r0,[r2]
	add	r1,r0,#1
# Rescheduled
	ldr	r0,.Lj335
	str	r1,[r2]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj339
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	movs	r0,r0
	rsbmi	r0,r0,#0
	mov	r1,#176
	orr	r1,r1,#45824
	cmp	r0,r1
	bge	.Lj341
	mov	r1,#190
# Rescheduled
	ldr	r0,.Lj335
	str	r1,[r13]
# Rescheduled
# Peephole FoldShiftLdrStr done
# Rescheduled
	ldr	r1,.Lj339
	ldr	r0,[r0]
	ldr	r0,[r1, r0, lsl #2]
	mov	r1,r0,asr #31
	add	r0,r0,r1,lsr #23
# Peephole FoldShiftProcess done
	mov	r1,#700
	sub	r1,r1,r0,asr #9
# Rescheduled
	ldr	r0,.Lj335
	ldr	r0,[r0]
	add	r0,r0,#20
	mov	r3,#2
	mov	r2,#2
	bl	RETROMALINA_$$_BOX$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
.Lj341:
	ldr	r0,.Lj335
	ldr	r0,[r0]
	cmp	r0,#840
	blt	.Lj334
# [217] sprx:=round(dpeek($d400)/40+74);
	mov	r0,#54272
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d0,s0
	b	.Lj376
.Lj304:
	.long	.Ld12
.Lj314:
	.long	TC_$UMAIN_$$_C
.Lj315:
	.long	TC_$UMAIN_$$_C+4
.Lj335:
	.long	U_$RETROMALINA_$$_J
.Lj339:
	.long	U_$RETROMALINA_$$_SCOPE
.Lj376:
	vldr	d1,.Lj346
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj347
	vadd.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj348
	str	r0,[r1]
# [218] spry:=920-3*(peek($d406) and $F0);
	mov	r0,#6
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r0,r0,r0,lsl #1
	mov	r1,#920
# Rescheduled
	ldr	r2,.Lj349
	sub	r1,r1,r0
# Rescheduled
# [219] raml^[$18010]:=(spry shl 16)+sprx+2048*(1-peek($70003));
	ldr	r0,.Lj349
	str	r1,[r2]
	ldr	r0,[r0]
# Rescheduled
	ldr	r1,.Lj348
	mov	r2,r0,lsl #16
	ldr	r0,[r1]
	add	r4,r0,r2
	mov	r0,#3
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r3,.Lj352
	add	r2,r4,r0,lsl #11
# Rescheduled
# Rescheduled
	ldr	r0,[r3]
	ldr	r1,.Lj353
	str	r2,[r0, r1]
# [220] spr2x:=round(dpeek($d407)/40+74);
	mov	r0,#7
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d0,s0
	vldr	d1,.Lj354
	vmul.f64	d0,d0,d1
	vldr	d1,.Lj355
	vadd.f64	d0,d0,d1
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj356
	str	r0,[r1]
# [221] spr2y:=920-3*(peek($d40d) and $F0);
	mov	r0,#13
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r0,r0,r0,lsl #1
	mov	r1,#920
# Rescheduled
	ldr	r2,.Lj357
	sub	r0,r1,r0
# Rescheduled
# [222] raml^[$18012]:=(spr2y shl 16)+spr2x+2048*(1-peek($70004));
	ldr	r1,.Lj357
	str	r0,[r2]
	ldr	r0,[r1]
# Rescheduled
	ldr	r1,.Lj356
	mov	r2,r0,lsl #16
	ldr	r0,[r1]
	add	r4,r0,r2
	mov	r0,#4
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r3,.Lj352
	add	r1,r4,r0,lsl #11
# Rescheduled
# Rescheduled
	ldr	r0,[r3]
	ldr	r2,.Lj361
	str	r1,[r0, r2]
# [223] spr3x:=round(dpeek($d40e)/40+74);
	mov	r0,#14
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_DPEEK$LONGINT$$WORD
	vmov	s0,r0
	vcvt.f64.u32	d1,s0
	vldr	d0,.Lj362
	vmul.f64	d1,d1,d0
	vldr	d0,.Lj363
	vadd.f64	d0,d1,d0
	vmov	r0,r1,d0
	bl	fpc_round_real
# Rescheduled
	ldr	r1,.Lj364
	str	r0,[r1]
# [224] spr3y:=920-3*(peek($d414) and $F0);
	mov	r0,#20
	orr	r0,r0,#54272
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	and	r0,r0,#240
	add	r1,r0,r0,lsl #1
	mov	r0,#920
# Rescheduled
	ldr	r2,.Lj365
	sub	r0,r0,r1
# Rescheduled
# [225] raml^[$18014]:=(spr3y shl 16)+spr3x+2048*(1-peek($70005));
	ldr	r1,.Lj365
	str	r0,[r2]
	ldr	r0,[r1]
# Rescheduled
	ldr	r2,.Lj364
	mov	r1,r0,lsl #16
	ldr	r0,[r2]
	add	r4,r0,r1
	mov	r0,#5
	orr	r0,r0,#458752
	bl	RETROMALINA_$$_PEEK$LONGINT$$BYTE
	mov	r1,#1
	sub	r0,r1,r0
# Rescheduled
# Peephole FoldShiftProcess done
	ldr	r2,.Lj352
	add	r1,r4,r0,lsl #11
# Rescheduled
	ldr	r3,.Lj369
	ldr	r0,[r2]
# Rescheduled
# [226] raml^[$1801e]:=raml^[$1800B] shl 1;
	ldr	r2,.Lj352
	str	r1,[r0, r3]
# Rescheduled
# Rescheduled
	ldr	r0,[r2]
	ldr	r1,.Lj371
	ldr	r0,[r0, r1]
# Rescheduled
	ldr	r1,.Lj352
	mov	r2,r0,lsl #1
# Rescheduled
# Rescheduled
	ldr	r0,[r1]
	ldr	r3,.Lj373
	str	r2,[r0, r3]
.Lj163:
	bl	fpc_popaddrstack
	sub	r0,r11,#248
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#224
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#76
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#80
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#84
	bl	fpc_ansistr_decr_ref
	sub	r0,r11,#92
	bl	fpc_ansistr_decr_ref
	ldr	r0,[r11, #-212]
	cmp	r0,#0
	blne	fpc_reraise
	ldmea	r11,{r4,r5,r6,r7,r8,r9,r10,r11,r13,r15}
.Lj346:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj347:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj348:
	.long	U_$UMAIN_$$_SPRX
.Lj349:
	.long	U_$UMAIN_$$_SPRY
.Lj352:
	.long	U_$RETROMALINA_$$_R1
.Lj353:
	.long	393280
.Lj354:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj355:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj356:
	.long	U_$UMAIN_$$_SPR2X
.Lj357:
	.long	U_$UMAIN_$$_SPR2Y
.Lj361:
	.long	393288
.Lj362:
# value: 0d+2.5000000000000001E-002
	.byte	154,153,153,153,153,153,153,63
.Lj363:
# value: 0d+7.4000000000000000E+001
	.byte	0,0,0,0,0,128,82,64
.Lj364:
	.long	U_$UMAIN_$$_SPR3X
.Lj365:
	.long	U_$UMAIN_$$_SPR3Y
.Lj369:
	.long	393296
.Lj371:
	.long	393260
.Lj373:
	.long	393336
.Le2:
	.size	UMAIN_$$_MAIN2, .Le2 - UMAIN_$$_MAIN2

.section .text.n_umain_$$_init_implicit
	.balign 4
.globl	INIT$_$UMAIN
INIT$_$UMAIN:
.globl	UMAIN_$$_init_implicit
UMAIN_$$_init_implicit:
	stmfd	r13!,{r14}
	ldmfd	r13!,{r15}
.Le3:
	.size	UMAIN_$$_init_implicit, .Le3 - UMAIN_$$_init_implicit

.section .text.n_umain_$$_finalize_implicit
	.balign 4
.globl	FINALIZE$_$UMAIN
FINALIZE$_$UMAIN:
.globl	UMAIN_$$_finalize_implicit
UMAIN_$$_finalize_implicit:
	stmfd	r13!,{r14}
	ldr	r0,.Lj381
	bl	fpc_ansistr_decr_ref
	ldmfd	r13!,{r15}
.Lj381:
	.long	U_$UMAIN_$$_SONGNAME
.Le4:
	.size	UMAIN_$$_finalize_implicit, .Le4 - UMAIN_$$_finalize_implicit
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_$umain_$$_test
	.balign 4
# [umain.pas]
# [10] var test:integer ;
	.globl U_$UMAIN_$$_TEST
	.size U_$UMAIN_$$_TEST,4
U_$UMAIN_$$_TEST:
	.zero 4

.section .bss.n_u_$umain_$$_songname
	.balign 4
# [13] songname:string;
	.globl U_$UMAIN_$$_SONGNAME
	.size U_$UMAIN_$$_SONGNAME,4
U_$UMAIN_$$_SONGNAME:
	.zero 4

.section .bss.n_u_$umain_$$_q1
	.balign 4
# [14] q1,q2,q3:extended;
	.globl U_$UMAIN_$$_Q1
	.size U_$UMAIN_$$_Q1,8
U_$UMAIN_$$_Q1:
	.zero 8

.section .bss.n_u_$umain_$$_q2
	.balign 4
	.globl U_$UMAIN_$$_Q2
	.size U_$UMAIN_$$_Q2,8
U_$UMAIN_$$_Q2:
	.zero 8

.section .bss.n_u_$umain_$$_q3
	.balign 4
	.globl U_$UMAIN_$$_Q3
	.size U_$UMAIN_$$_Q3,8
U_$UMAIN_$$_Q3:
	.zero 8

.section .bss.n_u_$umain_$$_thread
	.balign 4
# [15] thread:TRetro;
	.globl U_$UMAIN_$$_THREAD
	.size U_$UMAIN_$$_THREAD,4
U_$UMAIN_$$_THREAD:
	.zero 4

.section .bss.n_u_$umain_$$_sprx
	.balign 4
# [16] sprx,sprxd,spryd,spry:integer;
	.globl U_$UMAIN_$$_SPRX
	.size U_$UMAIN_$$_SPRX,4
U_$UMAIN_$$_SPRX:
	.zero 4

.section .bss.n_u_$umain_$$_sprxd
	.balign 4
	.globl U_$UMAIN_$$_SPRXD
	.size U_$UMAIN_$$_SPRXD,4
U_$UMAIN_$$_SPRXD:
	.zero 4

.section .bss.n_u_$umain_$$_spryd
	.balign 4
	.globl U_$UMAIN_$$_SPRYD
	.size U_$UMAIN_$$_SPRYD,4
U_$UMAIN_$$_SPRYD:
	.zero 4

.section .bss.n_u_$umain_$$_spry
	.balign 4
	.globl U_$UMAIN_$$_SPRY
	.size U_$UMAIN_$$_SPRY,4
U_$UMAIN_$$_SPRY:
	.zero 4

.section .bss.n_u_$umain_$$_spr2x
	.balign 4
# [17] spr2x,spr2xd,spr2yd,spr2y:integer;
	.globl U_$UMAIN_$$_SPR2X
	.size U_$UMAIN_$$_SPR2X,4
U_$UMAIN_$$_SPR2X:
	.zero 4

.section .bss.n_u_$umain_$$_spr2xd
	.balign 4
	.globl U_$UMAIN_$$_SPR2XD
	.size U_$UMAIN_$$_SPR2XD,4
U_$UMAIN_$$_SPR2XD:
	.zero 4

.section .bss.n_u_$umain_$$_spr2yd
	.balign 4
	.globl U_$UMAIN_$$_SPR2YD
	.size U_$UMAIN_$$_SPR2YD,4
U_$UMAIN_$$_SPR2YD:
	.zero 4

.section .bss.n_u_$umain_$$_spr2y
	.balign 4
	.globl U_$UMAIN_$$_SPR2Y
	.size U_$UMAIN_$$_SPR2Y,4
U_$UMAIN_$$_SPR2Y:
	.zero 4

.section .bss.n_u_$umain_$$_spr3x
	.balign 4
# [18] spr3x,spr3xd,spr3yd,spr3y:integer;
	.globl U_$UMAIN_$$_SPR3X
	.size U_$UMAIN_$$_SPR3X,4
U_$UMAIN_$$_SPR3X:
	.zero 4

.section .bss.n_u_$umain_$$_spr3xd
	.balign 4
	.globl U_$UMAIN_$$_SPR3XD
	.size U_$UMAIN_$$_SPR3XD,4
U_$UMAIN_$$_SPR3XD:
	.zero 4

.section .bss.n_u_$umain_$$_spr3yd
	.balign 4
	.globl U_$UMAIN_$$_SPR3YD
	.size U_$UMAIN_$$_SPR3YD,4
U_$UMAIN_$$_SPR3YD:
	.zero 4

.section .bss.n_u_$umain_$$_spr3y
	.balign 4
	.globl U_$UMAIN_$$_SPR3Y
	.size U_$UMAIN_$$_SPR3Y,4
U_$UMAIN_$$_SPR3Y:
	.zero 4

.section .bss.n_u_$umain_$$_qq
	.balign 4
# [26] qq:integer;
	.globl U_$UMAIN_$$_QQ
	.size U_$UMAIN_$$_QQ,4
U_$UMAIN_$$_QQ:
	.zero 4

.section .bss.n_u_$umain_$$_avsct1
	.balign 4
# [27] avsct1,avspt1,sidtime1,av65021:array[0..59] of integer;
	.globl U_$UMAIN_$$_AVSCT1
	.size U_$UMAIN_$$_AVSCT1,240
U_$UMAIN_$$_AVSCT1:
	.zero 240

.section .bss.n_u_$umain_$$_avspt1
	.balign 4
	.globl U_$UMAIN_$$_AVSPT1
	.size U_$UMAIN_$$_AVSPT1,240
U_$UMAIN_$$_AVSPT1:
	.zero 240

.section .bss.n_u_$umain_$$_sidtime1
	.balign 4
	.globl U_$UMAIN_$$_SIDTIME1
	.size U_$UMAIN_$$_SIDTIME1,240
U_$UMAIN_$$_SIDTIME1:
	.zero 240

.section .bss.n_u_$umain_$$_av65021
	.balign 4
	.globl U_$UMAIN_$$_AV65021
	.size U_$UMAIN_$$_AV65021,240
U_$UMAIN_$$_AV65021:
	.zero 240
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$UMAIN_$$_LICZNIK
	.balign 4
.globl	TC_$UMAIN_$$_LICZNIK
TC_$UMAIN_$$_LICZNIK:
	.long	0
.Le5:
	.size	TC_$UMAIN_$$_LICZNIK, .Le5 - TC_$UMAIN_$$_LICZNIK

.section .data.n_TC_$UMAIN_$$_C
	.balign 4
.globl	TC_$UMAIN_$$_C
TC_$UMAIN_$$_C:
	.long	0,0
# [20] c6:int64=1;
.Le6:
	.size	TC_$UMAIN_$$_C, .Le6 - TC_$UMAIN_$$_C

.section .data.n_TC_$UMAIN_$$_C6
	.balign 4
.globl	TC_$UMAIN_$$_C6
TC_$UMAIN_$$_C6:
	.long	1,0
# [21] avsct:int64=0;
.Le7:
	.size	TC_$UMAIN_$$_C6, .Le7 - TC_$UMAIN_$$_C6

.section .data.n_TC_$UMAIN_$$_AVSCT
	.balign 4
.globl	TC_$UMAIN_$$_AVSCT
TC_$UMAIN_$$_AVSCT:
	.long	0,0
# [22] avspt:int64=0;
.Le8:
	.size	TC_$UMAIN_$$_AVSCT, .Le8 - TC_$UMAIN_$$_AVSCT

.section .data.n_TC_$UMAIN_$$_AVSPT
	.balign 4
.globl	TC_$UMAIN_$$_AVSPT
TC_$UMAIN_$$_AVSPT:
	.long	0,0
# [23] avall:int64=0;
.Le9:
	.size	TC_$UMAIN_$$_AVSPT, .Le9 - TC_$UMAIN_$$_AVSPT

.section .data.n_TC_$UMAIN_$$_AVALL
	.balign 4
.globl	TC_$UMAIN_$$_AVALL
TC_$UMAIN_$$_AVALL:
	.long	0,0
# [24] avsid:int64=0;
.Le10:
	.size	TC_$UMAIN_$$_AVALL, .Le10 - TC_$UMAIN_$$_AVALL

.section .data.n_TC_$UMAIN_$$_AVSID
	.balign 4
.globl	TC_$UMAIN_$$_AVSID
TC_$UMAIN_$$_AVSID:
	.long	0,0
# [25] av6502:int64=0;
.Le11:
	.size	TC_$UMAIN_$$_AVSID, .Le11 - TC_$UMAIN_$$_AVSID

.section .data.n_TC_$UMAIN_$$_AV6502
	.balign 4
.globl	TC_$UMAIN_$$_AV6502
TC_$UMAIN_$$_AV6502:
	.long	0,0
.Le12:
	.size	TC_$UMAIN_$$_AV6502, .Le12 - TC_$UMAIN_$$_AV6502

.section .rodata.n_.Ld1
	.balign 4
.Ld1$strlab:
	.short	0,1
	.long	-1,46
.Ld1:
	.ascii	"The retromachine player v. 0.09 --- 2016.10.09\000"
.Le13:
	.size	.Ld1$strlab, .Le13 - .Ld1$strlab

.section .rodata.n_.Ld2
	.balign 4
.Ld2$strlab:
	.short	0,1
	.long	-1,12
.Ld2:
	.ascii	"Screen time:\000"
.Le14:
	.size	.Ld2$strlab, .Le14 - .Ld2$strlab

.section .rodata.n_.Ld3
	.balign 4
.Ld3$strlab:
	.short	0,1
	.long	-1,110
.Ld3:
	.ascii	"A retromachine SID player by pik33 --- inspired by "
	.ascii	"Johannes Ahlebrand's Parallax Propeller SIDCog --- "
	.ascii	"F1,F2,F3\000"
.Le15:
	.size	.Ld3$strlab, .Le15 - .Ld3$strlab

.section .rodata.n_.Ld4
	.balign 4
.Ld4$strlab:
	.short	0,1
	.long	-1,105
.Ld4:
	.ascii	"- channels 1..3 on/off; 1-100 Hz, 2-200 Hz, 3-150 H"
	.ascii	"z, 4-400 Hz, 5-50 Hz; F - toggle fullscreen, P - pa"
	.ascii	"use\000"
.Le16:
	.size	.Ld4$strlab, .Le16 - .Ld4$strlab

.section .rodata.n_.Ld5
	.balign 4
.Ld5$strlab:
	.short	0,1
	.long	-1,11
.Ld5:
	.ascii	"Now playing\000"
.Le17:
	.size	.Ld5$strlab, .Le17 - .Ld5$strlab

.section .rodata.n_.Ld6
	.balign 4
.Ld6$strlab:
	.short	0,1
	.long	-1,9
.Ld6:
	.ascii	"File info\000"
.Le18:
	.size	.Ld6$strlab, .Le18 - .Ld6$strlab

.section .rodata.n_.Ld7
	.balign 4
.Ld7$strlab:
	.short	0,1
	.long	-1,5
.Ld7:
	.ascii	"Files\000"
.Le19:
	.size	.Ld7$strlab, .Le19 - .Ld7$strlab

.section .rodata.n_.Ld8
	.balign 4
.Ld8$strlab:
	.short	0,1
	.long	-1,1
.Ld8:
	.ascii	"0\000"
.Le20:
	.size	.Ld8$strlab, .Le20 - .Ld8$strlab

.section .rodata.n_.Ld9
	.balign 4
.Ld9$strlab:
	.short	0,1
	.long	-1,1
.Ld9:
	.ascii	":\000"
.Le21:
	.size	.Ld9$strlab, .Le21 - .Ld9$strlab

.section .rodata.n_.Ld10
	.balign 4
.Ld10$strlab:
	.short	0,1
	.long	-1,7
.Ld10:
	.ascii	"Times: \000"
.Le22:
	.size	.Ld10$strlab, .Le22 - .Ld10$strlab

.section .rodata.n_.Ld11
	.balign 4
.Ld11$strlab:
	.short	0,1
	.long	-1,7
.Ld11:
	.ascii	"screen \000"
.Le23:
	.size	.Ld11$strlab, .Le23 - .Ld11$strlab

.section .rodata.n_.Ld12
	.balign 4
.Ld12$strlab:
	.short	0,1
	.long	-1,3
.Ld12:
	.ascii	" us\000"
.Le24:
	.size	.Ld12$strlab, .Le24 - .Ld12$strlab

.section .rodata.n_.Ld13
	.balign 4
.Ld13$strlab:
	.short	0,1
	.long	-1,8
.Ld13:
	.ascii	"sprites \000"
.Le25:
	.size	.Ld13$strlab, .Le25 - .Ld13$strlab

.section .rodata.n_.Ld14
	.balign 4
.Ld14$strlab:
	.short	0,1
	.long	-1,4
.Ld14:
	.ascii	"SID \000"
.Le26:
	.size	.Ld14$strlab, .Le26 - .Ld14$strlab

.section .rodata.n_.Ld15
	.balign 4
.Ld15$strlab:
	.short	0,1
	.long	-1,5
.Ld15:
	.ascii	"6502 \000"
.Le27:
	.size	.Ld15$strlab, .Le27 - .Ld15$strlab
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$UMAIN_$$_def00000006
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000006
RTTI_$UMAIN_$$_def00000006:
	.byte	12,0,0,0
	.long	20,5
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
# [232] 
.Le28:
	.size	RTTI_$UMAIN_$$_def00000006, .Le28 - RTTI_$UMAIN_$$_def00000006

.section .rodata.n_RTTI_$UMAIN_$$_def00000007
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000007
RTTI_$UMAIN_$$_def00000007:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le29:
	.size	RTTI_$UMAIN_$$_def00000007, .Le29 - RTTI_$UMAIN_$$_def00000007

.section .rodata.n_RTTI_$UMAIN_$$_def00000008
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000008
RTTI_$UMAIN_$$_def00000008:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le30:
	.size	RTTI_$UMAIN_$$_def00000008, .Le30 - RTTI_$UMAIN_$$_def00000008

.section .rodata.n_RTTI_$UMAIN_$$_def00000009
	.balign 4
.globl	RTTI_$UMAIN_$$_def00000009
RTTI_$UMAIN_$$_def00000009:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le31:
	.size	RTTI_$UMAIN_$$_def00000009, .Le31 - RTTI_$UMAIN_$$_def00000009

.section .rodata.n_RTTI_$UMAIN_$$_def0000000A
	.balign 4
.globl	RTTI_$UMAIN_$$_def0000000A
RTTI_$UMAIN_$$_def0000000A:
	.byte	12,0,0,0
	.long	12,3
	.long	RTTI_$SYSTEM_$$_RAWBYTESTRING
	.byte	1,0,0,0
	.long	RTTI_$SYSTEM_$$_LONGINT
.Le32:
	.size	RTTI_$UMAIN_$$_def0000000A, .Le32 - RTTI_$UMAIN_$$_def0000000A
# End asmlist al_rtti

