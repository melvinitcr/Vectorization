	.file	"main.cpp"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	_Z9suavizadoiii._omp_fn.1, @function
_Z9suavizadoiii._omp_fn.1:
.LFB2068:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	call	omp_get_num_threads
	movl	96(%esp), %edi
	movl	%eax, %esi
	call	omp_get_thread_num
	movl	%eax, %ebx
	movl	(%edi), %eax
	subl	$2, %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	cmpl	%edx, %ebx
	jge	.L10
	addl	$1, %ecx
	xorl	%edx, %edx
.L10:
	movl	%ebx, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	addl	%eax, %ecx
	cmpl	%ecx, %eax
	jge	.L1
	leal	1(%eax), %edx
	movl	%edx, 48(%esp)
	movl	salida2, %edx
	movl	%edx, 56(%esp)
	movl	salida, %edx
	leal	(%edx,%eax,4), %eax
	movl	%edi, %edx
	movl	%eax, 52(%esp)
	leal	1(%ecx), %eax
	movl	%eax, 60(%esp)
.L7:
	cmpl	$2, 4(%edx)
	jle	.L4
	movl	$0, 44(%esp)
	movl	$1, 40(%esp)
	.p2align 4,,10
	.p2align 3
.L8:
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	.L6
	movl	52(%esp), %edi
	movl	44(%esp), %esi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	(%ebx,%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx,%esi), %eax
	movl	%eax, 8(%esp)
	movl	8(%edi), %eax
	movl	(%eax,%esi), %edi
	movl	%edi, 12(%esp)
	movl	40(%esp), %edi
	movl	(%ebx,%edi,4), %ebp
	movl	%ebp, 16(%esp)
	movl	(%ecx,%edi,4), %ebp
	movl	(%eax,%edi,4), %edi
	movl	%edi, 20(%esp)
	movl	8(%ebx,%esi), %edi
	movl	%esi, %ebx
	movl	8(%eax,%ebx), %ebx
	movl	12(%edx), %eax
	movl	8(%ecx,%esi), %esi
	flds	(%eax)
	flds	4(%eax)
	flds	8(%eax)
	flds	12(%eax)
	flds	16(%eax)
	flds	20(%eax)
	flds	24(%eax)
	fstps	24(%esp)
	flds	28(%eax)
	fstps	28(%esp)
	flds	32(%eax)
	fstps	32(%esp)
	movl	56(%esp), %eax
	movl	48(%esp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	40(%esp), %ecx
	movl	(%eax,%ecx,4), %ecx
	xorl	%eax, %eax
	movl	%ecx, 36(%esp)
	.p2align 4,,10
	.p2align 3
.L9:
	movl	4(%esp), %ecx
	fildl	(%ecx,%eax,4)
	movl	8(%esp), %ecx
	fmul	%st(6), %st
	fildl	(%ecx,%eax,4)
	fmul	%st(6), %st
	movl	12(%esp), %ecx
	faddp	%st, %st(1)
	fildl	(%ecx,%eax,4)
	fmul	%st(5), %st
	movl	16(%esp), %ecx
	faddp	%st, %st(1)
	fildl	(%ecx,%eax,4)
	fmul	%st(4), %st
	movl	20(%esp), %ecx
	faddp	%st, %st(1)
	fildl	0(%ebp,%eax,4)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fildl	(%ecx,%eax,4)
	fmul	%st(2), %st
	movl	36(%esp), %ecx
	faddp	%st, %st(1)
	fildl	(%edi,%eax,4)
	fmuls	24(%esp)
	faddp	%st, %st(1)
	fildl	(%esi,%eax,4)
	fmuls	28(%esp)
	faddp	%st, %st(1)
	fildl	(%ebx,%eax,4)
	fmuls	32(%esp)
	faddp	%st, %st(1)
	fisttpl	(%ecx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 8(%edx)
	jg	.L9
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
.L6:
	movl	4(%edx), %eax
	addl	$1, 40(%esp)
	movl	40(%esp), %ebx
	addl	$4, 44(%esp)
	subl	$1, %eax
	cmpl	%ebx, %eax
	jg	.L8
.L4:
	addl	$1, 48(%esp)
	addl	$4, 52(%esp)
	movl	48(%esp), %eax
	cmpl	60(%esp), %eax
	jne	.L7
.L1:
	addl	$76, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2068:
	.size	_Z9suavizadoiii._omp_fn.1, .-_Z9suavizadoiii._omp_fn.1
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z11multComplexPfS_S_
	.type	_Z11multComplexPfS_S_, @function
_Z11multComplexPfS_S_:
.LFB1908:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	12(%esp), %ecx
	flds	(%edx)
	flds	(%eax)
	fmulp	%st, %st(1)
	flds	4(%edx)
	fmuls	4(%eax)
	fsubrp	%st, %st(1)
	fstps	(%ecx)
	flds	(%edx)
	flds	4(%eax)
	fmulp	%st, %st(1)
	flds	4(%edx)
	fmuls	(%eax)
	faddp	%st, %st(1)
	fstps	4(%ecx)
	ret
	.cfi_endproc
.LFE1908:
	.size	_Z11multComplexPfS_S_, .-_Z11multComplexPfS_S_
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z10divComplexPfS_S_
	.type	_Z10divComplexPfS_S_, @function
_Z10divComplexPfS_S_:
.LFB1909:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	movl	12(%esp), %edx
	flds	(%eax)
	flds	4(%eax)
	fld	%st(1)
	fmul	%st(2), %st
	fld	%st(1)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fxch	%st(1)
	fchs
	fsts	4(%eax)
	flds	(%ecx)
	flds	4(%ecx)
	fld	%st(4)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fdiv	%st(4), %st
	fstps	(%edx)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fxch	%st(1)
	fmulp	%st, %st(3)
	faddp	%st, %st(2)
	fdivrp	%st, %st(1)
	fstps	4(%edx)
	ret
	.cfi_endproc
.LFE1909:
	.size	_Z10divComplexPfS_S_, .-_Z10divComplexPfS_S_
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	_Z6mapperPfS_
	.type	_Z6mapperPfS_, @function
_Z6mapperPfS_:
.LFB1910:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%gs:20, %edx
	movl	%edx, 28(%esp)
	xorl	%edx, %edx
	movl	48(%esp), %eax
	flds	(%eax)
	flds	4(%eax)
	flds	.LC4
	fld	%st(2)
	fmul	%st(1), %st
	fldz
	fld	%st(3)
	fmul	%st(1), %st
	fsubrp	%st, %st(2)
	fld1
	fadd	%st, %st(2)
	fxch	%st(2)
	fstps	12(%esp)
	fxch	%st(2)
	fmul	%st(3), %st
	fxch	%st(2)
	fmul	%st(4), %st
	faddp	%st, %st(2)
	faddp	%st, %st(1)
	fstps	16(%esp)
	flds	.LC7
	fmul	%st, %st(2)
	fmulp	%st, %st(1)
	fld	%st(1)
	fsub	%st(1), %st
	fstps	20(%esp)
	faddp	%st, %st(1)
	fstps	24(%esp)
	pushl	52(%esp)
	.cfi_def_cfa_offset 52
	leal	16(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	leal	28(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	call	_Z10divComplexPfS_S_
	addl	$12, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L21
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L21:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1910:
	.size	_Z6mapperPfS_, .-_Z6mapperPfS_
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z13inverseMapperPiPf
	.type	_Z13inverseMapperPiPf, @function
_Z13inverseMapperPiPf:
.LFB1911:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%gs:20, %edx
	movl	%edx, 44(%esp)
	xorl	%edx, %edx
	movl	64(%esp), %eax
	fildl	(%eax)
	fildl	4(%eax)
	flds	.LC4
	fld	%st(2)
	fmul	%st(1), %st
	fldz
	fld	%st(3)
	fmul	%st(1), %st
	fsubrp	%st, %st(2)
	fldl	.LC9
	fsubr	%st, %st(2)
	fxch	%st(2)
	fstps	28(%esp)
	fxch	%st(2)
	fmul	%st(3), %st
	fxch	%st(2)
	fmul	%st(4), %st
	faddp	%st, %st(2)
	fsubrp	%st, %st(1)
	fstps	32(%esp)
	fld	%st(0)
	fsub	%st(2), %st
	fstps	36(%esp)
	fxch	%st(1)
	fchs
	fsubp	%st, %st(1)
	fstps	40(%esp)
	pushl	68(%esp)
	.cfi_def_cfa_offset 68
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 72
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	call	_Z10divComplexPfS_S_
	addl	$12, %esp
	.cfi_def_cfa_offset 64
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L25
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L25:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1911:
	.size	_Z13inverseMapperPiPf, .-_Z13inverseMapperPiPf
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.type	_Z12convertImageiii._omp_fn.0, @function
_Z12convertImageiii._omp_fn.0:
.LFB2067:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	movl	80(%esp), %ebx
	call	omp_get_num_threads
	movl	%eax, %esi
	call	omp_get_thread_num
	movl	(%ebx), %edi
	movl	%eax, %ecx
	movl	%edi, %eax
	cltd
	idivl	%esi
	cmpl	%edx, %ecx
	jge	.L37
	addl	$1, %eax
	xorl	%edx, %edx
.L37:
	imull	%eax, %ecx
	leal	(%ecx,%edx), %edi
	addl	%edi, %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	cmpl	%eax, %edi
	jge	.L26
	movl	4(%ebx), %esi
	leal	0(,%edi,4), %eax
	movl	%eax, 4(%esp)
.L30:
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.L33
	.p2align 4,,10
	.p2align 3
.L47:
	movl	(%esp), %eax
	subl	%ebp, %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%esi, 40(%esp)
	movl	%eax, 36(%esp)
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	_Z13inverseMapperPiPf
	flds	52(%esp)
	movl	$0, %eax
	fisttpl	28(%esp)
	flds	56(%esp)
	movl	28(%esp), %edx
	fisttpl	28(%esp)
	movl	28(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	4(%ebx), %esi
	testl	%ecx, %ecx
	cmovs	%eax, %ecx
	testl	%edx, %edx
	cmovs	%eax, %edx
	movl	%esi, %eax
	cmpl	%esi, %ecx
	jl	.L54
.L41:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.L31:
	movl	8(%ebx), %edi
	testl	%edi, %edi
	jle	.L35
	movl	entrada, %esi
	movl	(%esi,%edx,4), %edi
	movl	4(%esp), %esi
	movl	salida, %edx
	movl	(%edx,%esi), %edx
	movl	(%edx,%ebp,4), %esi
	xorl	%edx, %edx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L34:
	movl	4(%ebx), %eax
.L36:
	subl	$1, %eax
	subl	%ecx, %eax
	movl	(%edi,%eax,4), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esi,%edx,4)
	addl	$1, %edx
	cmpl	%edx, 8(%ebx)
	jg	.L34
	movl	4(%ebx), %esi
.L35:
	addl	$1, %ebp
	cmpl	%esi, %ebp
	jl	.L47
.L33:
	addl	$1, (%esp)
	addl	$4, 4(%esp)
	movl	(%esp), %eax
	cmpl	8(%esp), %eax
	jne	.L30
.L26:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L55
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_restore_state
	cmpl	(%ebx), %edx
	jge	.L41
	testl	%edx, %edx
	je	.L41
	testl	%ecx, %ecx
	movl	$0, %edi
	cmove	%edi, %edx
	jmp	.L31
.L55:
	call	__stack_chk_fail
	.cfi_endproc
.LFE2067:
	.size	_Z12convertImageiii._omp_fn.0, .-_Z12convertImageiii._omp_fn.0
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z12convertImageiii
	.type	_Z12convertImageiii, @function
_Z12convertImageiii:
.LFB1912:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%gs:20, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	pushl	$0
	.cfi_def_cfa_offset 36
	pushl	$0
	.cfi_def_cfa_offset 40
	leal	8(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 44
	pushl	$_Z12convertImageiii._omp_fn.0
	.cfi_def_cfa_offset 48
	call	GOMP_parallel
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	12(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L59
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L59:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1912:
	.size	_Z12convertImageiii, .-_Z12convertImageiii
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z9suavizadoiii
	.type	_Z9suavizadoiii, @function
_Z9suavizadoiii:
.LFB1913:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%gs:20, %eax
	movl	%eax, 60(%esp)
	xorl	%eax, %eax
	movl	80(%esp), %eax
	movl	$0x3c23d70a, 24(%esp)
	movl	$0x3da3d70a, 28(%esp)
	movl	$0x3c23d70a, 32(%esp)
	movl	$0x3da3d70a, 36(%esp)
	movl	%eax, 8(%esp)
	movl	84(%esp), %eax
	movl	$0x3f0f5c29, 40(%esp)
	movl	$0x3da3d70a, 44(%esp)
	movl	$0x3c23d70a, 48(%esp)
	movl	%eax, 12(%esp)
	movl	88(%esp), %eax
	movl	$0x3da3d70a, 52(%esp)
	movl	$0x3c23d70a, 56(%esp)
	movl	%eax, 16(%esp)
	leal	24(%esp), %eax
	movl	%eax, 20(%esp)
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	$0
	.cfi_def_cfa_offset 88
	leal	16(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	$_Z9suavizadoiii._omp_fn.1
	.cfi_def_cfa_offset 96
	call	GOMP_parallel
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	60(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L63
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
.L63:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1913:
	.size	_Z9suavizadoiii, .-_Z9suavizadoiii
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"foto2.jpg"
.LC18:
	.string	"%lf\n"
	.section	.text.unlikely
.LCOLDB19:
	.section	.text.startup,"ax",@progbits
.LHOTB19:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1914:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$68, %esp
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	pushl	$0
	call	FreeImage_Initialise
	movl	$FreeImage_DeInitialise, (%esp)
	call	atexit
	popl	%eax
	popl	%edx
	pushl	$0
	pushl	$.LC17
	call	FreeImage_GetFileType
	addl	$12, %esp
	pushl	$0
	pushl	$.LC17
	pushl	%eax
	call	FreeImage_Load
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	FreeImage_ConvertTo32Bits
	movl	%eax, %ebx
	movl	%eax, (%esp)
	movl	%eax, -60(%ebp)
	call	FreeImage_GetWidth
	movl	%ebx, (%esp)
	movl	%eax, %edi
	movl	%eax, -52(%ebp)
	call	FreeImage_GetHeight
	movl	%esi, (%esp)
	movl	%eax, %ebx
	call	FreeImage_Unload
	addl	$16, %esp
	movl	%edi, %eax
	cmpl	$532676608, %edi
	ja	.L65
	sall	$2, %eax
	subl	$12, %esp
	pushl	%eax
	movl	%eax, -64(%ebp)
	call	_Znaj
	addl	$16, %esp
	movl	%eax, entrada
	testl	%edi, %edi
	jle	.L100
	cmpl	$532676608, %ebx
	ja	.L65
	leal	0(,%ebx,4), %edx
	xorl	%edi, %edi
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	movl	%edi, %esi
	movl	%edx, %edi
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L68:
	movl	entrada, %eax
	leal	(%eax,%esi,4), %ebx
.L70:
	subl	$12, %esp
	addl	$1, %esi
	pushl	%edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%esi, -52(%ebp)
	jne	.L68
	movl	$0, -56(%ebp)
	.p2align 4,,10
	.p2align 3
.L69:
	movl	-48(%ebp), %edi
	testl	%edi, %edi
	jle	.L73
	movl	-56(%ebp), %eax
	xorl	%edi, %edi
	leal	0(,%eax,4), %esi
	.p2align 4,,10
	.p2align 3
.L71:
	movl	entrada, %eax
	subl	$12, %esp
	movl	(%eax,%esi), %eax
	pushl	$12
	leal	(%eax,%edi,4), %ebx
	addl	$1, %edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%edi, -48(%ebp)
	jne	.L71
.L73:
	addl	$1, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jne	.L69
	movl	-48(%ebp), %ebx
	subl	$12, %esp
	xorl	%edi, %edi
	pushl	-64(%ebp)
	movl	%edi, %esi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, salida
	leal	0(,%ebx,4), %edx
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	movl	%edx, %edi
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L75:
	movl	salida, %eax
	leal	(%eax,%esi,4), %ebx
.L87:
	subl	$12, %esp
	addl	$1, %esi
	pushl	%edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%esi, -52(%ebp)
	jg	.L75
	movl	$0, -56(%ebp)
	.p2align 4,,10
	.p2align 3
.L76:
	movl	-48(%ebp), %esi
	testl	%esi, %esi
	jle	.L79
	movl	-56(%ebp), %eax
	xorl	%edi, %edi
	leal	0(,%eax,4), %esi
	.p2align 4,,10
	.p2align 3
.L77:
	movl	salida, %eax
	subl	$12, %esp
	movl	(%eax,%esi), %eax
	pushl	$12
	leal	(%eax,%edi,4), %ebx
	addl	$1, %edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%edi, -48(%ebp)
	jne	.L77
.L79:
	addl	$1, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L76
	movl	-48(%ebp), %ebx
	subl	$12, %esp
	xorl	%edi, %edi
	pushl	-64(%ebp)
	movl	%edi, %esi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, salida2
	leal	0(,%ebx,4), %edx
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	movl	%edx, %edi
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L80:
	movl	salida2, %eax
	leal	(%eax,%esi,4), %ebx
.L88:
	subl	$12, %esp
	addl	$1, %esi
	pushl	%edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%esi, -52(%ebp)
	jg	.L80
	movl	$0, -56(%ebp)
	.p2align 4,,10
	.p2align 3
.L81:
	movl	-48(%ebp), %ebx
	testl	%ebx, %ebx
	jle	.L84
	movl	-56(%ebp), %eax
	xorl	%edi, %edi
	leal	0(,%eax,4), %esi
	.p2align 4,,10
	.p2align 3
.L82:
	movl	salida2, %eax
	subl	$12, %esp
	movl	(%eax,%esi), %eax
	pushl	$12
	leal	(%eax,%edi,4), %ebx
	addl	$1, %edi
	call	_Znaj
	addl	$16, %esp
	movl	%eax, (%ebx)
	cmpl	%edi, -48(%ebp)
	jne	.L82
.L84:
	addl	$1, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L81
	leal	-40(%ebp), %eax
	xorl	%esi, %esi
	movl	%eax, -56(%ebp)
	.p2align 4,,10
	.p2align 3
.L83:
	movl	-48(%ebp), %ecx
	testl	%ecx, %ecx
	jle	.L86
	leal	0(,%esi,4), %ebx
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L85:
	pushl	-56(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	-60(%ebp)
	call	FreeImage_GetPixelColor
	movl	entrada, %eax
	addl	$16, %esp
	movzbl	-40(%ebp), %ecx
	movl	(%eax,%ebx), %eax
	movl	(%eax,%edi,4), %eax
	addl	$1, %edi
	movl	%ecx, (%eax)
	movzbl	-39(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movzbl	-38(%ebp), %ecx
	movl	%ecx, 8(%eax)
	cmpl	%edi, -48(%ebp)
	jne	.L85
.L86:
	addl	$1, %esi
	cmpl	%esi, -52(%ebp)
	jg	.L83
	movl	-48(%ebp), %ebx
.L74:
	movl	entrada, %eax
	movl	(%eax), %eax
	movl	-4(%eax,%ebx,4), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	call	omp_get_wtime
	movl	-52(%ebp), %esi
	pushl	$0
	pushl	$0
	pushl	-56(%ebp)
	pushl	$_Z12convertImageiii._omp_fn.0
	fstpl	-48(%ebp)
	movl	%esi, -40(%ebp)
	movl	%ebx, -36(%ebp)
	movl	$3, -32(%ebp)
	call	GOMP_parallel
	addl	$12, %esp
	pushl	$3
	pushl	%ebx
	pushl	%esi
	call	_Z9suavizadoiii
	call	omp_get_wtime
	popl	%eax
	fsubl	-48(%ebp)
	popl	%edx
	fstpl	(%esp)
	pushl	$.LC18
	pushl	$1
	call	__printf_chk
	addl	$16, %esp
	xorl	%eax, %eax
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	jne	.L101
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
.L100:
	.cfi_restore_state
	movl	-64(%ebp), %esi
	subl	$12, %esp
	pushl	%esi
	call	_Znaj
	movl	%esi, (%esp)
	movl	%eax, salida
	call	_Znaj
	addl	$16, %esp
	movl	%eax, salida2
	leal	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L74
.L65:
	call	__cxa_throw_bad_array_new_length
.L101:
	call	__stack_chk_fail
	.cfi_endproc
.LFE1914:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE19:
	.section	.text.startup
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.section	.text.startup
.LHOTB20:
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z11multComplexPfS_S_, @function
_GLOBAL__sub_I__Z11multComplexPfS_S_:
.LFB2066:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	pushl	$_ZStL8__ioinit
	.cfi_def_cfa_offset 32
	call	_ZNSt8ios_base4InitC1Ev
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	pushl	$__dso_handle
	.cfi_def_cfa_offset 24
	pushl	$_ZStL8__ioinit
	.cfi_def_cfa_offset 28
	pushl	$_ZNSt8ios_base4InitD1Ev
	.cfi_def_cfa_offset 32
	call	__cxa_atexit
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2066:
	.size	_GLOBAL__sub_I__Z11multComplexPfS_S_, .-_GLOBAL__sub_I__Z11multComplexPfS_S_
	.section	.text.unlikely
.LCOLDE20:
	.section	.text.startup
.LHOTE20:
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__Z11multComplexPfS_S_
	.globl	salida2
	.bss
	.align 4
	.type	salida2, @object
	.size	salida2, 4
salida2:
	.zero	4
	.globl	salida
	.align 4
	.type	salida, @object
	.size	salida, 4
salida:
	.zero	4
	.globl	entrada
	.align 4
	.type	entrada, @object
	.size	entrada, 4
entrada:
	.zero	4
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	994352038
	.align 4
.LC7:
	.long	1074161254
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC9:
	.long	-858993459
	.long	1073794252
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.9.1-16ubuntu6) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
