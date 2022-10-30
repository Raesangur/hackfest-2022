
chal1:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <fclose@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <fclose@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <printf@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 4028 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <srand@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4030 <srand@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <fgets@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4038 <fgets@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <getchar@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4040 <getchar@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <time@plt>:
    1090:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4048 <time@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

00000000000010a0 <setvbuf@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4050 <setvbuf@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

00000000000010b0 <fopen@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4058 <fopen@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

00000000000010c0 <__isoc99_scanf@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4060 <__isoc99_scanf@GLIBC_2.7>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

00000000000010d0 <rand@plt>:
    10d0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4068 <rand@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	ff 25 12 2f 00 00    	jmp    *0x2f12(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010f0 <_start>:
    10f0:	31 ed                	xor    %ebp,%ebp
    10f2:	49 89 d1             	mov    %rdx,%r9
    10f5:	5e                   	pop    %rsi
    10f6:	48 89 e2             	mov    %rsp,%rdx
    10f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10fd:	50                   	push   %rax
    10fe:	54                   	push   %rsp
    10ff:	4c 8d 05 8a 04 00 00 	lea    0x48a(%rip),%r8        # 1590 <__libc_csu_fini>
    1106:	48 8d 0d 23 04 00 00 	lea    0x423(%rip),%rcx        # 1530 <__libc_csu_init>
    110d:	48 8d 3d 1c 03 00 00 	lea    0x31c(%rip),%rdi        # 1430 <main>
    1114:	ff 15 c6 2e 00 00    	call   *0x2ec6(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    111a:	f4                   	hlt    
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <deregister_tm_clones>:
    1120:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4080 <stdout@GLIBC_2.2.5>
    1127:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4080 <stdout@GLIBC_2.2.5>
    112e:	48 39 f8             	cmp    %rdi,%rax
    1131:	74 15                	je     1148 <deregister_tm_clones+0x28>
    1133:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    113a:	48 85 c0             	test   %rax,%rax
    113d:	74 09                	je     1148 <deregister_tm_clones+0x28>
    113f:	ff e0                	jmp    *%rax
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1148:	c3                   	ret    
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <register_tm_clones>:
    1150:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4080 <stdout@GLIBC_2.2.5>
    1157:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4080 <stdout@GLIBC_2.2.5>
    115e:	48 29 fe             	sub    %rdi,%rsi
    1161:	48 c1 fe 03          	sar    $0x3,%rsi
    1165:	48 89 f0             	mov    %rsi,%rax
    1168:	48 c1 e8 3f          	shr    $0x3f,%rax
    116c:	48 01 c6             	add    %rax,%rsi
    116f:	48 d1 fe             	sar    %rsi
    1172:	74 14                	je     1188 <register_tm_clones+0x38>
    1174:	48 8b 05 75 2e 00 00 	mov    0x2e75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    117b:	48 85 c0             	test   %rax,%rax
    117e:	74 08                	je     1188 <register_tm_clones+0x38>
    1180:	ff e0                	jmp    *%rax
    1182:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1188:	c3                   	ret    
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <__do_global_dtors_aux>:
    1190:	80 3d 01 2f 00 00 00 	cmpb   $0x0,0x2f01(%rip)        # 4098 <completed.7325>
    1197:	75 2f                	jne    11c8 <__do_global_dtors_aux+0x38>
    1199:	55                   	push   %rbp
    119a:	48 83 3d 56 2e 00 00 	cmpq   $0x0,0x2e56(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11a1:	00 
    11a2:	48 89 e5             	mov    %rsp,%rbp
    11a5:	74 0c                	je     11b3 <__do_global_dtors_aux+0x23>
    11a7:	48 8b 3d ca 2e 00 00 	mov    0x2eca(%rip),%rdi        # 4078 <__dso_handle>
    11ae:	e8 2d ff ff ff       	call   10e0 <__cxa_finalize@plt>
    11b3:	e8 68 ff ff ff       	call   1120 <deregister_tm_clones>
    11b8:	c6 05 d9 2e 00 00 01 	movb   $0x1,0x2ed9(%rip)        # 4098 <completed.7325>
    11bf:	5d                   	pop    %rbp
    11c0:	c3                   	ret    
    11c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11c8:	c3                   	ret    
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011d0 <frame_dummy>:
    11d0:	e9 7b ff ff ff       	jmp    1150 <register_tm_clones>

00000000000011d5 <call_3>:
    11d5:	55                   	push   %rbp
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11dc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    11e3:	8b 45 ec             	mov    -0x14(%rbp),%eax
    11e6:	83 c0 14             	add    $0x14,%eax
    11e9:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11ec:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11ef:	5d                   	pop    %rbp
    11f0:	c3                   	ret    

00000000000011f1 <call_7>:
    11f1:	55                   	push   %rbp
    11f2:	48 89 e5             	mov    %rsp,%rbp
    11f5:	48 83 ec 08          	sub    $0x8,%rsp
    11f9:	89 7d fc             	mov    %edi,-0x4(%rbp)
    11fc:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11ff:	89 c7                	mov    %eax,%edi
    1201:	e8 cf ff ff ff       	call   11d5 <call_3>
    1206:	0f af 45 fc          	imul   -0x4(%rbp),%eax
    120a:	c9                   	leave  
    120b:	c3                   	ret    

000000000000120c <call_6>:
    120c:	55                   	push   %rbp
    120d:	48 89 e5             	mov    %rsp,%rbp
    1210:	48 83 ec 08          	sub    $0x8,%rsp
    1214:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1217:	8b 45 fc             	mov    -0x4(%rbp),%eax
    121a:	89 c7                	mov    %eax,%edi
    121c:	e8 d0 ff ff ff       	call   11f1 <call_7>
    1221:	0f af 45 fc          	imul   -0x4(%rbp),%eax
    1225:	c9                   	leave  
    1226:	c3                   	ret    

0000000000001227 <call_5>:
    1227:	55                   	push   %rbp
    1228:	48 89 e5             	mov    %rsp,%rbp
    122b:	53                   	push   %rbx
    122c:	48 83 ec 08          	sub    $0x8,%rsp
    1230:	89 7d f4             	mov    %edi,-0xc(%rbp)
    1233:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1236:	89 c7                	mov    %eax,%edi
    1238:	e8 98 ff ff ff       	call   11d5 <call_3>
    123d:	89 c3                	mov    %eax,%ebx
    123f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1242:	89 c7                	mov    %eax,%edi
    1244:	e8 c3 ff ff ff       	call   120c <call_6>
    1249:	29 c3                	sub    %eax,%ebx
    124b:	89 d8                	mov    %ebx,%eax
    124d:	48 83 c4 08          	add    $0x8,%rsp
    1251:	5b                   	pop    %rbx
    1252:	5d                   	pop    %rbp
    1253:	c3                   	ret    

0000000000001254 <call_4>:
    1254:	55                   	push   %rbp
    1255:	48 89 e5             	mov    %rsp,%rbp
    1258:	48 83 ec 18          	sub    $0x18,%rsp
    125c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    125f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1266:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1269:	6b c0 1e             	imul   $0x1e,%eax,%eax
    126c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    126f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1272:	89 c7                	mov    %eax,%edi
    1274:	e8 ae ff ff ff       	call   1227 <call_5>
    1279:	c9                   	leave  
    127a:	c3                   	ret    

000000000000127b <call_2>:
    127b:	55                   	push   %rbp
    127c:	48 89 e5             	mov    %rsp,%rbp
    127f:	53                   	push   %rbx
    1280:	48 83 ec 18          	sub    $0x18,%rsp
    1284:	89 7d e4             	mov    %edi,-0x1c(%rbp)
    1287:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    128e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1291:	89 c7                	mov    %eax,%edi
    1293:	e8 3d ff ff ff       	call   11d5 <call_3>
    1298:	89 c3                	mov    %eax,%ebx
    129a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    129d:	89 c7                	mov    %eax,%edi
    129f:	e8 b0 ff ff ff       	call   1254 <call_4>
    12a4:	0f af c3             	imul   %ebx,%eax
    12a7:	89 45 f4             	mov    %eax,-0xc(%rbp)
    12aa:	8b 45 f4             	mov    -0xc(%rbp),%eax
    12ad:	48 83 c4 18          	add    $0x18,%rsp
    12b1:	5b                   	pop    %rbx
    12b2:	5d                   	pop    %rbp
    12b3:	c3                   	ret    

00000000000012b4 <call_1>:
    12b4:	55                   	push   %rbp
    12b5:	48 89 e5             	mov    %rsp,%rbp
    12b8:	48 83 ec 18          	sub    $0x18,%rsp
    12bc:	89 7d ec             	mov    %edi,-0x14(%rbp)
    12bf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12c6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    12c9:	89 c7                	mov    %eax,%edi
    12cb:	e8 ab ff ff ff       	call   127b <call_2>
    12d0:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12d3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12d6:	c9                   	leave  
    12d7:	c3                   	ret    

00000000000012d8 <print_menu>:
    12d8:	55                   	push   %rbp
    12d9:	48 89 e5             	mov    %rsp,%rbp
    12dc:	48 8d 3d 25 0d 00 00 	lea    0xd25(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    12e3:	e8 48 fd ff ff       	call   1030 <puts@plt>
    12e8:	90                   	nop
    12e9:	5d                   	pop    %rbp
    12ea:	c3                   	ret    

00000000000012eb <print_alcohol>:
    12eb:	55                   	push   %rbp
    12ec:	48 89 e5             	mov    %rsp,%rbp
    12ef:	48 8d 3d ea 0d 00 00 	lea    0xdea(%rip),%rdi        # 20e0 <_IO_stdin_used+0xe0>
    12f6:	e8 35 fd ff ff       	call   1030 <puts@plt>
    12fb:	e8 80 fd ff ff       	call   1080 <getchar@plt>
    1300:	e8 7b fd ff ff       	call   1080 <getchar@plt>
    1305:	90                   	nop
    1306:	5d                   	pop    %rbp
    1307:	c3                   	ret    

0000000000001308 <about>:
    1308:	55                   	push   %rbp
    1309:	48 89 e5             	mov    %rsp,%rbp
    130c:	48 8d 3d 9d 0e 00 00 	lea    0xe9d(%rip),%rdi        # 21b0 <_IO_stdin_used+0x1b0>
    1313:	e8 18 fd ff ff       	call   1030 <puts@plt>
    1318:	90                   	nop
    1319:	5d                   	pop    %rbp
    131a:	c3                   	ret    

000000000000131b <admin>:
    131b:	55                   	push   %rbp
    131c:	48 89 e5             	mov    %rsp,%rbp
    131f:	48 83 ec 50          	sub    $0x50,%rsp
    1323:	89 7d bc             	mov    %edi,-0x44(%rbp)
    1326:	c7 45 fc cc cc cc 0c 	movl   $0xccccccc,-0x4(%rbp)
    132d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1334:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    133b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    1342:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1349:	00 
    134a:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1351:	00 
    1352:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1359:	00 
    135a:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1361:	00 
    1362:	c6 45 d8 00          	movb   $0x0,-0x28(%rbp)
    1366:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1369:	89 c7                	mov    %eax,%edi
    136b:	e8 44 ff ff ff       	call   12b4 <call_1>
    1370:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1373:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1376:	0f af 45 bc          	imul   -0x44(%rbp),%eax
    137a:	89 45 f4             	mov    %eax,-0xc(%rbp)
    137d:	48 8d 3d db 0e 00 00 	lea    0xedb(%rip),%rdi        # 225f <_IO_stdin_used+0x25f>
    1384:	b8 00 00 00 00       	mov    $0x0,%eax
    1389:	e8 c2 fc ff ff       	call   1050 <printf@plt>
    138e:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
    1392:	48 89 c6             	mov    %rax,%rsi
    1395:	48 8d 3d d4 0e 00 00 	lea    0xed4(%rip),%rdi        # 2270 <_IO_stdin_used+0x270>
    139c:	b8 00 00 00 00       	mov    $0x0,%eax
    13a1:	e8 1a fd ff ff       	call   10c0 <__isoc99_scanf@plt>
    13a6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    13a9:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    13ac:	75 73                	jne    1421 <admin+0x106>
    13ae:	48 8d 3d be 0e 00 00 	lea    0xebe(%rip),%rdi        # 2273 <_IO_stdin_used+0x273>
    13b5:	e8 76 fc ff ff       	call   1030 <puts@plt>
    13ba:	48 8d 35 bc 0e 00 00 	lea    0xebc(%rip),%rsi        # 227d <_IO_stdin_used+0x27d>
    13c1:	48 8d 3d b7 0e 00 00 	lea    0xeb7(%rip),%rdi        # 227f <_IO_stdin_used+0x27f>
    13c8:	e8 e3 fc ff ff       	call   10b0 <fopen@plt>
    13cd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13d1:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    13d6:	74 23                	je     13fb <admin+0xe0>
    13d8:	48 8d 3d aa 0e 00 00 	lea    0xeaa(%rip),%rdi        # 2289 <_IO_stdin_used+0x289>
    13df:	e8 4c fc ff ff       	call   1030 <puts@plt>
    13e4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    13e8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    13ec:	be 19 00 00 00       	mov    $0x19,%esi
    13f1:	48 89 c7             	mov    %rax,%rdi
    13f4:	e8 77 fc ff ff       	call   1070 <fgets@plt>
    13f9:	eb 0c                	jmp    1407 <admin+0xec>
    13fb:	48 8d 3d 9e 0e 00 00 	lea    0xe9e(%rip),%rdi        # 22a0 <_IO_stdin_used+0x2a0>
    1402:	e8 29 fc ff ff       	call   1030 <puts@plt>
    1407:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    140b:	48 89 c7             	mov    %rax,%rdi
    140e:	e8 1d fc ff ff       	call   1030 <puts@plt>
    1413:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1417:	48 89 c7             	mov    %rax,%rdi
    141a:	e8 21 fc ff ff       	call   1040 <fclose@plt>
    141f:	eb 0c                	jmp    142d <admin+0x112>
    1421:	48 8d 3d d4 0e 00 00 	lea    0xed4(%rip),%rdi        # 22fc <_IO_stdin_used+0x2fc>
    1428:	e8 03 fc ff ff       	call   1030 <puts@plt>
    142d:	90                   	nop
    142e:	c9                   	leave  
    142f:	c3                   	ret    

0000000000001430 <main>:
    1430:	55                   	push   %rbp
    1431:	48 89 e5             	mov    %rsp,%rbp
    1434:	48 83 ec 10          	sub    $0x10,%rsp
    1438:	48 8b 05 51 2c 00 00 	mov    0x2c51(%rip),%rax        # 4090 <stdin@GLIBC_2.2.5>
    143f:	b9 00 00 00 00       	mov    $0x0,%ecx
    1444:	ba 02 00 00 00       	mov    $0x2,%edx
    1449:	be 00 00 00 00       	mov    $0x0,%esi
    144e:	48 89 c7             	mov    %rax,%rdi
    1451:	e8 4a fc ff ff       	call   10a0 <setvbuf@plt>
    1456:	48 8b 05 23 2c 00 00 	mov    0x2c23(%rip),%rax        # 4080 <stdout@GLIBC_2.2.5>
    145d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1462:	ba 02 00 00 00       	mov    $0x2,%edx
    1467:	be 00 00 00 00       	mov    $0x0,%esi
    146c:	48 89 c7             	mov    %rax,%rdi
    146f:	e8 2c fc ff ff       	call   10a0 <setvbuf@plt>
    1474:	bf 00 00 00 00       	mov    $0x0,%edi
    1479:	e8 12 fc ff ff       	call   1090 <time@plt>
    147e:	89 c7                	mov    %eax,%edi
    1480:	e8 db fb ff ff       	call   1060 <srand@plt>
    1485:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    148c:	c7 45 fc e7 03 00 00 	movl   $0x3e7,-0x4(%rbp)
    1493:	c7 45 f8 64 00 00 00 	movl   $0x64,-0x8(%rbp)
    149a:	e8 31 fc ff ff       	call   10d0 <rand@plt>
    149f:	89 c2                	mov    %eax,%edx
    14a1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14a4:	2b 45 f8             	sub    -0x8(%rbp),%eax
    14a7:	8d 48 01             	lea    0x1(%rax),%ecx
    14aa:	89 d0                	mov    %edx,%eax
    14ac:	99                   	cltd   
    14ad:	f7 f9                	idiv   %ecx
    14af:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14b2:	01 d0                	add    %edx,%eax
    14b4:	89 45 f4             	mov    %eax,-0xc(%rbp)
    14b7:	eb 5a                	jmp    1513 <main+0xe3>
    14b9:	b8 00 00 00 00       	mov    $0x0,%eax
    14be:	e8 15 fe ff ff       	call   12d8 <print_menu>
    14c3:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    14c7:	48 89 c6             	mov    %rax,%rsi
    14ca:	48 8d 3d 9f 0d 00 00 	lea    0xd9f(%rip),%rdi        # 2270 <_IO_stdin_used+0x270>
    14d1:	b8 00 00 00 00       	mov    $0x0,%eax
    14d6:	e8 e5 fb ff ff       	call   10c0 <__isoc99_scanf@plt>
    14db:	8b 45 f0             	mov    -0x10(%rbp),%eax
    14de:	83 f8 01             	cmp    $0x1,%eax
    14e1:	75 0a                	jne    14ed <main+0xbd>
    14e3:	b8 00 00 00 00       	mov    $0x0,%eax
    14e8:	e8 fe fd ff ff       	call   12eb <print_alcohol>
    14ed:	8b 45 f0             	mov    -0x10(%rbp),%eax
    14f0:	83 f8 02             	cmp    $0x2,%eax
    14f3:	75 0a                	jne    14ff <main+0xcf>
    14f5:	b8 00 00 00 00       	mov    $0x0,%eax
    14fa:	e8 09 fe ff ff       	call   1308 <about>
    14ff:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1502:	3d 39 05 00 00       	cmp    $0x539,%eax
    1507:	75 0a                	jne    1513 <main+0xe3>
    1509:	8b 45 f4             	mov    -0xc(%rbp),%eax
    150c:	89 c7                	mov    %eax,%edi
    150e:	e8 08 fe ff ff       	call   131b <admin>
    1513:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1516:	83 f8 03             	cmp    $0x3,%eax
    1519:	75 9e                	jne    14b9 <main+0x89>
    151b:	48 8d 3d ea 0d 00 00 	lea    0xdea(%rip),%rdi        # 230c <_IO_stdin_used+0x30c>
    1522:	e8 09 fb ff ff       	call   1030 <puts@plt>
    1527:	b8 00 00 00 00       	mov    $0x0,%eax
    152c:	c9                   	leave  
    152d:	c3                   	ret    
    152e:	66 90                	xchg   %ax,%ax

0000000000001530 <__libc_csu_init>:
    1530:	41 57                	push   %r15
    1532:	49 89 d7             	mov    %rdx,%r15
    1535:	41 56                	push   %r14
    1537:	49 89 f6             	mov    %rsi,%r14
    153a:	41 55                	push   %r13
    153c:	41 89 fd             	mov    %edi,%r13d
    153f:	41 54                	push   %r12
    1541:	4c 8d 25 a0 28 00 00 	lea    0x28a0(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    1548:	55                   	push   %rbp
    1549:	48 8d 2d a0 28 00 00 	lea    0x28a0(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1550:	53                   	push   %rbx
    1551:	4c 29 e5             	sub    %r12,%rbp
    1554:	48 83 ec 08          	sub    $0x8,%rsp
    1558:	e8 a3 fa ff ff       	call   1000 <_init>
    155d:	48 c1 fd 03          	sar    $0x3,%rbp
    1561:	74 1b                	je     157e <__libc_csu_init+0x4e>
    1563:	31 db                	xor    %ebx,%ebx
    1565:	0f 1f 00             	nopl   (%rax)
    1568:	4c 89 fa             	mov    %r15,%rdx
    156b:	4c 89 f6             	mov    %r14,%rsi
    156e:	44 89 ef             	mov    %r13d,%edi
    1571:	41 ff 14 dc          	call   *(%r12,%rbx,8)
    1575:	48 83 c3 01          	add    $0x1,%rbx
    1579:	48 39 dd             	cmp    %rbx,%rbp
    157c:	75 ea                	jne    1568 <__libc_csu_init+0x38>
    157e:	48 83 c4 08          	add    $0x8,%rsp
    1582:	5b                   	pop    %rbx
    1583:	5d                   	pop    %rbp
    1584:	41 5c                	pop    %r12
    1586:	41 5d                	pop    %r13
    1588:	41 5e                	pop    %r14
    158a:	41 5f                	pop    %r15
    158c:	c3                   	ret    
    158d:	0f 1f 00             	nopl   (%rax)

0000000000001590 <__libc_csu_fini>:
    1590:	c3                   	ret    

Disassembly of section .fini:

0000000000001594 <_fini>:
    1594:	48 83 ec 08          	sub    $0x8,%rsp
    1598:	48 83 c4 08          	add    $0x8,%rsp
    159c:	c3                   	ret    
