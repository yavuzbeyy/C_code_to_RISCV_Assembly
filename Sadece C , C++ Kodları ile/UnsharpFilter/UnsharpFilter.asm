	.file	"filter.cpp"
	.option nopic
	.attribute arch, "rv32i2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.srodata,"a"
	.align	2
	.type	_ZL4SIZE, @object
	.size	_ZL4SIZE, 4
_ZL4SIZE:
	.word	256
	.align	2
	.type	_ZL3RGB, @object
	.size	_ZL3RGB, 4
_ZL3RGB:
	.word	3
	.section	.rodata
	.align	2
.LC2:
	.string	"usage: ./filter <input file> <filter name> <filter parameters>"
	.align	2
.LC3:
	.string	" <output file name>"
	.align	2
.LC4:
	.string	"unable to open "
	.align	2
.LC5:
	.string	" for input."
	.align	2
.LC6:
	.string	"sobel"
	.align	2
.LC7:
	.string	"blur"
	.align	2
.LC8:
	.string	"not enough arguments for blur."
	.align	2
.LC9:
	.string	"unsharp"
	.align	2
.LC10:
	.string	"not enough arguments for unsharp."
	.align	2
.LC11:
	.string	"dummy"
	.align	2
.LC12:
	.string	"unknown filter type."
	.align	2
