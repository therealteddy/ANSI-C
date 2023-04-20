
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001040 <main>:
    1040:	48 83 ec 08          	sub    $0x8,%rsp
    1044:	48 8d 3d b9 0f 00 00 	lea    0xfb9(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    104b:	b8 01 00 00 00       	mov    $0x1,%eax
    1050:	f2 0f 10 05 d0 0f 00 	movsd  0xfd0(%rip),%xmm0        # 2028 <_IO_stdin_used+0x28>
    1057:	00 
    1058:	e8 d3 ff ff ff       	call   1030 <printf@plt>
    105d:	f2 0f 10 05 cb 0f 00 	movsd  0xfcb(%rip),%xmm0        # 2030 <_IO_stdin_used+0x30>
    1064:	00 
    1065:	b8 01 00 00 00       	mov    $0x1,%eax
    106a:	48 8d 3d a3 0f 00 00 	lea    0xfa3(%rip),%rdi        # 2014 <_IO_stdin_used+0x14>
    1071:	e8 ba ff ff ff       	call   1030 <printf@plt>
    1076:	31 c0                	xor    %eax,%eax
    1078:	48 83 c4 08          	add    $0x8,%rsp
    107c:	c3                   	ret
    107d:	0f 1f 00             	nopl   (%rax)
    1080:	f3 0f 1e fa          	endbr64
    1084:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1089:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1090:	00 
    1091:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1096:	c3                   	ret
    1097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    109e:	00 00 

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d 81 ff ff ff 	lea    -0x7f(%rip),%rdi        # 1040 <main>
    10bf:	ff 15 fb 2e 00 00    	call   *0x2efb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 
    10d0:	48 8d 3d 41 2f 00 00 	lea    0x2f41(%rip),%rdi        # 4018 <__TMC_END__>
    10d7:	48 8d 05 3a 2f 00 00 	lea    0x2f3a(%rip),%rax        # 4018 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <_start+0x58>
    10e3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <_start+0x58>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1100:	48 8d 3d 11 2f 00 00 	lea    0x2f11(%rip),%rdi        # 4018 <__TMC_END__>
    1107:	48 8d 35 0a 2f 00 00 	lea    0x2f0a(%rip),%rsi        # 4018 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <_start+0x98>
    1124:	48 8b 05 ad 2e 00 00 	mov    0x2ead(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <_start+0x98>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64
    1144:	80 3d cd 2e 00 00 00 	cmpb   $0x0,0x2ecd(%rip)        # 4018 <__TMC_END__>
    114b:	75 33                	jne    1180 <_start+0xe0>
    114d:	55                   	push   %rbp
    114e:	48 83 3d 8a 2e 00 00 	cmpq   $0x0,0x2e8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0d                	je     1168 <_start+0xc8>
    115b:	48 8b 3d ae 2e 00 00 	mov    0x2eae(%rip),%rdi        # 4010 <__dso_handle>
    1162:	ff 15 78 2e 00 00    	call   *0x2e78(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1168:	e8 63 ff ff ff       	call   10d0 <_start+0x30>
    116d:	c6 05 a4 2e 00 00 01 	movb   $0x1,0x2ea4(%rip)        # 4018 <__TMC_END__>
    1174:	5d                   	pop    %rbp
    1175:	c3                   	ret
    1176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117d:	00 00 00 
    1180:	c3                   	ret
    1181:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)
    1190:	f3 0f 1e fa          	endbr64
    1194:	e9 67 ff ff ff       	jmp    1100 <_start+0x60>
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <convert_to_celsius>:
    11a0:	f2 0f 5c 05 90 0e 00 	subsd  0xe90(%rip),%xmm0        # 2038 <_IO_stdin_used+0x38>
    11a7:	00 
    11a8:	f2 0f 59 05 90 0e 00 	mulsd  0xe90(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    11af:	00 
    11b0:	c3                   	ret
    11b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11b8:	00 00 00 00 
    11bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011c0 <convert_to_farenheit>:
    11c0:	f2 0f 59 05 80 0e 00 	mulsd  0xe80(%rip),%xmm0        # 2048 <_IO_stdin_used+0x48>
    11c7:	00 
    11c8:	f2 0f 58 05 68 0e 00 	addsd  0xe68(%rip),%xmm0        # 2038 <_IO_stdin_used+0x38>
    11cf:	00 
    11d0:	c3                   	ret

Disassembly of section .fini:

00000000000011d4 <_fini>:
    11d4:	f3 0f 1e fa          	endbr64
    11d8:	48 83 ec 08          	sub    $0x8,%rsp
    11dc:	48 83 c4 08          	add    $0x8,%rsp
    11e0:	c3                   	ret
