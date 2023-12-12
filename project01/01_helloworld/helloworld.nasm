
./helloworld:	file format elf64-x86-64

Disassembly of section .init:

0000000000401000 <_init>:
  401000: f3 0f 1e fa                  	endbr64
  401004: 48 83 ec 08                  	sub	rsp, 8
  401008: 48 8b 05 e9 2f 00 00         	mov	rax, qword ptr [rip + 12265] # 0x403ff8 <setvbuf@GLIBC_2.2.5+0x403ff8>
  40100f: 48 85 c0                     	test	rax, rax
  401012: 74 02                        	je	0x401016 <_init+0x16>
  401014: ff d0                        	call	rax
  401016: 48 83 c4 08                  	add	rsp, 8
  40101a: c3                           	ret

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020: ff 35 e2 2f 00 00            	push	qword ptr [rip + 12258] # 0x404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026: f2 ff 25 e3 2f 00 00         	repne		jmp	qword ptr [rip + 12259] # 0x404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d: 0f 1f 00                     	nop	dword ptr [rax]
  401030: f3 0f 1e fa                  	endbr64
  401034: 68 00 00 00 00               	push	0
  401039: f2 e9 e1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40103f: 90                           	nop
  401040: f3 0f 1e fa                  	endbr64
  401044: 68 01 00 00 00               	push	1
  401049: f2 e9 d1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40104f: 90                           	nop
  401050: f3 0f 1e fa                  	endbr64
  401054: 68 02 00 00 00               	push	2
  401059: f2 e9 c1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40105f: 90                           	nop
  401060: f3 0f 1e fa                  	endbr64
  401064: 68 03 00 00 00               	push	3
  401069: f2 e9 b1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40106f: 90                           	nop

Disassembly of section .plt.sec:

0000000000401070 <.plt.sec>:
  401070: f3 0f 1e fa                  	endbr64
  401074: f2 ff 25 9d 2f 00 00         	repne		jmp	qword ptr [rip + 12189] # 0x404018 <_GLOBAL_OFFSET_TABLE_+0x18>
  40107b: 0f 1f 44 00 00               	nop	dword ptr [rax + rax]
  401080: f3 0f 1e fa                  	endbr64
  401084: f2 ff 25 95 2f 00 00         	repne		jmp	qword ptr [rip + 12181] # 0x404020 <_GLOBAL_OFFSET_TABLE_+0x20>
  40108b: 0f 1f 44 00 00               	nop	dword ptr [rax + rax]
  401090: f3 0f 1e fa                  	endbr64
  401094: f2 ff 25 8d 2f 00 00         	repne		jmp	qword ptr [rip + 12173] # 0x404028 <_GLOBAL_OFFSET_TABLE_+0x28>
  40109b: 0f 1f 44 00 00               	nop	dword ptr [rax + rax]
  4010a0: f3 0f 1e fa                  	endbr64
  4010a4: f2 ff 25 85 2f 00 00         	repne		jmp	qword ptr [rip + 12165] # 0x404030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4010ab: 0f 1f 44 00 00               	nop	dword ptr [rax + rax]

Disassembly of section .text:

00000000004010b0 <_start>:
  4010b0: f3 0f 1e fa                  	endbr64
  4010b4: 31 ed                        	xor	ebp, ebp
  4010b6: 49 89 d1                     	mov	r9, rdx
  4010b9: 5e                           	pop	rsi
  4010ba: 48 89 e2                     	mov	rdx, rsp
  4010bd: 48 83 e4 f0                  	and	rsp, -16
  4010c1: 50                           	push	rax
  4010c2: 54                           	push	rsp
  4010c3: 45 31 c0                     	xor	r8d, r8d
  4010c6: 31 c9                        	xor	ecx, ecx
  4010c8: 48 c7 c7 1f 12 40 00         	mov	rdi, 4198943
  4010cf: ff 15 1b 2f 00 00            	call	qword ptr [rip + 12059] # 0x403ff0 <setvbuf@GLIBC_2.2.5+0x403ff0>
  4010d5: f4                           	hlt
  4010d6: 66 2e 0f 1f 84 00 00 00 00 00	nop	word ptr cs:[rax + rax]

