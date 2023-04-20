
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

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <putc@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <putc@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <getc@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <getc@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001060 <main>:
    1060:	48 83 ec 08          	sub    $0x8,%rsp
    1064:	48 8d 3d 9d 0f 00 00 	lea    0xf9d(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    106b:	c7 05 d7 2f 00 00 00 	movl   $0x0,0x2fd7(%rip)        # 404c <state>
    1072:	00 00 00 
    1075:	c7 05 d1 2f 00 00 00 	movl   $0x0,0x2fd1(%rip)        # 4050 <c>
    107c:	00 00 00 
    107f:	e8 ac ff ff ff       	call   1030 <puts@plt>
    1084:	0f 1f 40 00          	nopl   0x0(%rax)
    1088:	48 8b 3d b1 2f 00 00 	mov    0x2fb1(%rip),%rdi        # 4040 <stdin@GLIBC_2.2.5>
    108f:	e8 bc ff ff ff       	call   1050 <getc@plt>
    1094:	89 05 b6 2f 00 00    	mov    %eax,0x2fb6(%rip)        # 4050 <c>
    109a:	83 f8 ff             	cmp    $0xffffffff,%eax
    109d:	74 69                	je     1108 <main+0xa8>
    109f:	8d 50 f7             	lea    -0x9(%rax),%edx
    10a2:	83 fa 01             	cmp    $0x1,%edx
    10a5:	76 19                	jbe    10c0 <main+0x60>
    10a7:	83 f8 20             	cmp    $0x20,%eax
    10aa:	74 14                	je     10c0 <main+0x60>
    10ac:	48 8b 35 7d 2f 00 00 	mov    0x2f7d(%rip),%rsi        # 4030 <stdout@GLIBC_2.2.5>
    10b3:	0f be f8             	movsbl %al,%edi
    10b6:	e8 85 ff ff ff       	call   1040 <putc@plt>
    10bb:	eb cb                	jmp    1088 <main+0x28>
    10bd:	0f 1f 00             	nopl   (%rax)
    10c0:	48 8b 3d 79 2f 00 00 	mov    0x2f79(%rip),%rdi        # 4040 <stdin@GLIBC_2.2.5>
    10c7:	c7 05 7b 2f 00 00 01 	movl   $0x1,0x2f7b(%rip)        # 404c <state>
    10ce:	00 00 00 
    10d1:	e8 7a ff ff ff       	call   1050 <getc@plt>
    10d6:	48 8b 35 53 2f 00 00 	mov    0x2f53(%rip),%rsi        # 4030 <stdout@GLIBC_2.2.5>
    10dd:	bf 0a 00 00 00       	mov    $0xa,%edi
    10e2:	89 05 68 2f 00 00    	mov    %eax,0x2f68(%rip)        # 4050 <c>
    10e8:	e8 53 ff ff ff       	call   1040 <putc@plt>
    10ed:	0f be 3d 5c 2f 00 00 	movsbl 0x2f5c(%rip),%edi        # 4050 <c>
    10f4:	48 8b 35 35 2f 00 00 	mov    0x2f35(%rip),%rsi        # 4030 <stdout@GLIBC_2.2.5>
    10fb:	e8 40 ff ff ff       	call   1040 <putc@plt>
    1100:	eb 86                	jmp    1088 <main+0x28>
    1102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1108:	31 c0                	xor    %eax,%eax
    110a:	48 83 c4 08          	add    $0x8,%rsp
    110e:	c3                   	ret
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1119:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1120:	00 
    1121:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1126:	c3                   	ret
    1127:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    112e:	00 00 

0000000000001130 <_start>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	31 ed                	xor    %ebp,%ebp
    1136:	49 89 d1             	mov    %rdx,%r9
    1139:	5e                   	pop    %rsi
    113a:	48 89 e2             	mov    %rsp,%rdx
    113d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1141:	50                   	push   %rax
    1142:	54                   	push   %rsp
    1143:	45 31 c0             	xor    %r8d,%r8d
    1146:	31 c9                	xor    %ecx,%ecx
    1148:	48 8d 3d 11 ff ff ff 	lea    -0xef(%rip),%rdi        # 1060 <main>
    114f:	ff 15 6b 2e 00 00    	call   *0x2e6b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1155:	f4                   	hlt
    1156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	48 8d 3d c1 2e 00 00 	lea    0x2ec1(%rip),%rdi        # 4028 <__TMC_END__>
    1167:	48 8d 05 ba 2e 00 00 	lea    0x2eba(%rip),%rax        # 4028 <__TMC_END__>
    116e:	48 39 f8             	cmp    %rdi,%rax
    1171:	74 15                	je     1188 <_start+0x58>
    1173:	48 8b 05 4e 2e 00 00 	mov    0x2e4e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    117a:	48 85 c0             	test   %rax,%rax
    117d:	74 09                	je     1188 <_start+0x58>
    117f:	ff e0                	jmp    *%rax
    1181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1188:	c3                   	ret
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1190:	48 8d 3d 91 2e 00 00 	lea    0x2e91(%rip),%rdi        # 4028 <__TMC_END__>
    1197:	48 8d 35 8a 2e 00 00 	lea    0x2e8a(%rip),%rsi        # 4028 <__TMC_END__>
    119e:	48 29 fe             	sub    %rdi,%rsi
    11a1:	48 89 f0             	mov    %rsi,%rax
    11a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11a8:	48 c1 f8 03          	sar    $0x3,%rax
    11ac:	48 01 c6             	add    %rax,%rsi
    11af:	48 d1 fe             	sar    %rsi
    11b2:	74 14                	je     11c8 <_start+0x98>
    11b4:	48 8b 05 1d 2e 00 00 	mov    0x2e1d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    11bb:	48 85 c0             	test   %rax,%rax
    11be:	74 08                	je     11c8 <_start+0x98>
    11c0:	ff e0                	jmp    *%rax
    11c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11c8:	c3                   	ret
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	80 3d 6d 2e 00 00 00 	cmpb   $0x0,0x2e6d(%rip)        # 4048 <stdin@GLIBC_2.2.5+0x8>
    11db:	75 33                	jne    1210 <_start+0xe0>
    11dd:	55                   	push   %rbp
    11de:	48 83 3d fa 2d 00 00 	cmpq   $0x0,0x2dfa(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11e5:	00 
    11e6:	48 89 e5             	mov    %rsp,%rbp
    11e9:	74 0d                	je     11f8 <_start+0xc8>
    11eb:	48 8b 3d 2e 2e 00 00 	mov    0x2e2e(%rip),%rdi        # 4020 <__dso_handle>
    11f2:	ff 15 e8 2d 00 00    	call   *0x2de8(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11f8:	e8 63 ff ff ff       	call   1160 <_start+0x30>
    11fd:	c6 05 44 2e 00 00 01 	movb   $0x1,0x2e44(%rip)        # 4048 <stdin@GLIBC_2.2.5+0x8>
    1204:	5d                   	pop    %rbp
    1205:	c3                   	ret
    1206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    120d:	00 00 00 
    1210:	c3                   	ret
    1211:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1218:	00 00 00 00 
    121c:	0f 1f 40 00          	nopl   0x0(%rax)
    1220:	f3 0f 1e fa          	endbr64
    1224:	e9 67 ff ff ff       	jmp    1190 <_start+0x60>

Disassembly of section .fini:

000000000000122c <_fini>:
    122c:	f3 0f 1e fa          	endbr64
    1230:	48 83 ec 08          	sub    $0x8,%rsp
    1234:	48 83 c4 08          	add    $0x8,%rsp
    1238:	c3                   	ret
