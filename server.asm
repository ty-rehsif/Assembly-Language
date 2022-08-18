	.file	"server.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"Error while creating socket\n"
.LC1:
	.string	"Socket created successfully\n"
.LC2:
	.string	"127.0.0.1"
.LC3:
	.string	"Couldn't bind to the port\n"
.LC4:
	.string	"Done with binding\n"
.LC5:
	.string	"Error while listening\n"
	.align 4
.LC6:
	.string	"\nListening for incoming connections.....\n"
.LC7:
	.string	"Can't accept\n"
	.align 4
.LC8:
	.string	"Client connected at IP: %s and port: %i\n"
.LC9:
	.string	"Couldn't receive\n"
.LC10:
	.string	"Msg from client: %s\n"
	.align 4
.LC11:
	.string	"ORA!ORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORAORA"
.LC12:
	.string	"Can't send\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "server.c"
	.loc 1 7 1
	endbr32
	lea	ecx, 4[esp]
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
	push	esi
	push	ebx
	push	ecx
	sub	esp, 172
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 13 5
	sub	esp, 4
	push	50
	push	0
	lea	eax, -122[ebp]
	push	eax
	call	memset@PLT
	add	esp, 16
	.loc 1 14 5
	sub	esp, 4
	push	50
	push	0
	lea	eax, -172[ebp]
	push	eax
	call	memset@PLT
	add	esp, 16
	.loc 1 17 19
	sub	esp, 4
	push	0
	push	1
	push	2
	call	socket@PLT
	add	esp, 16
	mov	DWORD PTR -28[ebp], eax
	.loc 1 19 7
	cmp	DWORD PTR -28[ebp], 0
	jns	.L2
	.loc 1 20 9
	sub	esp, 12
	lea	eax, .LC0@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 21 16
	mov	eax, -1
	jmp	.L9
.L2:
	.loc 1 23 5
	sub	esp, 12
	lea	eax, .LC1@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 26 28
	mov	WORD PTR -56[ebp], 2
	.loc 1 27 28
	sub	esp, 12
	push	100
	call	htons@PLT
	add	esp, 16
	.loc 1 27 26
	mov	WORD PTR -54[ebp], ax
	.loc 1 28 35
	sub	esp, 12
	lea	eax, .LC2@GOTOFF[ebx]
	push	eax
	call	inet_addr@PLT
	add	esp, 16
	.loc 1 28 33
	mov	DWORD PTR -52[ebp], eax
	.loc 1 31 8
	sub	esp, 4
	push	16
	lea	eax, -56[ebp]
	push	eax
	push	DWORD PTR -28[ebp]
	call	bind@PLT
	add	esp, 16
	.loc 1 31 7
	test	eax, eax
	jns	.L4
	.loc 1 32 9
	sub	esp, 12
	lea	eax, .LC3@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 33 16
	mov	eax, -1
	jmp	.L9
.L4:
	.loc 1 35 5
	sub	esp, 12
	lea	eax, .LC4@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 38 8
	sub	esp, 8
	push	1
	push	DWORD PTR -28[ebp]
	call	listen@PLT
	add	esp, 16
	.loc 1 38 7
	test	eax, eax
	jns	.L5
	.loc 1 39 9
	sub	esp, 12
	lea	eax, .LC5@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 40 16
	mov	eax, -1
	jmp	.L9
.L5:
	.loc 1 42 5
	sub	esp, 12
	lea	eax, .LC6@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 45 17
	mov	DWORD PTR -40[ebp], 16
	.loc 1 46 19
	sub	esp, 4
	lea	eax, -40[ebp]
	push	eax
	lea	eax, -72[ebp]
	push	eax
	push	DWORD PTR -28[ebp]
	call	accept@PLT
	add	esp, 16
	mov	DWORD PTR -32[ebp], eax
	.loc 1 48 8
	cmp	DWORD PTR -32[ebp], 0
	jns	.L6
	.loc 1 49 9
	sub	esp, 12
	lea	eax, .LC7@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 50 16
	mov	eax, -1
	jmp	.L9
.L6:
	.loc 1 52 107
	movzx	eax, WORD PTR -70[ebp]
	.loc 1 52 90
	movzx	eax, ax
	sub	esp, 12
	push	eax
	call	ntohs@PLT
	add	esp, 16
	.loc 1 52 5
	movzx	esi, ax
	sub	esp, 12
	push	DWORD PTR -68[ebp]
	call	inet_ntoa@PLT
	add	esp, 16
	sub	esp, 4
	push	esi
	push	eax
	lea	eax, .LC8@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 55 9
	push	0
	push	50
	lea	eax, -172[ebp]
	push	eax
	push	DWORD PTR -32[ebp]
	call	recv@PLT
	add	esp, 16
	.loc 1 55 8
	test	eax, eax
	jns	.L7
	.loc 1 56 9
	sub	esp, 12
	lea	eax, .LC9@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 57 16
	mov	eax, -1
	jmp	.L9