00000000004010e0 <_dl_relocate_static_pie>:
  4010e0: f3 0f 1e fa                  	endbr64
  4010e4: c3                           	ret
  4010e5: 66 2e 0f 1f 84 00 00 00 00 00	nop	word ptr cs:[rax + rax]
  4010ef: 90                           	nop

00000000004010f0 <deregister_tm_clones>:
  4010f0: b8 48 40 40 00               	mov	eax, 4210760
  4010f5: 48 3d 48 40 40 00            	cmp	rax, 4210760
  4010fb: 74 13                        	je	0x401110 <deregister_tm_clones+0x20>
  4010fd: b8 00 00 00 00               	mov	eax, 0
  401102: 48 85 c0                     	test	rax, rax
  401105: 74 09                        	je	0x401110 <deregister_tm_clones+0x20>
  401107: bf 48 40 40 00               	mov	edi, 4210760
  40110c: ff e0                        	jmp	rax
  40110e: 66 90                        	nop
  401110: c3                           	ret
  401111: 66 66 2e 0f 1f 84 00 00 00 00 00     	nop	word ptr cs:[rax + rax]
  40111c: 0f 1f 40 00                  	nop	dword ptr [rax]

0000000000401120 <register_tm_clones>:
  401120: be 48 40 40 00               	mov	esi, 4210760
  401125: 48 81 ee 48 40 40 00         	sub	rsi, 4210760
  40112c: 48 89 f0                     	mov	rax, rsi
  40112f: 48 c1 ee 3f                  	shr	rsi, 63
  401133: 48 c1 f8 03                  	sar	rax, 3
  401137: 48 01 c6                     	add	rsi, rax
  40113a: 48 d1 fe                     	sar	rsi
  40113d: 74 11                        	je	0x401150 <register_tm_clones+0x30>
  40113f: b8 00 00 00 00               	mov	eax, 0
  401144: 48 85 c0                     	test	rax, rax
  401147: 74 07                        	je	0x401150 <register_tm_clones+0x30>
  401149: bf 48 40 40 00               	mov	edi, 4210760
  40114e: ff e0                        	jmp	rax
  401150: c3                           	ret
  401151: 66 66 2e 0f 1f 84 00 00 00 00 00     	nop	word ptr cs:[rax + rax]
  40115c: 0f 1f 40 00                  	nop	dword ptr [rax]

0000000000401160 <__do_global_dtors_aux>:
  401160: f3 0f 1e fa                  	endbr64
  401164: 80 3d 1d 2f 00 00 00         	cmp	byte ptr [rip + 12061], 0 # 0x404088 <completed.0>
  40116b: 75 13                        	jne	0x401180 <__do_global_dtors_aux+0x20>
  40116d: 55                           	push	rbp
  40116e: 48 89 e5                     	mov	rbp, rsp
  401171: e8 7a ff ff ff               	call	0x4010f0 <deregister_tm_clones>
  401176: c6 05 0b 2f 00 00 01         	mov	byte ptr [rip + 12043], 1 # 0x404088 <completed.0>
  40117d: 5d                           	pop	rbp
  40117e: c3                           	ret
  40117f: 90                           	nop
  401180: c3                           	ret
  401181: 66 66 2e 0f 1f 84 00 00 00 00 00     	nop	word ptr cs:[rax + rax]
  40118c: 0f 1f 40 00                  	nop	dword ptr [rax]

0000000000401190 <frame_dummy>:
  401190: f3 0f 1e fa                  	endbr64
  401194: eb 8a                        	jmp	0x401120 <register_tm_clones>

