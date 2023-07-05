
./a.out:     file format elf64-x86-64


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

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	45 31 c0             	xor    %r8d,%r8d
    1066:	31 c9                	xor    %ecx,%ecx
    1068:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1149 <main>
    106f:	ff 15 4b 2f 00 00    	call   *0x2f4b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 
    1080:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4020 <__TMC_END__>
    1087:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4020 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <_start+0x58>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <_start+0x58>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4020 <__TMC_END__>
    10b7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4020 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <_start+0x98>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <_start+0x98>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4020 <__TMC_END__>
    10fb:	75 33                	jne    1130 <_start+0xe0>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0d                	je     1118 <_start+0xc8>
    110b:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4018 <__dso_handle>
    1112:	ff 15 c8 2e 00 00    	call   *0x2ec8(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1118:	e8 63 ff ff ff       	call   1080 <_start+0x30>
    111d:	c6 05 fc 2e 00 00 01 	movb   $0x1,0x2efc(%rip)        # 4020 <__TMC_END__>
    1124:	5d                   	pop    %rbp
    1125:	c3                   	ret
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 
    1130:	c3                   	ret
    1131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1138:	00 00 00 00 
    113c:	0f 1f 40 00          	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 67 ff ff ff       	jmp    10b0 <_start+0x60>

0000000000001149 <main>:
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	53                   	push   %rbx
    114e:	48 83 ec 08          	sub    $0x8,%rsp
    1152:	48 8d 05 af 0e 00 00 	lea    0xeaf(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1159:	48 89 c7             	mov    %rax,%rdi
    115c:	e8 cf fe ff ff       	call   1030 <puts@plt>
    1161:	48 8d 05 00 0f 00 00 	lea    0xf00(%rip),%rax        # 2068 <_IO_stdin_used+0x68>
    1168:	48 89 c7             	mov    %rax,%rdi
    116b:	e8 c0 fe ff ff       	call   1030 <puts@plt>
    1170:	48 8d 05 91 0e 00 00 	lea    0xe91(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1177:	48 89 c7             	mov    %rax,%rdi
    117a:	e8 b1 fe ff ff       	call   1030 <puts@plt>
    117f:	bf 08 00 00 00       	mov    $0x8,%edi
    1184:	e8 44 01 00 00       	call   12cd <get_range>
    1189:	83 e8 01             	sub    $0x1,%eax
    118c:	89 c6                	mov    %eax,%esi
    118e:	48 8d 05 32 0f 00 00 	lea    0xf32(%rip),%rax        # 20c7 <_IO_stdin_used+0xc7>
    1195:	48 89 c7             	mov    %rax,%rdi
    1198:	b8 00 00 00 00       	mov    $0x0,%eax
    119d:	e8 9e fe ff ff       	call   1040 <printf@plt>
    11a2:	bf 20 00 00 00       	mov    $0x20,%edi
    11a7:	e8 21 01 00 00       	call   12cd <get_range>
    11ac:	83 e8 01             	sub    $0x1,%eax
    11af:	89 c6                	mov    %eax,%esi
    11b1:	48 8d 05 22 0f 00 00 	lea    0xf22(%rip),%rax        # 20da <_IO_stdin_used+0xda>
    11b8:	48 89 c7             	mov    %rax,%rdi
    11bb:	b8 00 00 00 00       	mov    $0x0,%eax
    11c0:	e8 7b fe ff ff       	call   1040 <printf@plt>
    11c5:	bf 40 00 00 00       	mov    $0x40,%edi
    11ca:	e8 fe 00 00 00       	call   12cd <get_range>
    11cf:	48 98                	cltq
    11d1:	48 83 e8 01          	sub    $0x1,%rax
    11d5:	48 89 c6             	mov    %rax,%rsi
    11d8:	48 8d 05 0e 0f 00 00 	lea    0xf0e(%rip),%rax        # 20ed <_IO_stdin_used+0xed>
    11df:	48 89 c7             	mov    %rax,%rdi
    11e2:	b8 00 00 00 00       	mov    $0x0,%eax
    11e7:	e8 54 fe ff ff       	call   1040 <printf@plt>
    11ec:	bf 10 00 00 00       	mov    $0x10,%edi
    11f1:	e8 d7 00 00 00       	call   12cd <get_range>
    11f6:	83 e8 01             	sub    $0x1,%eax
    11f9:	89 c6                	mov    %eax,%esi
    11fb:	48 8d 05 ff 0e 00 00 	lea    0xeff(%rip),%rax        # 2101 <_IO_stdin_used+0x101>
    1202:	48 89 c7             	mov    %rax,%rdi
    1205:	b8 00 00 00 00       	mov    $0x0,%eax
    120a:	e8 31 fe ff ff       	call   1040 <printf@plt>
    120f:	48 8d 05 f2 0d 00 00 	lea    0xdf2(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1216:	48 89 c7             	mov    %rax,%rdi
    1219:	e8 12 fe ff ff       	call   1030 <puts@plt>
    121e:	48 8d 05 f3 0e 00 00 	lea    0xef3(%rip),%rax        # 2118 <_IO_stdin_used+0x118>
    1225:	48 89 c7             	mov    %rax,%rdi
    1228:	e8 03 fe ff ff       	call   1030 <puts@plt>
    122d:	48 8d 05 d4 0d 00 00 	lea    0xdd4(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1234:	48 89 c7             	mov    %rax,%rdi
    1237:	e8 f4 fd ff ff       	call   1030 <puts@plt>
    123c:	bf 08 00 00 00       	mov    $0x8,%edi
    1241:	e8 87 00 00 00       	call   12cd <get_range>
    1246:	89 c2                	mov    %eax,%edx
    1248:	c1 ea 1f             	shr    $0x1f,%edx
    124b:	01 d0                	add    %edx,%eax
    124d:	d1 f8                	sar    %eax
    124f:	8d 58 ff             	lea    -0x1(%rax),%ebx
    1252:	bf 08 00 00 00       	mov    $0x8,%edi
    1257:	e8 71 00 00 00       	call   12cd <get_range>
    125c:	89 c2                	mov    %eax,%edx
    125e:	c1 ea 1f             	shr    $0x1f,%edx
    1261:	01 d0                	add    %edx,%eax
    1263:	d1 f8                	sar    %eax
    1265:	f7 d8                	neg    %eax
    1267:	89 da                	mov    %ebx,%edx
    1269:	89 c6                	mov    %eax,%esi
    126b:	48 8d 05 05 0f 00 00 	lea    0xf05(%rip),%rax        # 2177 <_IO_stdin_used+0x177>
    1272:	48 89 c7             	mov    %rax,%rdi
    1275:	b8 00 00 00 00       	mov    $0x0,%eax
    127a:	e8 c1 fd ff ff       	call   1040 <printf@plt>
    127f:	bf 10 00 00 00       	mov    $0x10,%edi
    1284:	e8 44 00 00 00       	call   12cd <get_range>
    1289:	89 c2                	mov    %eax,%edx
    128b:	c1 ea 1f             	shr    $0x1f,%edx
    128e:	01 d0                	add    %edx,%eax
    1290:	d1 f8                	sar    %eax
    1292:	8d 58 ff             	lea    -0x1(%rax),%ebx
    1295:	bf 10 00 00 00       	mov    $0x10,%edi
    129a:	e8 2e 00 00 00       	call   12cd <get_range>
    129f:	89 c2                	mov    %eax,%edx
    12a1:	c1 ea 1f             	shr    $0x1f,%edx
    12a4:	01 d0                	add    %edx,%eax
    12a6:	d1 f8                	sar    %eax
    12a8:	f7 d8                	neg    %eax
    12aa:	89 da                	mov    %ebx,%edx
    12ac:	89 c6                	mov    %eax,%esi
    12ae:	48 8d 05 d6 0e 00 00 	lea    0xed6(%rip),%rax        # 218b <_IO_stdin_used+0x18b>
    12b5:	48 89 c7             	mov    %rax,%rdi
    12b8:	b8 00 00 00 00       	mov    $0x0,%eax
    12bd:	e8 7e fd ff ff       	call   1040 <printf@plt>
    12c2:	b8 00 00 00 00       	mov    $0x0,%eax
    12c7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    12cb:	c9                   	leave
    12cc:	c3                   	ret

00000000000012cd <get_range>:
    12cd:	55                   	push   %rbp
    12ce:	48 89 e5             	mov    %rsp,%rbp
    12d1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12d5:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    12dc:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    12e3:	eb 07                	jmp    12ec <get_range+0x1f>
    12e5:	d1 65 f8             	shll   -0x8(%rbp)
    12e8:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12ec:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12ef:	48 98                	cltq
    12f1:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    12f5:	7d ee                	jge    12e5 <get_range+0x18>
    12f7:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12fa:	5d                   	pop    %rbp
    12fb:	c3                   	ret

Disassembly of section .fini:

00000000000012fc <_fini>:
    12fc:	f3 0f 1e fa          	endbr64
    1300:	48 83 ec 08          	sub    $0x8,%rsp
    1304:	48 83 c4 08          	add    $0x8,%rsp
    1308:	c3                   	ret