.L7:
	.loc 1 59 5
	sub	esp, 8
	lea	eax, -172[ebp]
	push	eax
	lea	eax, .LC10@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 61 11
	lea	eax, .LC11@GOTOFF[ebx]
	mov	DWORD PTR -36[ebp], eax
	.loc 1 63 5
	sub	esp, 8
	push	DWORD PTR -36[ebp]
	lea	eax, -122[ebp]
	push	eax
	call	strcpy@PLT
	add	esp, 16
	.loc 1 65 9
	sub	esp, 12
	lea	eax, -122[ebp]
	push	eax
	call	strlen@PLT
	add	esp, 16
	push	0
	push	eax
	lea	eax, -122[ebp]
	push	eax
	push	DWORD PTR -32[ebp]
	call	send@PLT
	add	esp, 16
	.loc 1 65 8
	test	eax, eax
	jns	.L8
	.loc 1 66 9
	sub	esp, 12
	lea	eax, .LC12@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	.loc 1 67 16
	mov	eax, -1
	jmp	.L9
.L8:
	.loc 1 71 5
	sub	esp, 12
	push	DWORD PTR -32[ebp]
	call	close@PLT
	add	esp, 16
	.loc 1 72 5
	sub	esp, 12
	push	DWORD PTR -28[ebp]
	call	close@PLT
	add	esp, 16
	.loc 1 74 12
	mov	eax, 0
.L9:
	.loc 1 75 1 discriminator 1
	lea	esp, -12[ebp]
	pop	ecx
	pop	ebx
	pop	esi
	pop	ebp
	lea	esp, -4[ecx]
	ret
.LFE6:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB7:
	mov	ebx, DWORD PTR [esp]
	ret
