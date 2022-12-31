	.file	"Median.cpp"
	.option nopic
	.attribute arch, "rv32i2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	_ZN6MedianC2Eiiii
	.type	_ZN6MedianC2Eiiii, @function
_ZN6MedianC2Eiiii:
.LFB1885:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	li	a4,-2147483648
	xori	a4,a4,-1
	sw	a4,16(a5)
	lw	a5,-36(s0)
	li	a4,-2147483648
	sw	a4,20(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a5,a5,2
	li	a4,536870912
	bgeu	a5,a4,.L2
	slli	a5,a5,2
	mv	a0,a5
	call	_Znaj
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	sw	a4,24(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a5,a5,2
	li	a4,536870912
	bgeu	a5,a4,.L4
	j	.L12
.L2:
	call	__cxa_throw_bad_array_new_length
.L12:
	slli	a5,a5,2
	mv	a0,a5
	call	_Znaj
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	sw	a4,64(a5)
	sw	zero,-20(s0)
	j	.L6
.L4:
	call	__cxa_throw_bad_array_new_length
.L11:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	addi	a5,a5,2
	li	a4,536870912
	bgeu	a5,a4,.L7
	slli	a3,a5,2
	lw	a5,-36(s0)
	lw	a4,24(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	s1,a4,a5
	mv	a0,a3
	call	_Znaj
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	addi	a5,a5,2
	li	a4,536870912
	bgeu	a5,a4,.L9
	j	.L13
.L7:
	call	__cxa_throw_bad_array_new_length
.L13:
	slli	a3,a5,2
	j	.L14
.L9:
	call	__cxa_throw_bad_array_new_length
.L14:
	lw	a5,-36(s0)
	lw	a4,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	s1,a4,a5
	mv	a0,a3
	call	_Znaj
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a5,a5,1
	lw	a4,-20(s0)
	ble	a4,a5,.L11
	nop
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1885:
	.size	_ZN6MedianC2Eiiii, .-_ZN6MedianC2Eiiii
	.globl	_ZN6MedianC1Eiiii
	.set	_ZN6MedianC1Eiiii,_ZN6MedianC2Eiiii
	.align	2
	.globl	_ZN6MedianD2Ev
	.type	_ZN6MedianD2Ev, @function
_ZN6MedianD2Ev:
.LFB1888:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1888:
	.size	_ZN6MedianD2Ev, .-_ZN6MedianD2Ev
	.globl	_ZN6MedianD1Ev
	.set	_ZN6MedianD1Ev,_ZN6MedianD2Ev
	.align	2
	.globl	_ZN6Median9loadImageERSi
	.type	_ZN6Median9loadImageERSi, @function
_ZN6Median9loadImageERSi:
.LFB1890:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L17
.L20:
	li	a5,1
	sw	a5,-24(s0)
	j	.L18
.L19:
	addi	a5,s0,-28
	mv	a1,a5
	lw	a0,-40(s0)
	call	_ZNSirsERi
	lw	a5,-36(s0)
	lw	a4,24(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L18:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	ble	a4,a5,.L19
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	ble	a4,a5,.L20
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1890:
	.size	_ZN6Median9loadImageERSi, .-_ZN6Median9loadImageERSi
	.align	2
	.globl	_ZN6Median13loadNeighborsEii
	.type	_ZN6Median13loadNeighborsEii, @function
_ZN6Median13loadNeighborsEii:
.LFB1891:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,28(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,32(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,36(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,40(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,44(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,48(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-28(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,52(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,56(a5)
	lw	a5,-20(s0)
	lw	a4,24(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,60(a5)
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1891:
	.size	_ZN6Median13loadNeighborsEii, .-_ZN6Median13loadNeighborsEii
	.align	2
	.globl	_ZN6Median13selectionSortEPi
	.type	_ZN6Median13selectionSortEPi, @function
_ZN6Median13selectionSortEPi:
.LFB1892:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-24(s0)
	j	.L23
.L27:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	j	.L24
.L26:
	lw	a5,-28(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a3,-40(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L25
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L25:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L24:
	lw	a4,-28(s0)
	li	a5,8
	ble	a4,a5,.L26
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a3,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L23:
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L27
	lw	a5,-40(s0)
	lw	a5,16(a5)
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1892:
	.size	_ZN6Median13selectionSortEPi, .-_ZN6Median13selectionSortEPi
	.align	2
	.globl	_ZN6Median12mirrorFramedEv
	.type	_ZN6Median12mirrorFramedEv, @function
_ZN6Median12mirrorFramedEv:
.LFB1893:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L30
.L35:
	li	a5,1
	sw	a5,-24(s0)
	j	.L31
.L34:
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	_ZN6Median13loadNeighborsEii
	lw	a5,-36(s0)
	addi	a3,a5,28
	lw	a5,-36(s0)
	lw	a4,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	s1,a4,a5
	mv	a1,a3
	lw	a0,-36(s0)
	call	_ZN6Median13selectionSortEPi
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-36(s0)
	lw	a4,16(a5)
	lw	a5,-36(s0)
	lw	a3,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L32
	lw	a5,-36(s0)
	lw	a4,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sw	a4,16(a5)
.L32:
	lw	a5,-36(s0)
	lw	a4,20(a5)
	lw	a5,-36(s0)
	lw	a3,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L33
	lw	a5,-36(s0)
	lw	a4,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sw	a4,20(a5)
.L33:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L31:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	ble	a4,a5,.L34
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L30:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	ble	a4,a5,.L35
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1893:
	.size	_ZN6Median12mirrorFramedEv, .-_ZN6Median12mirrorFramedEv
	.align	2
	.globl	_ZN6Median10outputFileERSo
	.type	_ZN6Median10outputFileERSo, @function
_ZN6Median10outputFileERSo:
.LFB1894:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-40(s0)
	call	_ZNSolsEi
	mv	a5,a0
	li	a1,32
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mv	a4,a0
	lw	a5,-36(s0)
	lw	a5,4(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a5,a0
	li	a1,32
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mv	a4,a0
	lw	a5,-36(s0)
	lw	a5,16(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a5,a0
	li	a1,32
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	mv	a4,a0
	lw	a5,-36(s0)
	lw	a5,20(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a5,a0
	li	a1,10
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	li	a5,1
	sw	a5,-20(s0)
	j	.L37
.L40:
	li	a5,1
	sw	a5,-24(s0)
	j	.L38
.L39:
	lw	a5,-36(s0)
	lw	a4,64(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-40(s0)
	call	_ZNSolsEi
	mv	a5,a0
	li	a1,32
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L38:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	ble	a4,a5,.L39
	li	a1,10
	lw	a0,-40(s0)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L37:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	ble	a4,a5,.L40
	nop
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1894:
	.size	_ZN6Median10outputFileERSo, .-_ZN6Median10outputFileERSo
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2174:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	addi	a5,s0,-20
	mv	a0,a5
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2174:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2282:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2282:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