0000000000401196 <init>:
  401196: f3 0f 1e fa                  	endbr64
  40119a: 55                           	push	rbp
  40119b: 48 89 e5                     	mov	rbp, rsp
  40119e: 48 8b 05 cb 2e 00 00         	mov	rax, qword ptr [rip + 11979] # 0x404070 <stdin@GLIBC_2.2.5>
  4011a5: b9 00 00 00 00               	mov	ecx, 0
  4011aa: ba 02 00 00 00               	mov	edx, 2
  4011af: be 00 00 00 00               	mov	esi, 0
  4011b4: 48 89 c7                     	mov	rdi, rax
  4011b7: e8 e4 fe ff ff               	call	0x4010a0 <.plt.sec+0x30>
  4011bc: 48 8b 05 9d 2e 00 00         	mov	rax, qword ptr [rip + 11933] # 0x404060 <stdout@GLIBC_2.2.5>
  4011c3: b9 00 00 00 00               	mov	ecx, 0
  4011c8: ba 02 00 00 00               	mov	edx, 2
  4011cd: be 00 00 00 00               	mov	esi, 0
  4011d2: 48 89 c7                     	mov	rdi, rax
  4011d5: e8 c6 fe ff ff               	call	0x4010a0 <.plt.sec+0x30>
  4011da: 48 8b 05 9f 2e 00 00         	mov	rax, qword ptr [rip + 11935] # 0x404080 <stderr@GLIBC_2.2.5>
  4011e1: b9 00 00 00 00               	mov	ecx, 0
  4011e6: ba 02 00 00 00               	mov	edx, 2
  4011eb: be 00 00 00 00               	mov	esi, 0
  4011f0: 48 89 c7                     	mov	rdi, rax
  4011f3: e8 a8 fe ff ff               	call	0x4010a0 <.plt.sec+0x30>
  4011f8: 90                           	nop
  4011f9: 5d                           	pop	rbp
  4011fa: c3                           	ret

00000000004011fb <helloworld>:
  4011fb: f3 0f 1e fa                  	endbr64
  4011ff: 55                           	push	rbp
  401200: 48 89 e5                     	mov	rbp, rsp
  401203: ba 00 00 00 00               	mov	edx, 0
  401208: be 00 00 00 00               	mov	esi, 0
  40120d: 48 8d 05 f4 0d 00 00         	lea	rax, [rip + 3572]       # 0x402008 <_IO_stdin_used+0x8>
  401214: 48 89 c7                     	mov	rdi, rax
  401217: e8 64 fe ff ff               	call	0x401080 <.plt.sec+0x10>
  40121c: 90                           	nop
  40121d: 5d                           	pop	rbp
  40121e: c3                           	ret

000000000040121f <main>:
  40121f: f3 0f 1e fa                  	endbr64
  401223: 55                           	push	rbp
  401224: 48 89 e5                     	mov	rbp, rsp
  401227: 48 83 ec 20                  	sub	rsp, 32
  40122b: b8 00 00 00 00               	mov	eax, 0
  401230: e8 61 ff ff ff               	call	0x401196 <init>
  401235: 48 8d 05 d4 0d 00 00         	lea	rax, [rip + 3540]       # 0x402010 <_IO_stdin_used+0x10>
  40123c: 48 89 c7                     	mov	rdi, rax
  40123f: e8 2c fe ff ff               	call	0x401070 <.plt.sec>
  401244: 48 8d 05 dd 0d 00 00         	lea	rax, [rip + 3549]       # 0x402028 <_IO_stdin_used+0x28>
  40124b: 48 89 c7                     	mov	rdi, rax
  40124e: e8 1d fe ff ff               	call	0x401070 <.plt.sec>
  401253: 48 8d 45 e0                  	lea	rax, [rbp - 32]
  401257: 48 89 c7                     	mov	rdi, rax
  40125a: b8 00 00 00 00               	mov	eax, 0
  40125f: e8 2c fe ff ff               	call	0x401090 <.plt.sec+0x20>
  401264: b8 00 00 00 00               	mov	eax, 0
  401269: c9                           	leave
  40126a: c3                           	ret

Disassembly of section .fini:

000000000040126c <_fini>:
  40126c: f3 0f 1e fa                  	endbr64
  401270: 48 83 ec 08                  	sub	rsp, 8
  401274: 48 83 c4 08                  	add	rsp, 8
  401278: c3                           	ret