.LFE7:
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/bits/sys_errlist.h"
	.file 8 "/usr/include/bits/sockaddr.h"
	.file 9 "/usr/include/bits/socket.h"
	.file 10 "/usr/include/bits/stdint-uintn.h"
	.file 11 "/usr/include/netinet/in.h"
	.file 12 "/usr/include/bits/socket_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x595
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF96
	.byte	0xc
	.long	.LASF97
	.long	.LASF98
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x4
	.long	0x38
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x44
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x4b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x31
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x9e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0xb8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF15
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x92
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.long	0x38
	.uleb128 0x8
	.long	.LASF65
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x25a
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x7f
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xcd
	.byte	0x4
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xcd
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xcd
	.byte	0xc
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xcd
	.byte	0x10
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xcd
	.byte	0x14
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xcd
	.byte	0x18
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xcd
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xcd
	.byte	0x20
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xcd
	.byte	0x24
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xcd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xcd
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x273
	.byte	0x30
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x279
	.byte	0x34
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x7f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x7f
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xac
	.byte	0x40
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x4b
	.byte	0x44
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x59
	.byte	0x46
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x27f
	.byte	0x47
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x28f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xbf
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x29a
	.byte	0x54
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2a5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x279
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xcb
	.byte	0x60
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x7f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2ab
	.byte	0x6c
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xd3
	.uleb128 0xa
	.long	.LASF99
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF47
	.uleb128 0x7
	.byte	0x4
	.long	0x26e
	.uleb128 0x7
	.byte	0x4
	.long	0xd3
	.uleb128 0xc
	.long	0x38
	.long	0x28f
	.uleb128 0xd
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x266
	.uleb128 0xb
	.long	.LASF48
	.uleb128 0x7
	.byte	0x4
	.long	0x295
	.uleb128 0xb
	.long	.LASF49
	.uleb128 0x7
	.byte	0x4
	.long	0x2a0
	.uleb128 0xc
	.long	0x38
	.long	0x2bb
	.uleb128 0xd
	.long	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2c7
	.uleb128 0x7
	.byte	0x4
	.long	0x25a
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2c7
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2c7
	.uleb128 0xe
	.long	.LASF53
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x7f
	.uleb128 0xc
	.long	0x307
	.long	0x2fc
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.long	0x2f1
	.uleb128 0x7
	.byte	0x4
	.long	0x3f
	.uleb128 0x4
	.long	0x301
	.uleb128 0xe
	.long	.LASF54
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2fc
	.uleb128 0x10
	.long	.LASF100
	.byte	0x7
	.byte	0x4
	.long	0x31
	.byte	0xc
	.byte	0x18
	.byte	0x6
	.long	0x365
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.uleb128 0x11
	.long	.LASF56
	.byte	0x2
	.uleb128 0x11
	.long	.LASF57
	.byte	0x3
	.uleb128 0x11
	.long	.LASF58
	.byte	0x4
	.uleb128 0x11
	.long	.LASF59
	.byte	0x5
	.uleb128 0x11
	.long	.LASF60
	.byte	0x6
	.uleb128 0x11
	.long	.LASF61
	.byte	0xa
	.uleb128 0x12
	.long	.LASF62
	.long	0x80000
	.uleb128 0x13
	.long	.LASF63
	.value	0x800
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x1c
	.byte	0x1c
	.long	0x4b
	.uleb128 0x8
	.long	.LASF66
	.byte	0x10
	.byte	0x9
	.byte	0xb2
	.byte	0x8
	.long	0x399
	.uleb128 0x9
	.long	.LASF67
	.byte	0x9
	.byte	0xb4
	.byte	0x5
	.long	0x365
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x9
	.byte	0xb5
	.byte	0xa
	.long	0x399
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0x38
	.long	0x3a9
	.uleb128 0xd
	.long	0x31
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.long	0x60
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.byte	0x19
	.byte	0x14
	.long	0x73
	.uleb128 0x2
	.long	.LASF71
	.byte	0xa
	.byte	0x1a
	.byte	0x14
	.long	0x86
	.uleb128 0x2
	.long	.LASF72
	.byte	0xb
	.byte	0x1e
	.byte	0x12
	.long	0x3c1
	.uleb128 0x8
	.long	.LASF73
	.byte	0x4
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.long	0x3f4
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x21
	.byte	0xf
	.long	0x3cd
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0xb
	.byte	0x77
	.byte	0x12
	.long	0x3b5
	.uleb128 0x14
	.byte	0x10
	.byte	0xb
	.byte	0xd6
	.byte	0x5
	.long	0x42e
	.uleb128 0x15
	.long	.LASF76
	.byte	0xb
	.byte	0xd8
	.byte	0xa
	.long	0x42e
	.uleb128 0x15
	.long	.LASF77
	.byte	0xb
	.byte	0xd9
	.byte	0xb
	.long	0x43e
	.uleb128 0x15
	.long	.LASF78
	.byte	0xb
	.byte	0xda
	.byte	0xb
	.long	0x44e
	.byte	0
	.uleb128 0xc
	.long	0x3a9
	.long	0x43e
	.uleb128 0xd
	.long	0x31
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x3b5
	.long	0x44e
	.uleb128 0xd
	.long	0x31
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x3c1
	.long	0x45e
	.uleb128 0xd
	.long	0x31
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF79
	.byte	0x10
	.byte	0xb
	.byte	0xd4
	.byte	0x8
	.long	0x479
	.uleb128 0x9
	.long	.LASF80
	.byte	0xb
	.byte	0xdb
	.byte	0x9
	.long	0x400
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x45e
	.uleb128 0xe
	.long	.LASF81
	.byte	0xb
	.byte	0xe4
	.byte	0x1e
	.long	0x479
	.uleb128 0xe
	.long	.LASF82
	.byte	0xb
	.byte	0xe5
	.byte	0x1e
	.long	0x479
	.uleb128 0x8
	.long	.LASF83
	.byte	0x10
	.byte	0xb
	.byte	0xee
	.byte	0x8
	.long	0x4d8
	.uleb128 0x9
	.long	.LASF84
	.byte	0xb
	.byte	0xf0
	.byte	0x5
	.long	0x365
	.byte	0
	.uleb128 0x9
	.long	.LASF85
	.byte	0xb
	.byte	0xf1
	.byte	0xf
	.long	0x3f4
	.byte	0x2
	.uleb128 0x9
	.long	.LASF86
	.byte	0xb
	.byte	0xf2
	.byte	0x14
	.long	0x3d9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF87
	.byte	0xb
	.byte	0xf5
	.byte	0x13
	.long	0x4d8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x44
	.long	0x4e8
	.uleb128 0xd
	.long	0x31
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.long	0x7f
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x58c
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.byte	0x8
	.byte	0x9
	.long	0x7f
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.long	0x7f
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.byte	0x8
	.byte	0x23
	.long	0x7f
	.uleb128 0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.byte	0x9
	.byte	0x18
	.long	0x496
	.uleb128 0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.byte	0x9
	.byte	0x25
	.long	0x496
	.uleb128 0x3
	.byte	0x75
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.long	0x58c
	.uleb128 0x3
	.byte	0x75
	.sleb128 -122
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.byte	0xa
	.byte	0x1e
	.long	0x58c
	.uleb128 0x3
	.byte	0x75
	.sleb128 -172
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.byte	0x3d
	.byte	0xb
	.long	0xcd
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.long	0x7f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x38
	.uleb128 0xd
	.long	0x31
	.byte	0x31
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"/home/rehsif/Documents/SSD/A6/Part 3 (copy)"
.LASF102:
	.string	"close"