.LC13:
	.string	"error writing file "
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB2601:
	.cfi_startproc
	addi	sp,sp,-1040
	.cfi_def_cfa_offset 1040
	sw	ra,1036(sp)
	sw	s0,1032(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1040
	.cfi_def_cfa 8, 0
	li	t0,-393216
	add	sp,sp,t0
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-1012(a5)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1016(a5)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-1012(a5)
	li	a5,2
	bgt	a4,a5,.L2
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	li	a5,-1
	j	.L13
.L2:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,4
	lw	a4,0(a5)
	li	a5,-196608
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a5
	mv	a0,a4
	call	_Z10readRGBBMPPKcPA256_A3_h
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L4
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,4
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	li	a5,-1
	j	.L13
.L4:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,8
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	strcmp
	mv	a5,a0
	bne	a5,zero,.L5
	li	a5,-196608
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-393216
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_Z5sobelPA256_A3_hS1_
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	j	.L6
.L5:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,8
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	strcmp
	mv	a5,a0
	bne	a5,zero,.L7
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-1012(a5)
	li	a5,5
	bgt	a4,a5,.L8
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	li	a5,-1
	j	.L13
.L8:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,12
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-28(s0)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,16
	lw	a5,0(a5)
	mv	a0,a5
	call	atof
	fsd	fa0,-40(s0)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	lw	a5,20(a5)
	sw	a5,-20(s0)
	li	a5,-196608
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-393216
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa0,-40(s0)
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	_Z15gaussian_filterPA256_A3_hS1_id
	j	.L6
.L7:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,8
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	strcmp
	mv	a5,a0
	bne	a5,zero,.L9
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-1012(a5)
	li	a5,6
	bgt	a4,a5,.L10
	lui	a5,%hi(.LC10)
	addi	a1,a5,%lo(.LC10)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	li	a5,-1
	j	.L13
.L10:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,12
	lw	a5,0(a5)
	mv	a0,a5
	call	atoi
	sw	a0,-28(s0)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,16
	lw	a5,0(a5)
	mv	a0,a5
	call	atof
	fsd	fa0,-40(s0)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,20
	lw	a5,0(a5)
	mv	a0,a5
	call	atof
	fsd	fa0,-48(s0)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	li	a5,-196608
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-393216
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa1,-48(s0)
	fld	fa0,-40(s0)
	lw	a2,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	_Z7unsharpPA256_A3_hS1_idd
	j	.L6
.L9:
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,8
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	strcmp
	mv	a5,a0
	bne	a5,zero,.L11
	li	a5,-196608
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-393216
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_Z5dummyPA256_A3_hS1_
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	lw	a5,12(a5)
	sw	a5,-20(s0)
	j	.L6
.L11:
	lui	a5,%hi(.LC12)
	addi	a1,a5,%lo(.LC12)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	li	a5,-1
	j	.L13
.L6:
	li	a5,-393216
	addi	a5,a5,-32
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a1,a5
	lw	a0,-20(s0)
	call	_Z11writeRGBBMPPKcPA256_A3_h
	mv	a5,a0
	snez	a5,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L12
	lui	a5,%hi(.LC13)
	addi	a1,a5,%lo(.LC13)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	addi	a5,a5,12
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
.L12:
	li	a5,0
.L13:
	mv	a0,a5
	li	t0,393216
	add	sp,sp,t0
	.cfi_def_cfa 2, 1040
	lw	ra,1036(sp)
	.cfi_restore 1
	lw	s0,1032(sp)
	.cfi_restore 8
	addi	sp,sp,1040
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2601:
	.size	main, .-main
	.align	2
	.globl	_Z5dummyPA256_A3_hS1_
	.type	_Z5dummyPA256_A3_hS1_, @function
_Z5dummyPA256_A3_hS1_:
.LFB2602:
	.cfi_startproc
	addi	sp,sp,-1008
	.cfi_def_cfa_offset 1008
	sw	ra,1004(sp)
	sw	s0,1000(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1008
	.cfi_def_cfa 8, 0
	sw	a0,-996(s0)
	sw	a1,-1000(s0)
	sw	zero,-20(s0)
	j	.L15
.L18:
	sw	zero,-24(s0)
	j	.L16
.L17:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-976(a5)
	sw	zero,-972(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L16:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L17
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L18
	lui	a5,%hi(.LC14)
	fld	fa5,%lo(.LC14)(a5)
	fsd	fa5,-896(s0)
	addi	a5,s0,-992
	mv	a3,a5
	li	a2,3
	lw	a1,-1000(s0)
	lw	a0,-996(s0)
	call	_Z8convolvePA256_A3_hS1_iPA11_d
	nop
	lw	ra,1004(sp)
	.cfi_restore 1
	lw	s0,1000(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1008
	addi	sp,sp,1008
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2602:
	.size	_Z5dummyPA256_A3_hS1_, .-_Z5dummyPA256_A3_hS1_
	.align	2
	.globl	_Z8convolvePA256_A3_hS1_iPA11_d
	.type	_Z8convolvePA256_A3_hS1_iPA11_d, @function
_Z8convolvePA256_A3_hS1_iPA11_d:
.LFB2603:
	.cfi_startproc
	addi	sp,sp,-1312
	.cfi_def_cfa_offset 1312
	sw	s0,1308(sp)
	.cfi_offset 8, -4
	addi	s0,sp,1312
	.cfi_def_cfa 8, 0
	li	t0,-1634304
	add	sp,sp,t0
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-1284(a5)
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1288(a5)
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,-1292(a5)
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-1296(a5)
	sw	zero,-20(s0)
	j	.L20
.L25:
	sw	zero,-24(s0)
	j	.L21
.L24:
	sw	zero,-28(s0)
	j	.L22
.L23:
	li	a5,-847872
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-24(s0)
	lw	a3,-20(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a5,a3
	slli	a5,a5,4
	sub	a5,a5,a3
	slli	a5,a5,1
	add	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	sw	zero,-1268(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L22:
	lw	a4,-28(s0)
	li	a5,2
	ble	a4,a5,.L23
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L21:
	lw	a4,-24(s0)
	li	a5,265
	ble	a4,a5,.L24
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-20(s0)
	li	a5,265
	ble	a4,a5,.L25
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-32(s0)
	j	.L26
.L31:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-36(s0)
	j	.L27
.L30:
	sw	zero,-40(s0)
	j	.L28
.L29:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1288(a5)
	add	a3,a5,a4
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	mv	a4,a5
	lw	a5,-36(s0)
	add	a4,a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a3,a5
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a1,a5
	li	a5,-847872
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-36(s0)
	lw	a3,-32(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a5,a3
	slli	a5,a5,4
	sub	a5,a5,a3
	slli	a5,a5,1
	add	a4,a4,a5
	lw	a5,-40(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a1,-1268(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L28:
	lw	a4,-40(s0)
	li	a5,2
	ble	a4,a5,.L29
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L27:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	addi	a5,a5,255
	lw	a4,-36(s0)
	ble	a4,a5,.L30
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L26:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	addi	a5,a5,255
	lw	a4,-32(s0)
	ble	a4,a5,.L31
	sw	zero,-44(s0)
	j	.L32
.L37:
	sw	zero,-48(s0)
	j	.L33
.L36:
	sw	zero,-52(s0)
	j	.L34
.L35:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-48(s0)
	lw	a3,-44(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-52(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	sw	zero,-1268(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L34:
	lw	a4,-52(s0)
	li	a5,2
	ble	a4,a5,.L35
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L33:
	lw	a4,-48(s0)
	li	a5,255
	ble	a4,a5,.L36
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L32:
	lw	a4,-44(s0)
	li	a5,255
	ble	a4,a5,.L37
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-56(s0)
	j	.L38
.L47:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-60(s0)
	j	.L39
.L46:
	sw	zero,-64(s0)
	j	.L40
.L45:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	sw	a5,-68(s0)
	j	.L41
.L44:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	sw	a5,-72(s0)
	j	.L42
.L43:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a1,a5
	lw	a5,-56(s0)
	sub	a3,a5,a1
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a2,a5
	lw	a5,-60(s0)
	sub	a5,a5,a2
	li	a4,-1634304
	addi	a4,a4,-16
	add	a0,a4,s0
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-64(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,-1268(a5)
	fcvt.d.w	fa4,a5
	lw	a4,-56(s0)
	lw	a5,-68(s0)
	add	a3,a4,a5
	lw	a4,-60(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	li	a4,-847872
	addi	a4,a4,-16
	add	a0,a4,s0
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a5,a3
	slli	a5,a5,4
	sub	a5,a5,a3
	slli	a5,a5,1
	add	a4,a4,a5
	lw	a5,-64(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a0,a5
	lw	a5,-1268(a5)
	fcvt.d.w	fa3,a5
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a4,a5
	mv	a4,a5
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1296(a5)
	add	a4,a5,a4
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a3,a5,31
	add	a5,a3,a5
	srai	a5,a5,1
	mv	a3,a5
	lw	a5,-72(s0)
	add	a5,a3,a5
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	lw	a5,-56(s0)
	sub	a3,a5,a1
	lw	a5,-60(s0)
	sub	a5,a5,a2
	fcvt.w.d a2,fa5,rtz
	li	a4,-1634304
	addi	a4,a4,-16
	add	a1,a4,s0
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-64(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a1,a5
	sw	a2,-1268(a5)
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L42:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	lw	a5,-72(s0)
	ble	a5,a4,.L43
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L41:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	lw	a5,-68(s0)
	ble	a5,a4,.L44
	lw	a5,-64(s0)
	addi	a5,a5,1
	sw	a5,-64(s0)
.L40:
	lw	a4,-64(s0)
	li	a5,2
	ble	a4,a5,.L45
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L39:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	addi	a5,a5,255
	lw	a4,-60(s0)
	ble	a4,a5,.L46
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L38:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1292(a5)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	addi	a5,a5,255
	lw	a4,-56(s0)
	ble	a4,a5,.L47
	sw	zero,-76(s0)
	j	.L48
.L55:
	sw	zero,-80(s0)
	j	.L49
.L54:
	sw	zero,-84(s0)
	j	.L50
.L53:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-80(s0)
	lw	a3,-76(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a4,-1268(a5)
	li	a5,255
	ble	a4,a5,.L51
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-80(s0)
	lw	a3,-76(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	li	a4,255
	sw	a4,-1268(a5)
	j	.L52
.L51:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-80(s0)
	lw	a3,-76(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,-1268(a5)
	bge	a5,zero,.L52
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-80(s0)
	lw	a3,-76(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	sw	zero,-1268(a5)
.L52:
	li	a5,-1634304
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-80(s0)
	lw	a3,-76(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a3,-1268(a5)
	lw	a4,-76(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-1634304
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1284(a5)
	add	a2,a5,a4
	andi	a3,a3,0xff
	lw	a4,-80(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a2,a5
	lw	a5,-84(s0)
	add	a5,a4,a5
	sb	a3,0(a5)
	lw	a5,-84(s0)
	addi	a5,a5,1
	sw	a5,-84(s0)
.L50:
	lw	a4,-84(s0)
	li	a5,2
	ble	a4,a5,.L53
	lw	a5,-80(s0)
	addi	a5,a5,1
	sw	a5,-80(s0)
.L49:
	lw	a4,-80(s0)
	li	a5,255
	ble	a4,a5,.L54
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L48:
	lw	a4,-76(s0)
	li	a5,255
	ble	a4,a5,.L55
	nop
	nop
	li	t0,1634304
	add	sp,sp,t0
	.cfi_def_cfa 2, 1312
	lw	s0,1308(sp)
	.cfi_restore 8
	addi	sp,sp,1312
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2603:
	.size	_Z8convolvePA256_A3_hS1_iPA11_d, .-_Z8convolvePA256_A3_hS1_iPA11_d
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	-1074790400
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	0
	.word	-1073741824
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.word	0
	.word	-1074790400
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	1072693248
	.word	0
	.word	0
	.word	0
	.word	-1074790400
	.word	0
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.word	-1073741824
	.word	0
	.word	1072693248
	.word	0
	.word	0
	.word	0
	.word	-1074790400
	.text
	.align	2
	.globl	_Z5sobelPA256_A3_hS1_
	.type	_Z5sobelPA256_A3_hS1_, @function
_Z5sobelPA256_A3_hS1_:
.LFB2604:
	.cfi_startproc
	addi	sp,sp,-1184
	.cfi_def_cfa_offset 1184
	sw	ra,1180(sp)
	sw	s0,1176(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1184
	.cfi_def_cfa 8, 0
	li	t0,-393216
	add	sp,sp,t0
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-1156(a5)
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1160(a5)
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-1096
	mv	a3,a4
	li	a4,72
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	lui	a5,%hi(.LC1)
	addi	a4,a5,%lo(.LC1)
	addi	a5,s0,-1168
	mv	a3,a4
	li	a4,72
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	sw	zero,-32(s0)
	j	.L57
.L60:
	sw	zero,-36(s0)
	j	.L58
.L59:
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-36(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-1008(a5)
	sw	zero,-1004(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L58:
	lw	a4,-36(s0)
	li	a5,10
	ble	a4,a5,.L59
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L57:
	lw	a4,-32(s0)
	li	a5,10
	ble	a4,a5,.L60
	sw	zero,-40(s0)
	j	.L61
.L64:
	sw	zero,-20(s0)
	j	.L62
.L63:
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1080(a5)
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-1008(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L62:
	lw	a4,-20(s0)
	li	a5,2
	ble	a4,a5,.L63
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L61:
	lw	a4,-40(s0)
	li	a5,2
	ble	a4,a5,.L64
	addi	a3,s0,-1024
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-196608
	addi	a4,a4,-1152
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a2,3
	lw	a1,-1160(a5)
	mv	a0,a4
	call	_Z8convolvePA256_A3_hS1_iPA11_d
	sw	zero,-24(s0)
	j	.L65
.L68:
	sw	zero,-28(s0)
	j	.L66
.L67:
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1152(a5)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa5,-1008(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L66:
	lw	a4,-28(s0)
	li	a5,2
	ble	a4,a5,.L67
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L65:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L68
	addi	a3,s0,-1024
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-393216
	addi	a4,a4,-1152
	addi	a4,a4,-16
	add	a4,a4,s0
	li	a2,3
	lw	a1,-1160(a5)
	mv	a0,a4
	call	_Z8convolvePA256_A3_hS1_iPA11_d
	sw	zero,-44(s0)
	j	.L69
.L74:
	sw	zero,-48(s0)
	j	.L70
.L73:
	sw	zero,-52(s0)
	j	.L71
.L72:
	li	a5,-196608
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-48(s0)
	lw	a3,-44(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a5,a4,a5
	add	a4,a2,a5
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a1,-1152(a5)
	li	a5,-393216
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-48(s0)
	lw	a3,-44(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a5,a4,a5
	add	a4,a2,a5
	lw	a5,-52(s0)
	add	a5,a4,a5
	lbu	a3,-1152(a5)
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-393216
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1156(a5)
	add	a2,a5,a4
	add	a5,a1,a3
	andi	a3,a5,0xff
	lw	a4,-48(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a2,a5
	lw	a5,-52(s0)
	add	a5,a4,a5
	sb	a3,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L71:
	lw	a4,-52(s0)
	li	a5,2
	ble	a4,a5,.L72
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L70:
	lw	a4,-48(s0)
	li	a5,255
	ble	a4,a5,.L73
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L69:
	lw	a4,-44(s0)
	li	a5,255
	ble	a4,a5,.L74
	nop
	nop
	li	t0,393216
	add	sp,sp,t0
	.cfi_def_cfa 2, 1184
	lw	ra,1180(sp)
	.cfi_restore 1
	lw	s0,1176(sp)
	.cfi_restore 8
	addi	sp,sp,1184
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2604:
	.size	_Z5sobelPA256_A3_hS1_, .-_Z5sobelPA256_A3_hS1_
	.align	2
	.globl	_Z15gaussian_filterPA256_A3_hS1_id
	.type	_Z15gaussian_filterPA256_A3_hS1_id, @function
_Z15gaussian_filterPA256_A3_hS1_id:
.LFB2605:
	.cfi_startproc
	addi	sp,sp,-1040
	.cfi_def_cfa_offset 1040
	sw	ra,1036(sp)
	sw	s0,1032(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1040
	.cfi_def_cfa 8, 0
	li	t0,-196608
	add	sp,sp,t0
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-996(a5)
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1000(a5)
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,-1004(a5)
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa0,-1016(a5)
	sw	zero,-20(s0)
	j	.L76
.L79:
	sw	zero,-24(s0)
	j	.L77
.L78:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-992(a5)
	sw	zero,-988(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L77:
	lw	a4,-24(s0)
	li	a5,10
	ble	a4,a5,.L78
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L76:
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L79
	li	a5,-196608
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a3,s0,-1008
	fld	fa0,-1016(a4)
	lw	a1,-1004(a5)
	mv	a0,a3
	call	_Z8gaussianPA11_did
	addi	a2,s0,-1008
	li	a5,-196608
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a3,-196608
	addi	a3,a3,-992
	addi	a3,a3,-16
	add	a0,a3,s0
	mv	a3,a2
	lw	a2,-1004(a4)
	lw	a1,-1000(a5)
	call	_Z8convolvePA256_A3_hS1_iPA11_d
	sw	zero,-28(s0)
	j	.L80
.L85:
	sw	zero,-32(s0)
	j	.L81
.L84:
	sw	zero,-36(s0)
	j	.L82
.L83:
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-196608
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-996(a5)
	add	a2,a5,a4
	li	a5,-196608
	addi	a5,a5,-16
	add	a1,a5,s0
	lw	a5,-32(s0)
	lw	a3,-28(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a5,a4,a5
	add	a4,a1,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a3,-992(a5)
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a2,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	sb	a3,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L82:
	lw	a4,-36(s0)
	li	a5,2
	ble	a4,a5,.L83
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L81:
	lw	a4,-32(s0)
	li	a5,255
	ble	a4,a5,.L84
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L80:
	lw	a4,-28(s0)
	li	a5,255
	ble	a4,a5,.L85
	nop
	nop
	li	t0,196608
	add	sp,sp,t0
	.cfi_def_cfa 2, 1040
	lw	ra,1036(sp)
	.cfi_restore 1
	lw	s0,1032(sp)
	.cfi_restore 8
	addi	sp,sp,1040
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2605:
	.size	_Z15gaussian_filterPA256_A3_hS1_id, .-_Z15gaussian_filterPA256_A3_hS1_id
	.align	2
	.globl	_Z7unsharpPA256_A3_hS1_idd
	.type	_Z7unsharpPA256_A3_hS1_idd, @function
_Z7unsharpPA256_A3_hS1_idd:
.LFB2606:
	.cfi_startproc
	addi	sp,sp,-1056
	.cfi_def_cfa_offset 1056
	sw	ra,1052(sp)
	sw	s0,1048(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,1056
	.cfi_def_cfa 8, 0
	li	t0,-983040
	add	sp,sp,t0
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,-1012(a5)
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,-1016(a5)
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,-1020(a5)
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa0,-1032(a5)
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	fsd	fa1,-1040(a5)
	sw	zero,-20(s0)
	j	.L87
.L90:
	sw	zero,-24(s0)
	j	.L88
.L89:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-1008(a5)
	sw	zero,-1004(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L88:
	lw	a4,-24(s0)
	li	a5,10
	ble	a4,a5,.L89
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L87:
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L90
	li	a5,-983040
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-983040
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,-196608
	addi	a2,a2,-1008
	addi	a2,a2,-16
	add	a0,a2,s0
	fld	fa0,-1032(a3)
	lw	a2,-1020(a4)
	lw	a1,-1016(a5)
	call	_Z15gaussian_filterPA256_A3_hS1_id
	sw	zero,-28(s0)
	j	.L91
.L96:
	sw	zero,-32(s0)
	j	.L92
.L95:
	sw	zero,-36(s0)
	j	.L93
.L94:
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	add	a3,a5,a4
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a3,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a1,a5
	li	a5,-196608
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-32(s0)
	lw	a3,-28(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a5,a4,a5
	add	a4,a2,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	lbu	a5,-1008(a5)
	sub	a2,a1,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a1,a5,s0
	lw	a5,-32(s0)
	lw	a3,-28(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a1,a5
	sw	a2,-1008(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L93:
	lw	a4,-36(s0)
	li	a5,2
	ble	a4,a5,.L94
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L92:
	lw	a4,-32(s0)
	li	a5,255
	ble	a4,a5,.L95
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L91:
	lw	a4,-28(s0)
	li	a5,255
	ble	a4,a5,.L96
	sw	zero,-40(s0)
	j	.L97
.L106:
	sw	zero,-44(s0)
	j	.L98
.L105:
	sw	zero,-48(s0)
	j	.L99
.L104:
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1016(a5)
	add	a3,a5,a4
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a3,a5
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	fcvt.d.w	fa4,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a2,a5,s0
	lw	a5,-44(s0)
	lw	a3,-40(s0)
	mv	a4,a5
	slli	a4,a4,1
	add	a4,a4,a5
	mv	a5,a3
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,8
	add	a4,a4,a5
	lw	a5,-48(s0)
	add	a5,a4,a5
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,-1008(a5)
	fcvt.d.w	fa3,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	fld	fa5,-1040(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	fld	fa4,-56(s0)
	lui	a5,%hi(.LC15)
	fld	fa5,%lo(.LC15)(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L109
	lui	a5,%hi(.LC15)
	fld	fa5,%lo(.LC15)(a5)
	fsd	fa5,-56(s0)
	j	.L102
.L109:
	fld	fa5,-56(s0)
	fcvt.d.w	fa4,x0
	flt.d	a5,fa5,fa4
	beq	a5,zero,.L102
	sw	zero,-56(s0)
	sw	zero,-52(s0)
.L102:
	lw	a4,-40(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,8
	mv	a4,a5
	li	a5,-983040
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1012(a5)
	add	a2,a5,a4
	fld	fa5,-56(s0)
	fcvt.wu.d a5,fa5,rtz
	andi	a3,a5,0xff
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a4,a2,a5
	lw	a5,-48(s0)
	add	a5,a4,a5
	sb	a3,0(a5)
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L99:
	lw	a4,-48(s0)
	li	a5,2
	ble	a4,a5,.L104
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L98:
	lw	a4,-44(s0)
	li	a5,255
	ble	a4,a5,.L105
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L97:
	lw	a4,-40(s0)
	li	a5,255
	ble	a4,a5,.L106
	nop
	nop
	li	t0,983040
	add	sp,sp,t0
	.cfi_def_cfa 2, 1056
	lw	ra,1052(sp)
	.cfi_restore 1
	lw	s0,1048(sp)
	.cfi_restore 8
	addi	sp,sp,1056
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2606:
	.size	_Z7unsharpPA256_A3_hS1_idd, .-_Z7unsharpPA256_A3_hS1_idd
	.align	2
	.globl	_Z8gaussianPA11_did
	.type	_Z8gaussianPA11_did, @function
_Z8gaussianPA11_did:
.LFB2607:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	fsd	fa0,-96(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	sw	zero,-28(s0)
	j	.L111
.L114:
	sw	zero,-32(s0)
	j	.L112
.L113:
	lw	a5,-88(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	mv	a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	li	a1,2
	mv	a0,a5
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fsd	fa0,-48(s0)
	lw	a5,-88(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	neg	a5,a5
	mv	a4,a5
	lw	a5,-32(s0)
	add	a5,a4,a5
	li	a1,2
	mv	a0,a5
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fsd	fa0,-56(s0)
	li	a0,2
	fld	fa0,-96(s0)
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fmv.d	fa5,fa0
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-64(s0)
	li	a0,2
	fld	fa0,-96(s0)
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	fmv.d	fa5,fa0
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-72(s0)
	fld	fa4,-56(s0)
	fld	fa5,-72(s0)
	fdiv.d	fa4,fa4,fa5
	fld	fa3,-48(s0)
	fld	fa5,-64(s0)
	fdiv.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fneg.d	fa5,fa5
	fsd	fa5,-80(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-84(s0)
	add	s1,a5,a4
	fld	fa0,-80(s0)
	call	exp
	fmv.d	fa5,fa0
	lw	a5,-32(s0)
	slli	a5,a5,3
	add	a5,s1,a5
	fsd	fa5,0(a5)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-84(s0)
	add	a4,a5,a4
	lw	a5,-32(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L112:
	lw	a4,-32(s0)
	lw	a5,-88(s0)
	blt	a4,a5,.L113
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L111:
	lw	a4,-28(s0)
	lw	a5,-88(s0)
	blt	a4,a5,.L114
	sw	zero,-36(s0)
	j	.L115
.L118:
	sw	zero,-40(s0)
	j	.L116
.L117:
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-84(s0)
	add	a4,a5,a4
	lw	a5,-40(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa4,0(a5)
	lw	a4,-36(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	slli	a5,a5,3
	mv	a4,a5
	lw	a5,-84(s0)
	add	a4,a5,a4
	fld	fa5,-24(s0)
	fdiv.d	fa5,fa4,fa5
	lw	a5,-40(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fsd	fa5,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L116:
	lw	a4,-40(s0)
	lw	a5,-88(s0)
	blt	a4,a5,.L117
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L115:
	lw	a4,-36(s0)
	lw	a5,-88(s0)
	blt	a4,a5,.L118
	nop
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2607:
	.size	_Z8gaussianPA11_did, .-_Z8gaussianPA11_did
	.section	.text._ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_,"axG",@progbits,_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_,comdat
	.align	2
	.weak	_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.type	_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_, @function
_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_:
.LFB2939:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	fcvt.d.w	fa5,a5
	lw	a5,-24(s0)
	fcvt.d.w	fa4,a5
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	pow
	fmv.d	fa5,fa0
	fmv.d	fa0,fa5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2939:
	.size	_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_, .-_ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_,comdat
	.align	2
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_, @function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_:
.LFB2940:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	fcvt.d.w	fa5,a5
	fmv.d	fa1,fa5
	fld	fa0,-24(s0)
	call	pow
	fmv.d	fa5,fa0
	fmv.d	fa0,fa5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2940:
	.size	_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_, .-_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3305:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L125
	lw	a4,-24(s0)
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L125
	lui	a5,%hi(_ZStL8__ioinit)
	addi	a0,a5,%lo(_ZStL8__ioinit)
	call	_ZNSt8ios_base4InitC1Ev
	lui	a5,%hi(__dso_handle)
	addi	a2,a5,%lo(__dso_handle)
	lui	a5,%hi(_ZStL8__ioinit)
	addi	a1,a5,%lo(_ZStL8__ioinit)
	lui	a5,%hi(_ZNSt8ios_base4InitD1Ev)
	addi	a0,a5,%lo(_ZNSt8ios_base4InitD1Ev)
	call	__cxa_atexit
.L125:
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3305:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3306:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,65536
	addi	a1,a5,-1
	li	a0,1
	call	_Z41__static_initialization_and_destruction_0ii
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3306:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.section	.rodata
	.align	3
.LC14:
	.word	0
	.word	1072693248
	.align	3
.LC15:
	.word	0
	.word	1081073664
	.hidden	__dso_handle
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