.LASF32:
	.string	"_flags2"
.LASF20:
	.string	"_IO_read_base"
.LASF65:
	.string	"_IO_FILE"
.LASF60:
	.string	"SOCK_DCCP"
.LASF94:
	.string	"client_message"
.LASF53:
	.string	"sys_nerr"
.LASF28:
	.string	"_IO_save_end"
.LASF8:
	.string	"short int"
.LASF6:
	.string	"size_t"
.LASF79:
	.string	"in6_addr"
.LASF38:
	.string	"_offset"
.LASF9:
	.string	"__uint16_t"
.LASF22:
	.string	"_IO_write_ptr"
.LASF17:
	.string	"_flags"
.LASF10:
	.string	"__uint32_t"
.LASF76:
	.string	"__u6_addr8"
.LASF29:
	.string	"_markers"
.LASF19:
	.string	"_IO_read_end"
.LASF42:
	.string	"_freeres_buf"
.LASF69:
	.string	"uint8_t"
.LASF39:
	.string	"_codecvt"
.LASF95:
	.string	"pressure"
.LASF96:
	.string	"GNU C17 9.4.0 -m32 -masm=intel -mtune=generic -march=i686 -ggdb -O0 -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF84:
	.string	"sin_family"
.LASF80:
	.string	"__in6_u"
.LASF52:
	.string	"stderr"
.LASF12:
	.string	"long long int"
.LASF77:
	.string	"__u6_addr16"
.LASF37:
	.string	"_lock"
.LASF15:
	.string	"long int"
.LASF11:
	.string	"__int64_t"
.LASF90:
	.string	"client_size"
.LASF56:
	.string	"SOCK_DGRAM"
.LASF34:
	.string	"_cur_column"
.LASF7:
	.string	"__uint8_t"
.LASF86:
	.string	"sin_addr"
.LASF82:
	.string	"in6addr_loopback"
.LASF33:
	.string	"_old_offset"
.LASF64:
	.string	"sa_family_t"
.LASF2:
	.string	"unsigned char"
.LASF58:
	.string	"SOCK_RDM"
.LASF24:
	.string	"_IO_buf_base"
.LASF43:
	.string	"__pad5"
.LASF5:
	.string	"signed char"
.LASF87:
	.string	"sin_zero"
.LASF13:
	.string	"long long unsigned int"
.LASF71:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"_IO_marker"
.LASF36:
	.string	"_shortbuf"
.LASF74:
	.string	"s_addr"
.LASF4:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_base"
.LASF45:
	.string	"_unused2"
.LASF88:
	.string	"socket_desc"
.LASF68:
	.string	"sa_data"
.LASF25:
	.string	"_IO_buf_end"
.LASF59:
	.string	"SOCK_SEQPACKET"
.LASF1:
	.string	"char"
.LASF70:
	.string	"uint16_t"
.LASF101:
	.string	"main"
.LASF40:
	.string	"_wide_data"
.LASF41:
	.string	"_freeres_list"
.LASF16:
	.string	"__off64_t"
.LASF62:
	.string	"SOCK_CLOEXEC"
.LASF72:
	.string	"in_addr_t"
.LASF100:
	.string	"__socket_type"
.LASF57:
	.string	"SOCK_RAW"
.LASF97:
	.string	"server.c"
.LASF81:
	.string	"in6addr_any"
.LASF23:
	.string	"_IO_write_end"
.LASF61:
	.string	"SOCK_PACKET"
.LASF14:
	.string	"__off_t"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"_chain"
.LASF85:
	.string	"sin_port"
.LASF49:
	.string	"_IO_wide_data"
.LASF44:
	.string	"_mode"
.LASF27:
	.string	"_IO_backup_base"
.LASF50:
	.string	"stdin"
.LASF75:
	.string	"in_port_t"
.LASF93:
	.string	"server_message"
.LASF67:
	.string	"sa_family"
.LASF48:
	.string	"_IO_codecvt"
.LASF92:
	.string	"client_addr"
.LASF78:
	.string	"__u6_addr32"
.LASF35:
	.string	"_vtable_offset"
.LASF73:
	.string	"in_addr"
.LASF55:
	.string	"SOCK_STREAM"
.LASF26:
	.string	"_IO_save_base"
.LASF54:
	.string	"sys_errlist"
.LASF31:
	.string	"_fileno"
.LASF46:
	.string	"FILE"
.LASF18:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"client_sock"
.LASF91:
	.string	"server_addr"
.LASF83:
	.string	"sockaddr_in"
.LASF51:
	.string	"stdout"
.LASF66:
	.string	"sockaddr"
.LASF99:
	.string	"_IO_lock_t"
.LASF63:
	.string	"SOCK_NONBLOCK"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
