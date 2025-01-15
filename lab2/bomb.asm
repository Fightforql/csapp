
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop
    1200:	f3 0f 1e fa          	endbr64
    1204:	68 1d 00 00 00       	push   $0x1d
    1209:	f2 e9 11 fe ff ff    	bnd jmp 1020 <_init+0x20>
    120f:	90                   	nop

Disassembly of section .plt.got:

0000000000001210 <__cxa_finalize@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001220 <getenv@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6ee8 <getenv@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <free@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6ef0 <free@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6ef8 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f00 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <__read_chk@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f08 <__read_chk@GLIBC_2.4>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <puts@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f10 <puts@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <write@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f18 <write@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <strlen@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f20 <strlen@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <alarm@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <close@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f40 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f48 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f50 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f58 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <memcpy@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f60 <memcpy@GLIBC_2.14>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <malloc@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f68 <malloc@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <fflush@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f70 <fflush@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__isoc99_sscanf@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f78 <__isoc99_sscanf@GLIBC_2.7>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fgets_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6f80 <__fgets_chk@GLIBC_2.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__printf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <fopen@plt>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <gethostname@plt>:
    1380:	f3 0f 1e fa          	endbr64
    1384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <exit@plt>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <connect@plt>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__fprintf_chk@plt>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <sleep@plt>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <__ctype_b_loc@plt>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013e0 <__sprintf_chk@plt>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <socket@plt>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001400 <_start>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	31 ed                	xor    %ebp,%ebp
    1406:	49 89 d1             	mov    %rdx,%r9
    1409:	5e                   	pop    %rsi
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1411:	50                   	push   %rax
    1412:	54                   	push   %rsp
    1413:	45 31 c0             	xor    %r8d,%r8d
    1416:	31 c9                	xor    %ecx,%ecx
    1418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14e9 <main>
    141f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    1425:	f4                   	hlt
    1426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <deregister_tm_clones>:
    1430:	48 8d 3d 29 70 00 00 	lea    0x7029(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1437:	48 8d 05 22 70 00 00 	lea    0x7022(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    143e:	48 39 f8             	cmp    %rdi,%rax
    1441:	74 15                	je     1458 <deregister_tm_clones+0x28>
    1443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    144a:	48 85 c0             	test   %rax,%rax
    144d:	74 09                	je     1458 <deregister_tm_clones+0x28>
    144f:	ff e0                	jmp    *%rax
    1451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1458:	c3                   	ret
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <register_tm_clones>:
    1460:	48 8d 3d f9 6f 00 00 	lea    0x6ff9(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1467:	48 8d 35 f2 6f 00 00 	lea    0x6ff2(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    146e:	48 29 fe             	sub    %rdi,%rsi
    1471:	48 89 f0             	mov    %rsi,%rax
    1474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1478:	48 c1 f8 03          	sar    $0x3,%rax
    147c:	48 01 c6             	add    %rax,%rsi
    147f:	48 d1 fe             	sar    $1,%rsi
    1482:	74 14                	je     1498 <register_tm_clones+0x38>
    1484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    148b:	48 85 c0             	test   %rax,%rax
    148e:	74 08                	je     1498 <register_tm_clones+0x38>
    1490:	ff e0                	jmp    *%rax
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1498:	c3                   	ret
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0:	f3 0f 1e fa          	endbr64
    14a4:	80 3d dd 6f 00 00 00 	cmpb   $0x0,0x6fdd(%rip)        # 8488 <completed.0>
    14ab:	75 2b                	jne    14d8 <__do_global_dtors_aux+0x38>
    14ad:	55                   	push   %rbp
    14ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    14b5:	00 
    14b6:	48 89 e5             	mov    %rsp,%rbp
    14b9:	74 0c                	je     14c7 <__do_global_dtors_aux+0x27>
    14bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 7008 <__dso_handle>
    14c2:	e8 49 fd ff ff       	call   1210 <__cxa_finalize@plt>
    14c7:	e8 64 ff ff ff       	call   1430 <deregister_tm_clones>
    14cc:	c6 05 b5 6f 00 00 01 	movb   $0x1,0x6fb5(%rip)        # 8488 <completed.0>
    14d3:	5d                   	pop    %rbp
    14d4:	c3                   	ret
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	c3                   	ret
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <frame_dummy>:
    14e0:	f3 0f 1e fa          	endbr64
    14e4:	e9 77 ff ff ff       	jmp    1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9:	f3 0f 1e fa          	endbr64
    14ed:	53                   	push   %rbx
    14ee:	83 ff 01             	cmp    $0x1,%edi
    14f1:	74 51                	je     1544 <main+0x5b>
    14f3:	48 89 f3             	mov    %rsi,%rbx
    14f6:	83 ff 02             	cmp    $0x2,%edi
    14f9:	75 7b                	jne    1576 <main+0x8d>
    14fb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14ff:	48 8d 35 f8 31 00 00 	lea    0x31f8(%rip),%rsi        # 46fe <transition_table+0x3de>
    1506:	e8 65 fe ff ff       	call   1370 <fopen@plt>
    150b:	48 89 05 7e 6f 00 00 	mov    %rax,0x6f7e(%rip)        # 8490 <infile>
    1512:	48 85 c0             	test   %rax,%rax
    1515:	74 3d                	je     1554 <main+0x6b>
    1517:	e8 57 08 00 00       	call   1d73 <initialize_bomb>
    151c:	48 89 c3             	mov    %rax,%rbx
    151f:	81 38 11 fa 21 20    	cmpl   $0x2021fa11,(%rax)
    1525:	74 72                	je     1599 <main+0xb0>
    1527:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 4090 <_IO_stdin_used+0x90>
    152e:	bf 01 00 00 00       	mov    $0x1,%edi
    1533:	b8 00 00 00 00       	mov    $0x0,%eax
    1538:	e8 23 fe ff ff       	call   1360 <__printf_chk@plt>
    153d:	b8 00 00 00 00       	mov    $0x0,%eax
    1542:	5b                   	pop    %rbx
    1543:	c3                   	ret
    1544:	48 8b 05 25 6f 00 00 	mov    0x6f25(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    154b:	48 89 05 3e 6f 00 00 	mov    %rax,0x6f3e(%rip)        # 8490 <infile>
    1552:	eb c3                	jmp    1517 <main+0x2e>
    1554:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1558:	48 8b 13             	mov    (%rbx),%rdx
    155b:	48 8d 35 a2 2a 00 00 	lea    0x2aa2(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    1562:	bf 01 00 00 00       	mov    $0x1,%edi
    1567:	e8 f4 fd ff ff       	call   1360 <__printf_chk@plt>
    156c:	bf 08 00 00 00       	mov    $0x8,%edi
    1571:	e8 1a fe ff ff       	call   1390 <exit@plt>
    1576:	48 8b 16             	mov    (%rsi),%rdx
    1579:	48 8d 35 a1 2a 00 00 	lea    0x2aa1(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    1580:	bf 01 00 00 00       	mov    $0x1,%edi
    1585:	b8 00 00 00 00       	mov    $0x0,%eax
    158a:	e8 d1 fd ff ff       	call   1360 <__printf_chk@plt>
    158f:	bf 08 00 00 00       	mov    $0x8,%edi
    1594:	e8 f7 fd ff ff       	call   1390 <exit@plt>
    1599:	48 8d 3d 30 2b 00 00 	lea    0x2b30(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    15a0:	e8 cb fc ff ff       	call   1270 <puts@plt>
    15a5:	48 8d 3d 5c 2b 00 00 	lea    0x2b5c(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    15ac:	e8 bf fc ff ff       	call   1270 <puts@plt>
    15b1:	e8 4e 0b 00 00       	call   2104 <read_line>
    15b6:	48 89 c7             	mov    %rax,%rdi
    15b9:	e8 da 01 00 00       	call   1798 <phase_1>
    15be:	48 89 df             	mov    %rbx,%rdi
    15c1:	e8 7c 0c 00 00       	call   2242 <phase_defused>
    15c6:	48 8d 3d 7b 2b 00 00 	lea    0x2b7b(%rip),%rdi        # 4148 <_IO_stdin_used+0x148>
    15cd:	e8 9e fc ff ff       	call   1270 <puts@plt>
    15d2:	e8 2d 0b 00 00       	call   2104 <read_line>
    15d7:	48 89 c7             	mov    %rax,%rdi
    15da:	e8 dd 01 00 00       	call   17bc <phase_2>
    15df:	48 89 df             	mov    %rbx,%rdi
    15e2:	e8 5b 0c 00 00       	call   2242 <phase_defused>
    15e7:	48 8d 3d 4d 2a 00 00 	lea    0x2a4d(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    15ee:	e8 7d fc ff ff       	call   1270 <puts@plt>
    15f3:	e8 0c 0b 00 00       	call   2104 <read_line>
    15f8:	48 89 c7             	mov    %rax,%rdi
    15fb:	e8 2d 02 00 00       	call   182d <phase_3>
    1600:	48 89 df             	mov    %rbx,%rdi
    1603:	e8 3a 0c 00 00       	call   2242 <phase_defused>
    1608:	48 8d 3d 49 2a 00 00 	lea    0x2a49(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    160f:	e8 5c fc ff ff       	call   1270 <puts@plt>
    1614:	e8 eb 0a 00 00       	call   2104 <read_line>
    1619:	48 89 c7             	mov    %rax,%rdi
    161c:	e8 21 03 00 00       	call   1942 <phase_4>
    1621:	48 89 df             	mov    %rbx,%rdi
    1624:	e8 19 0c 00 00       	call   2242 <phase_defused>
    1629:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 4178 <_IO_stdin_used+0x178>
    1630:	e8 3b fc ff ff       	call   1270 <puts@plt>
    1635:	e8 ca 0a 00 00       	call   2104 <read_line>
    163a:	48 89 c7             	mov    %rax,%rdi
    163d:	e8 7f 03 00 00       	call   19c1 <phase_5>
    1642:	48 89 df             	mov    %rbx,%rdi
    1645:	e8 f8 0b 00 00       	call   2242 <phase_defused>
    164a:	48 8d 3d 20 2a 00 00 	lea    0x2a20(%rip),%rdi        # 4071 <_IO_stdin_used+0x71>
    1651:	e8 1a fc ff ff       	call   1270 <puts@plt>
    1656:	e8 a9 0a 00 00       	call   2104 <read_line>
    165b:	48 89 c7             	mov    %rax,%rdi
    165e:	e8 ae 03 00 00       	call   1a11 <phase_6>
    1663:	48 89 df             	mov    %rbx,%rdi
    1666:	e8 d7 0b 00 00       	call   2242 <phase_defused>
    166b:	48 89 df             	mov    %rbx,%rdi
    166e:	e8 bd fb ff ff       	call   1230 <free@plt>
    1673:	e9 c5 fe ff ff       	jmp    153d <main+0x54>

0000000000001678 <abracadabra>:
    1678:	f3 0f 1e fa          	endbr64
    167c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1683:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    168a:	00 00 
    168c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1693:	00 
    1694:	31 c0                	xor    %eax,%eax
    1696:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    169b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    16a0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    16a5:	48 8d 35 ef 2a 00 00 	lea    0x2aef(%rip),%rsi        # 419b <_IO_stdin_used+0x19b>
    16ac:	48 8d 3d d5 6f 00 00 	lea    0x6fd5(%rip),%rdi        # 8688 <input_strings+0x168>
    16b3:	e8 88 fc ff ff       	call   1340 <__isoc99_sscanf@plt>
    16b8:	83 f8 03             	cmp    $0x3,%eax
    16bb:	74 20                	je     16dd <abracadabra+0x65>
    16bd:	b8 00 00 00 00       	mov    $0x0,%eax
    16c2:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    16c9:	00 
    16ca:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16d1:	00 00 
    16d3:	75 2b                	jne    1700 <abracadabra+0x88>
    16d5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16dc:	c3                   	ret
    16dd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16e2:	48 8d 35 bf 2a 00 00 	lea    0x2abf(%rip),%rsi        # 41a8 <_IO_stdin_used+0x1a8>
    16e9:	e8 36 06 00 00       	call   1d24 <strings_not_equal>
    16ee:	85 c0                	test   %eax,%eax
    16f0:	74 07                	je     16f9 <abracadabra+0x81>
    16f2:	b8 00 00 00 00       	mov    $0x0,%eax
    16f7:	eb c9                	jmp    16c2 <abracadabra+0x4a>
    16f9:	b8 01 00 00 00       	mov    $0x1,%eax
    16fe:	eb c2                	jmp    16c2 <abracadabra+0x4a>
    1700:	e8 9b fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001705 <alohomora>:
    1705:	f3 0f 1e fa          	endbr64
    1709:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    1710:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1717:	00 00 
    1719:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    171e:	31 c0                	xor    %eax,%eax
    1720:	48 8d 05 71 6e 00 00 	lea    0x6e71(%rip),%rax        # 8598 <input_strings+0x78>
    1727:	eb 04                	jmp    172d <alohomora+0x28>
    1729:	48 83 c0 01          	add    $0x1,%rax
    172d:	80 38 00             	cmpb   $0x0,(%rax)
    1730:	75 f7                	jne    1729 <alohomora+0x24>
    1732:	48 83 e8 01          	sub    $0x1,%rax
    1736:	48 89 e2             	mov    %rsp,%rdx
    1739:	eb 0a                	jmp    1745 <alohomora+0x40>
    173b:	88 0a                	mov    %cl,(%rdx)
    173d:	48 83 c2 01          	add    $0x1,%rdx
    1741:	48 83 e8 01          	sub    $0x1,%rax
    1745:	0f b6 08             	movzbl (%rax),%ecx
    1748:	80 f9 20             	cmp    $0x20,%cl
    174b:	74 0c                	je     1759 <alohomora+0x54>
    174d:	48 8d 35 44 6e 00 00 	lea    0x6e44(%rip),%rsi        # 8598 <input_strings+0x78>
    1754:	48 39 f0             	cmp    %rsi,%rax
    1757:	75 e2                	jne    173b <alohomora+0x36>
    1759:	c6 02 00             	movb   $0x0,(%rdx)
    175c:	48 89 e7             	mov    %rsp,%rdi
    175f:	48 8d 35 6a 2a 00 00 	lea    0x2a6a(%rip),%rsi        # 41d0 <_IO_stdin_used+0x1d0>
    1766:	e8 b9 05 00 00       	call   1d24 <strings_not_equal>
    176b:	85 c0                	test   %eax,%eax
    176d:	74 1d                	je     178c <alohomora+0x87>
    176f:	b8 00 00 00 00       	mov    $0x0,%eax
    1774:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1779:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1780:	00 00 
    1782:	75 0f                	jne    1793 <alohomora+0x8e>
    1784:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    178b:	c3                   	ret
    178c:	b8 01 00 00 00       	mov    $0x1,%eax
    1791:	eb e1                	jmp    1774 <alohomora+0x6f>
    1793:	e8 08 fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001798 <phase_1>:
    1798:	f3 0f 1e fa          	endbr64
    179c:	48 83 ec 08          	sub    $0x8,%rsp
    17a0:	48 8d 35 51 2a 00 00 	lea    0x2a51(%rip),%rsi        # 41f8 <_IO_stdin_used+0x1f8>
    17a7:	e8 78 05 00 00       	call   1d24 <strings_not_equal>
    17ac:	85 c0                	test   %eax,%eax
    17ae:	75 05                	jne    17b5 <phase_1+0x1d>
    17b0:	48 83 c4 08          	add    $0x8,%rsp
    17b4:	c3                   	ret
    17b5:	e8 7f 08 00 00       	call   2039 <explode_bomb>
    17ba:	eb f4                	jmp    17b0 <phase_1+0x18>

00000000000017bc <phase_2>:
    17bc:	f3 0f 1e fa          	endbr64
    17c0:	53                   	push   %rbx
    17c1:	48 83 ec 20          	sub    $0x20,%rsp
    17c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17cc:	00 00 
    17ce:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17d3:	31 c0                	xor    %eax,%eax
    17d5:	48 89 e6             	mov    %rsp,%rsi
    17d8:	e8 e2 08 00 00       	call   20bf <read_six_numbers>
    17dd:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    17e1:	75 07                	jne    17ea <phase_2+0x2e>
    17e3:	bb 01 00 00 00       	mov    $0x1,%ebx
    17e8:	eb 0a                	jmp    17f4 <phase_2+0x38>
    17ea:	e8 4a 08 00 00       	call   2039 <explode_bomb>
    17ef:	eb f2                	jmp    17e3 <phase_2+0x27>
    17f1:	83 c3 01             	add    $0x1,%ebx
    17f4:	83 fb 05             	cmp    $0x5,%ebx
    17f7:	7f 19                	jg     1812 <phase_2+0x56>
    17f9:	48 63 d3             	movslq %ebx,%rdx
    17fc:	8d 43 ff             	lea    -0x1(%rbx),%eax
    17ff:	48 98                	cltq
    1801:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1804:	01 c0                	add    %eax,%eax
    1806:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    1809:	74 e6                	je     17f1 <phase_2+0x35>
    180b:	e8 29 08 00 00       	call   2039 <explode_bomb>
    1810:	eb df                	jmp    17f1 <phase_2+0x35>
    1812:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1817:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    181e:	00 00 
    1820:	75 06                	jne    1828 <phase_2+0x6c>
    1822:	48 83 c4 20          	add    $0x20,%rsp
    1826:	5b                   	pop    %rbx
    1827:	c3                   	ret
    1828:	e8 73 fa ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000182d <phase_3>:
    182d:	f3 0f 1e fa          	endbr64
    1831:	48 83 ec 18          	sub    $0x18,%rsp
    1835:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    183c:	00 00 
    183e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1843:	31 c0                	xor    %eax,%eax
    1845:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    184a:	48 89 e2             	mov    %rsp,%rdx
    184d:	48 8d 35 0c 2e 00 00 	lea    0x2e0c(%rip),%rsi        # 4660 <transition_table+0x340>
    1854:	e8 e7 fa ff ff       	call   1340 <__isoc99_sscanf@plt>
    1859:	83 f8 01             	cmp    $0x1,%eax
    185c:	7e 1e                	jle    187c <phase_3+0x4f>
    185e:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1862:	0f 87 89 00 00 00    	ja     18f1 <phase_3+0xc4>
    1868:	8b 04 24             	mov    (%rsp),%eax
    186b:	48 8d 15 6e 2a 00 00 	lea    0x2a6e(%rip),%rdx        # 42e0 <_IO_stdin_used+0x2e0>
    1872:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1876:	48 01 d0             	add    %rdx,%rax
    1879:	3e ff e0             	notrack jmp *%rax
    187c:	e8 b8 07 00 00       	call   2039 <explode_bomb>
    1881:	eb db                	jmp    185e <phase_3+0x31>
    1883:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1887:	05 6b 03 00 00       	add    $0x36b,%eax
    188c:	3d 80 00 00 00       	cmp    $0x80,%eax
    1891:	75 6d                	jne    1900 <phase_3+0xd3>
    1893:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1898:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    189f:	00 00 
    18a1:	75 64                	jne    1907 <phase_3+0xda>
    18a3:	48 83 c4 18          	add    $0x18,%rsp
    18a7:	c3                   	ret
    18a8:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18ac:	05 01 02 00 00       	add    $0x201,%eax
    18b1:	eb d9                	jmp    188c <phase_3+0x5f>
    18b3:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18b7:	05 b2 00 00 00       	add    $0xb2,%eax
    18bc:	eb ce                	jmp    188c <phase_3+0x5f>
    18be:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18c2:	83 c0 4d             	add    $0x4d,%eax
    18c5:	eb c5                	jmp    188c <phase_3+0x5f>
    18c7:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18cb:	05 69 02 00 00       	add    $0x269,%eax
    18d0:	eb ba                	jmp    188c <phase_3+0x5f>
    18d2:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18d6:	05 85 00 00 00       	add    $0x85,%eax
    18db:	eb af                	jmp    188c <phase_3+0x5f>
    18dd:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18e1:	83 c0 40             	add    $0x40,%eax
    18e4:	eb a6                	jmp    188c <phase_3+0x5f>
    18e6:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18ea:	05 1c 02 00 00       	add    $0x21c,%eax
    18ef:	eb 9b                	jmp    188c <phase_3+0x5f>
    18f1:	e8 43 07 00 00       	call   2039 <explode_bomb>
    18f6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    18fb:	e8 90 fa ff ff       	call   1390 <exit@plt>
    1900:	e8 34 07 00 00       	call   2039 <explode_bomb>
    1905:	eb 8c                	jmp    1893 <phase_3+0x66>
    1907:	e8 94 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000190c <func4>:
    190c:	f3 0f 1e fa          	endbr64
    1910:	53                   	push   %rbx
    1911:	89 d0                	mov    %edx,%eax
    1913:	29 f0                	sub    %esi,%eax
    1915:	89 c3                	mov    %eax,%ebx
    1917:	c1 eb 1f             	shr    $0x1f,%ebx
    191a:	01 c3                	add    %eax,%ebx
    191c:	d1 fb                	sar    $1,%ebx
    191e:	01 f3                	add    %esi,%ebx
    1920:	39 fb                	cmp    %edi,%ebx
    1922:	7f 06                	jg     192a <func4+0x1e>
    1924:	7c 10                	jl     1936 <func4+0x2a>
    1926:	89 d8                	mov    %ebx,%eax
    1928:	5b                   	pop    %rbx
    1929:	c3                   	ret
    192a:	8d 53 ff             	lea    -0x1(%rbx),%edx
    192d:	e8 da ff ff ff       	call   190c <func4>
    1932:	01 c3                	add    %eax,%ebx
    1934:	eb f0                	jmp    1926 <func4+0x1a>
    1936:	8d 73 01             	lea    0x1(%rbx),%esi
    1939:	e8 ce ff ff ff       	call   190c <func4>
    193e:	01 c3                	add    %eax,%ebx
    1940:	eb e4                	jmp    1926 <func4+0x1a>

0000000000001942 <phase_4>:
    1942:	f3 0f 1e fa          	endbr64
    1946:	48 83 ec 18          	sub    $0x18,%rsp
    194a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1951:	00 00 
    1953:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1958:	31 c0                	xor    %eax,%eax
    195a:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    195f:	48 89 e2             	mov    %rsp,%rdx
    1962:	48 8d 35 f7 2c 00 00 	lea    0x2cf7(%rip),%rsi        # 4660 <transition_table+0x340>
    1969:	e8 d2 f9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    196e:	83 f8 02             	cmp    $0x2,%eax
    1971:	75 0c                	jne    197f <phase_4+0x3d>
    1973:	8b 04 24             	mov    (%rsp),%eax
    1976:	85 c0                	test   %eax,%eax
    1978:	78 05                	js     197f <phase_4+0x3d>
    197a:	83 f8 0e             	cmp    $0xe,%eax
    197d:	7e 05                	jle    1984 <phase_4+0x42>
    197f:	e8 b5 06 00 00       	call   2039 <explode_bomb>
    1984:	ba 0e 00 00 00       	mov    $0xe,%edx
    1989:	be 00 00 00 00       	mov    $0x0,%esi
    198e:	8b 3c 24             	mov    (%rsp),%edi
    1991:	e8 76 ff ff ff       	call   190c <func4>
    1996:	83 f8 1f             	cmp    $0x1f,%eax
    1999:	75 07                	jne    19a2 <phase_4+0x60>
    199b:	83 7c 24 04 1f       	cmpl   $0x1f,0x4(%rsp)
    19a0:	74 05                	je     19a7 <phase_4+0x65>
    19a2:	e8 92 06 00 00       	call   2039 <explode_bomb>
    19a7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    19ac:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19b3:	00 00 
    19b5:	75 05                	jne    19bc <phase_4+0x7a>
    19b7:	48 83 c4 18          	add    $0x18,%rsp
    19bb:	c3                   	ret
    19bc:	e8 df f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000019c1 <phase_5>:
    19c1:	f3 0f 1e fa          	endbr64
    19c5:	53                   	push   %rbx
    19c6:	48 89 fb             	mov    %rdi,%rbx
    19c9:	e8 3e 03 00 00       	call   1d0c <string_length>
    19ce:	83 f8 04             	cmp    $0x4,%eax
    19d1:	75 0c                	jne    19df <phase_5+0x1e>
    19d3:	b9 01 00 00 00       	mov    $0x1,%ecx
    19d8:	b8 00 00 00 00       	mov    $0x0,%eax
    19dd:	eb 1f                	jmp    19fe <phase_5+0x3d>
    19df:	e8 55 06 00 00       	call   2039 <explode_bomb>
    19e4:	eb ed                	jmp    19d3 <phase_5+0x12>
    19e6:	48 63 d0             	movslq %eax,%rdx
    19e9:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    19ed:	83 e2 07             	and    $0x7,%edx
    19f0:	48 8d 35 09 29 00 00 	lea    0x2909(%rip),%rsi        # 4300 <array.0>
    19f7:	0f af 0c 96          	imul   (%rsi,%rdx,4),%ecx
    19fb:	83 c0 01             	add    $0x1,%eax
    19fe:	83 f8 03             	cmp    $0x3,%eax
    1a01:	7e e3                	jle    19e6 <phase_5+0x25>
    1a03:	83 f9 6c             	cmp    $0x6c,%ecx
    1a06:	75 02                	jne    1a0a <phase_5+0x49>
    1a08:	5b                   	pop    %rbx
    1a09:	c3                   	ret
    1a0a:	e8 2a 06 00 00       	call   2039 <explode_bomb>
    1a0f:	eb f7                	jmp    1a08 <phase_5+0x47>

0000000000001a11 <phase_6>:
    1a11:	f3 0f 1e fa          	endbr64
    1a15:	41 54                	push   %r12
    1a17:	55                   	push   %rbp
    1a18:	53                   	push   %rbx
    1a19:	48 83 ec 60          	sub    $0x60,%rsp
    1a1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a24:	00 00 
    1a26:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a2b:	31 c0                	xor    %eax,%eax
    1a2d:	48 89 e6             	mov    %rsp,%rsi
    1a30:	e8 8a 06 00 00       	call   20bf <read_six_numbers>
    1a35:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a3a:	eb 27                	jmp    1a63 <phase_6+0x52>
    1a3c:	e8 f8 05 00 00       	call   2039 <explode_bomb>
    1a41:	eb 33                	jmp    1a76 <phase_6+0x65>
    1a43:	83 c3 01             	add    $0x1,%ebx
    1a46:	83 fb 05             	cmp    $0x5,%ebx
    1a49:	7f 15                	jg     1a60 <phase_6+0x4f>
    1a4b:	48 63 c5             	movslq %ebp,%rax
    1a4e:	48 63 d3             	movslq %ebx,%rdx
    1a51:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1a54:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1a57:	75 ea                	jne    1a43 <phase_6+0x32>
    1a59:	e8 db 05 00 00       	call   2039 <explode_bomb>
    1a5e:	eb e3                	jmp    1a43 <phase_6+0x32>
    1a60:	44 89 e5             	mov    %r12d,%ebp
    1a63:	83 fd 05             	cmp    $0x5,%ebp
    1a66:	7f 17                	jg     1a7f <phase_6+0x6e>
    1a68:	48 63 c5             	movslq %ebp,%rax
    1a6b:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1a6e:	83 e8 01             	sub    $0x1,%eax
    1a71:	83 f8 05             	cmp    $0x5,%eax
    1a74:	77 c6                	ja     1a3c <phase_6+0x2b>
    1a76:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1a7a:	44 89 e3             	mov    %r12d,%ebx
    1a7d:	eb c7                	jmp    1a46 <phase_6+0x35>
    1a7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a84:	eb 11                	jmp    1a97 <phase_6+0x86>
    1a86:	48 63 c8             	movslq %eax,%rcx
    1a89:	ba 07 00 00 00       	mov    $0x7,%edx
    1a8e:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    1a91:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    1a94:	83 c0 01             	add    $0x1,%eax
    1a97:	83 f8 05             	cmp    $0x5,%eax
    1a9a:	7e ea                	jle    1a86 <phase_6+0x75>
    1a9c:	be 00 00 00 00       	mov    $0x0,%esi
    1aa1:	eb 17                	jmp    1aba <phase_6+0xa9>
    1aa3:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1aa7:	83 c0 01             	add    $0x1,%eax
    1aaa:	48 63 ce             	movslq %esi,%rcx
    1aad:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1ab0:	7f f1                	jg     1aa3 <phase_6+0x92>
    1ab2:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1ab7:	83 c6 01             	add    $0x1,%esi
    1aba:	83 fe 05             	cmp    $0x5,%esi
    1abd:	7f 0e                	jg     1acd <phase_6+0xbc>
    1abf:	b8 01 00 00 00       	mov    $0x1,%eax
    1ac4:	48 8d 15 85 65 00 00 	lea    0x6585(%rip),%rdx        # 8050 <node1>
    1acb:	eb dd                	jmp    1aaa <phase_6+0x99>
    1acd:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1ad2:	48 89 d9             	mov    %rbx,%rcx
    1ad5:	b8 01 00 00 00       	mov    $0x1,%eax
    1ada:	eb 12                	jmp    1aee <phase_6+0xdd>
    1adc:	48 63 d0             	movslq %eax,%rdx
    1adf:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1ae4:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1ae8:	83 c0 01             	add    $0x1,%eax
    1aeb:	48 89 d1             	mov    %rdx,%rcx
    1aee:	83 f8 05             	cmp    $0x5,%eax
    1af1:	7e e9                	jle    1adc <phase_6+0xcb>
    1af3:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1afa:	00 
    1afb:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b00:	eb 07                	jmp    1b09 <phase_6+0xf8>
    1b02:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1b06:	83 c5 01             	add    $0x1,%ebp
    1b09:	83 fd 04             	cmp    $0x4,%ebp
    1b0c:	7f 11                	jg     1b1f <phase_6+0x10e>
    1b0e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1b12:	8b 00                	mov    (%rax),%eax
    1b14:	39 03                	cmp    %eax,(%rbx)
    1b16:	7d ea                	jge    1b02 <phase_6+0xf1>
    1b18:	e8 1c 05 00 00       	call   2039 <explode_bomb>
    1b1d:	eb e3                	jmp    1b02 <phase_6+0xf1>
    1b1f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b24:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b2b:	00 00 
    1b2d:	75 09                	jne    1b38 <phase_6+0x127>
    1b2f:	48 83 c4 60          	add    $0x60,%rsp
    1b33:	5b                   	pop    %rbx
    1b34:	5d                   	pop    %rbp
    1b35:	41 5c                	pop    %r12
    1b37:	c3                   	ret
    1b38:	e8 63 f7 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001b3d <emulate_fsm>:
    1b3d:	f3 0f 1e fa          	endbr64
    1b41:	55                   	push   %rbp
    1b42:	53                   	push   %rbx
    1b43:	48 83 ec 08          	sub    $0x8,%rsp
    1b47:	89 fd                	mov    %edi,%ebp
    1b49:	48 89 f3             	mov    %rsi,%rbx
    1b4c:	eb 28                	jmp    1b76 <emulate_fsm+0x39>
    1b4e:	0f be 03             	movsbl (%rbx),%eax
    1b51:	83 e8 30             	sub    $0x30,%eax
    1b54:	48 63 ed             	movslq %ebp,%rbp
    1b57:	48 98                	cltq
    1b59:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1b60:	00 
    1b61:	48 29 c2             	sub    %rax,%rdx
    1b64:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    1b68:	48 8d 15 b1 27 00 00 	lea    0x27b1(%rip),%rdx        # 4320 <transition_table>
    1b6f:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1b72:	48 83 c3 01          	add    $0x1,%rbx
    1b76:	0f b6 03             	movzbl (%rbx),%eax
    1b79:	84 c0                	test   %al,%al
    1b7b:	74 0e                	je     1b8b <emulate_fsm+0x4e>
    1b7d:	83 e8 30             	sub    $0x30,%eax
    1b80:	3c 01                	cmp    $0x1,%al
    1b82:	76 ca                	jbe    1b4e <emulate_fsm+0x11>
    1b84:	e8 b0 04 00 00       	call   2039 <explode_bomb>
    1b89:	eb c3                	jmp    1b4e <emulate_fsm+0x11>
    1b8b:	89 e8                	mov    %ebp,%eax
    1b8d:	48 83 c4 08          	add    $0x8,%rsp
    1b91:	5b                   	pop    %rbx
    1b92:	5d                   	pop    %rbp
    1b93:	c3                   	ret

0000000000001b94 <check_synchronizing_sequence>:
    1b94:	f3 0f 1e fa          	endbr64
    1b98:	41 54                	push   %r12
    1b9a:	55                   	push   %rbp
    1b9b:	53                   	push   %rbx
    1b9c:	48 89 fd             	mov    %rdi,%rbp
    1b9f:	48 89 fe             	mov    %rdi,%rsi
    1ba2:	bf 00 00 00 00       	mov    $0x0,%edi
    1ba7:	e8 91 ff ff ff       	call   1b3d <emulate_fsm>
    1bac:	41 89 c4             	mov    %eax,%r12d
    1baf:	bb 01 00 00 00       	mov    $0x1,%ebx
    1bb4:	83 fb 06             	cmp    $0x6,%ebx
    1bb7:	7f 14                	jg     1bcd <check_synchronizing_sequence+0x39>
    1bb9:	48 89 ee             	mov    %rbp,%rsi
    1bbc:	89 df                	mov    %ebx,%edi
    1bbe:	e8 7a ff ff ff       	call   1b3d <emulate_fsm>
    1bc3:	44 39 e0             	cmp    %r12d,%eax
    1bc6:	75 0f                	jne    1bd7 <check_synchronizing_sequence+0x43>
    1bc8:	83 c3 01             	add    $0x1,%ebx
    1bcb:	eb e7                	jmp    1bb4 <check_synchronizing_sequence+0x20>
    1bcd:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd2:	5b                   	pop    %rbx
    1bd3:	5d                   	pop    %rbp
    1bd4:	41 5c                	pop    %r12
    1bd6:	c3                   	ret
    1bd7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bdc:	eb f4                	jmp    1bd2 <check_synchronizing_sequence+0x3e>

0000000000001bde <secret_phase>:
    1bde:	f3 0f 1e fa          	endbr64
    1be2:	55                   	push   %rbp
    1be3:	53                   	push   %rbx
    1be4:	48 83 ec 18          	sub    $0x18,%rsp
    1be8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bef:	00 00 
    1bf1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1bf6:	31 c0                	xor    %eax,%eax
    1bf8:	e8 07 05 00 00       	call   2104 <read_line>
    1bfd:	48 89 c5             	mov    %rax,%rbp
    1c00:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c05:	eb 03                	jmp    1c0a <secret_phase+0x2c>
    1c07:	83 c3 01             	add    $0x1,%ebx
    1c0a:	48 63 c3             	movslq %ebx,%rax
    1c0d:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1c12:	74 0c                	je     1c20 <secret_phase+0x42>
    1c14:	83 fb 10             	cmp    $0x10,%ebx
    1c17:	7e ee                	jle    1c07 <secret_phase+0x29>
    1c19:	e8 1b 04 00 00       	call   2039 <explode_bomb>
    1c1e:	eb e7                	jmp    1c07 <secret_phase+0x29>
    1c20:	48 89 ef             	mov    %rbp,%rdi
    1c23:	e8 6c ff ff ff       	call   1b94 <check_synchronizing_sequence>
    1c28:	85 c0                	test   %eax,%eax
    1c2a:	75 45                	jne    1c71 <secret_phase+0x93>
    1c2c:	48 8d 3d ed 25 00 00 	lea    0x25ed(%rip),%rdi        # 4220 <_IO_stdin_used+0x220>
    1c33:	e8 38 f6 ff ff       	call   1270 <puts@plt>
    1c38:	48 8d 3d 11 26 00 00 	lea    0x2611(%rip),%rdi        # 4250 <_IO_stdin_used+0x250>
    1c3f:	e8 2c f6 ff ff       	call   1270 <puts@plt>
    1c44:	48 8d 3d 5d 26 00 00 	lea    0x265d(%rip),%rdi        # 42a8 <_IO_stdin_used+0x2a8>
    1c4b:	e8 20 f6 ff ff       	call   1270 <puts@plt>
    1c50:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c55:	e8 e8 05 00 00       	call   2242 <phase_defused>
    1c5a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c5f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c66:	00 00 
    1c68:	75 0e                	jne    1c78 <secret_phase+0x9a>
    1c6a:	48 83 c4 18          	add    $0x18,%rsp
    1c6e:	5b                   	pop    %rbx
    1c6f:	5d                   	pop    %rbp
    1c70:	c3                   	ret
    1c71:	e8 c3 03 00 00       	call   2039 <explode_bomb>
    1c76:	eb b4                	jmp    1c2c <secret_phase+0x4e>
    1c78:	e8 23 f6 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001c7d <sig_handler>:
    1c7d:	f3 0f 1e fa          	endbr64
    1c81:	50                   	push   %rax
    1c82:	58                   	pop    %rax
    1c83:	48 83 ec 08          	sub    $0x8,%rsp
    1c87:	48 8d 3d ca 26 00 00 	lea    0x26ca(%rip),%rdi        # 4358 <transition_table+0x38>
    1c8e:	e8 dd f5 ff ff       	call   1270 <puts@plt>
    1c93:	bf 03 00 00 00       	mov    $0x3,%edi
    1c98:	e8 23 f7 ff ff       	call   13c0 <sleep@plt>
    1c9d:	48 8d 35 35 29 00 00 	lea    0x2935(%rip),%rsi        # 45d9 <transition_table+0x2b9>
    1ca4:	bf 01 00 00 00       	mov    $0x1,%edi
    1ca9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cae:	e8 ad f6 ff ff       	call   1360 <__printf_chk@plt>
    1cb3:	48 8b 3d a6 67 00 00 	mov    0x67a6(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1cba:	e8 71 f6 ff ff       	call   1330 <fflush@plt>
    1cbf:	bf 01 00 00 00       	mov    $0x1,%edi
    1cc4:	e8 f7 f6 ff ff       	call   13c0 <sleep@plt>
    1cc9:	48 8d 3d 11 29 00 00 	lea    0x2911(%rip),%rdi        # 45e1 <transition_table+0x2c1>
    1cd0:	e8 9b f5 ff ff       	call   1270 <puts@plt>
    1cd5:	bf 10 00 00 00       	mov    $0x10,%edi
    1cda:	e8 b1 f6 ff ff       	call   1390 <exit@plt>

0000000000001cdf <invalid_phase>:
    1cdf:	f3 0f 1e fa          	endbr64
    1ce3:	50                   	push   %rax
    1ce4:	58                   	pop    %rax
    1ce5:	48 83 ec 08          	sub    $0x8,%rsp
    1ce9:	48 89 fa             	mov    %rdi,%rdx
    1cec:	48 8d 35 f6 28 00 00 	lea    0x28f6(%rip),%rsi        # 45e9 <transition_table+0x2c9>
    1cf3:	bf 01 00 00 00       	mov    $0x1,%edi
    1cf8:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfd:	e8 5e f6 ff ff       	call   1360 <__printf_chk@plt>
    1d02:	bf 08 00 00 00       	mov    $0x8,%edi
    1d07:	e8 84 f6 ff ff       	call   1390 <exit@plt>

0000000000001d0c <string_length>:
    1d0c:	f3 0f 1e fa          	endbr64
    1d10:	b8 00 00 00 00       	mov    $0x0,%eax
    1d15:	eb 07                	jmp    1d1e <string_length+0x12>
    1d17:	48 83 c7 01          	add    $0x1,%rdi
    1d1b:	83 c0 01             	add    $0x1,%eax
    1d1e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d21:	75 f4                	jne    1d17 <string_length+0xb>
    1d23:	c3                   	ret

0000000000001d24 <strings_not_equal>:
    1d24:	f3 0f 1e fa          	endbr64
    1d28:	41 54                	push   %r12
    1d2a:	55                   	push   %rbp
    1d2b:	53                   	push   %rbx
    1d2c:	48 89 fb             	mov    %rdi,%rbx
    1d2f:	48 89 f5             	mov    %rsi,%rbp
    1d32:	e8 d5 ff ff ff       	call   1d0c <string_length>
    1d37:	41 89 c4             	mov    %eax,%r12d
    1d3a:	48 89 ef             	mov    %rbp,%rdi
    1d3d:	e8 ca ff ff ff       	call   1d0c <string_length>
    1d42:	41 39 c4             	cmp    %eax,%r12d
    1d45:	74 12                	je     1d59 <strings_not_equal+0x35>
    1d47:	b8 01 00 00 00       	mov    $0x1,%eax
    1d4c:	5b                   	pop    %rbx
    1d4d:	5d                   	pop    %rbp
    1d4e:	41 5c                	pop    %r12
    1d50:	c3                   	ret
    1d51:	48 83 c3 01          	add    $0x1,%rbx
    1d55:	48 83 c5 01          	add    $0x1,%rbp
    1d59:	0f b6 03             	movzbl (%rbx),%eax
    1d5c:	84 c0                	test   %al,%al
    1d5e:	74 0c                	je     1d6c <strings_not_equal+0x48>
    1d60:	38 45 00             	cmp    %al,0x0(%rbp)
    1d63:	74 ec                	je     1d51 <strings_not_equal+0x2d>
    1d65:	b8 01 00 00 00       	mov    $0x1,%eax
    1d6a:	eb e0                	jmp    1d4c <strings_not_equal+0x28>
    1d6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1d71:	eb d9                	jmp    1d4c <strings_not_equal+0x28>

0000000000001d73 <initialize_bomb>:
    1d73:	f3 0f 1e fa          	endbr64
    1d77:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d7e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d83:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d8a:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d8f:	48 83 ec 58          	sub    $0x58,%rsp
    1d93:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d9a:	00 00 
    1d9c:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1da3:	00 
    1da4:	31 c0                	xor    %eax,%eax
    1da6:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 1c7d <sig_handler>
    1dad:	bf 02 00 00 00       	mov    $0x2,%edi
    1db2:	e8 29 f5 ff ff       	call   12e0 <signal@plt>
    1db7:	48 89 e7             	mov    %rsp,%rdi
    1dba:	be 40 00 00 00       	mov    $0x40,%esi
    1dbf:	e8 bc f5 ff ff       	call   1380 <gethostname@plt>
    1dc4:	85 c0                	test   %eax,%eax
    1dc6:	75 39                	jne    1e01 <initialize_bomb+0x8e>
    1dc8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1dcd:	e8 5b 10 00 00       	call   2e2d <init_driver>
    1dd2:	85 c0                	test   %eax,%eax
    1dd4:	78 41                	js     1e17 <initialize_bomb+0xa4>
    1dd6:	bf 04 00 00 00       	mov    $0x4,%edi
    1ddb:	e8 40 f5 ff ff       	call   1320 <malloc@plt>
    1de0:	c7 00 11 fa 21 20    	movl   $0x2021fa11,(%rax)
    1de6:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    1ded:	00 
    1dee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1df5:	00 00 
    1df7:	75 43                	jne    1e3c <initialize_bomb+0xc9>
    1df9:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1e00:	c3                   	ret
    1e01:	48 8d 3d 88 25 00 00 	lea    0x2588(%rip),%rdi        # 4390 <transition_table+0x70>
    1e08:	e8 63 f4 ff ff       	call   1270 <puts@plt>
    1e0d:	bf 08 00 00 00       	mov    $0x8,%edi
    1e12:	e8 79 f5 ff ff       	call   1390 <exit@plt>
    1e17:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1e1c:	48 8d 35 d7 27 00 00 	lea    0x27d7(%rip),%rsi        # 45fa <transition_table+0x2da>
    1e23:	bf 01 00 00 00       	mov    $0x1,%edi
    1e28:	b8 00 00 00 00       	mov    $0x0,%eax
    1e2d:	e8 2e f5 ff ff       	call   1360 <__printf_chk@plt>
    1e32:	bf 08 00 00 00       	mov    $0x8,%edi
    1e37:	e8 54 f5 ff ff       	call   1390 <exit@plt>
    1e3c:	e8 5f f4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001e41 <initialize_bomb_solve>:
    1e41:	f3 0f 1e fa          	endbr64
    1e45:	c3                   	ret

0000000000001e46 <blank_line>:
    1e46:	f3 0f 1e fa          	endbr64
    1e4a:	55                   	push   %rbp
    1e4b:	53                   	push   %rbx
    1e4c:	48 83 ec 08          	sub    $0x8,%rsp
    1e50:	48 89 fd             	mov    %rdi,%rbp
    1e53:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1e57:	84 db                	test   %bl,%bl
    1e59:	74 1e                	je     1e79 <blank_line+0x33>
    1e5b:	e8 70 f5 ff ff       	call   13d0 <__ctype_b_loc@plt>
    1e60:	48 8b 00             	mov    (%rax),%rax
    1e63:	48 83 c5 01          	add    $0x1,%rbp
    1e67:	48 0f be db          	movsbq %bl,%rbx
    1e6b:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1e70:	75 e1                	jne    1e53 <blank_line+0xd>
    1e72:	b8 00 00 00 00       	mov    $0x0,%eax
    1e77:	eb 05                	jmp    1e7e <blank_line+0x38>
    1e79:	b8 01 00 00 00       	mov    $0x1,%eax
    1e7e:	48 83 c4 08          	add    $0x8,%rsp
    1e82:	5b                   	pop    %rbx
    1e83:	5d                   	pop    %rbp
    1e84:	c3                   	ret

0000000000001e85 <skip>:
    1e85:	f3 0f 1e fa          	endbr64
    1e89:	53                   	push   %rbx
    1e8a:	48 63 15 87 66 00 00 	movslq 0x6687(%rip),%rdx        # 8518 <num_input_strings>
    1e91:	48 89 d0             	mov    %rdx,%rax
    1e94:	48 c1 e0 04          	shl    $0x4,%rax
    1e98:	48 29 d0             	sub    %rdx,%rax
    1e9b:	48 8d 15 7e 66 00 00 	lea    0x667e(%rip),%rdx        # 8520 <input_strings>
    1ea2:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1ea6:	48 8b 0d e3 65 00 00 	mov    0x65e3(%rip),%rcx        # 8490 <infile>
    1ead:	ba 78 00 00 00       	mov    $0x78,%edx
    1eb2:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1eb9:	e8 92 f4 ff ff       	call   1350 <__fgets_chk@plt>
    1ebe:	48 89 c3             	mov    %rax,%rbx
    1ec1:	48 85 c0             	test   %rax,%rax
    1ec4:	74 0c                	je     1ed2 <skip+0x4d>
    1ec6:	48 89 c7             	mov    %rax,%rdi
    1ec9:	e8 78 ff ff ff       	call   1e46 <blank_line>
    1ece:	85 c0                	test   %eax,%eax
    1ed0:	75 b8                	jne    1e8a <skip+0x5>
    1ed2:	48 89 d8             	mov    %rbx,%rax
    1ed5:	5b                   	pop    %rbx
    1ed6:	c3                   	ret

0000000000001ed7 <send_msg>:
    1ed7:	f3 0f 1e fa          	endbr64
    1edb:	41 55                	push   %r13
    1edd:	41 54                	push   %r12
    1edf:	55                   	push   %rbp
    1ee0:	53                   	push   %rbx
    1ee1:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1ee8:	ff 
    1ee9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1ef0:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1ef5:	4c 39 dc             	cmp    %r11,%rsp
    1ef8:	75 ef                	jne    1ee9 <send_msg+0x12>
    1efa:	48 83 ec 18          	sub    $0x18,%rsp
    1efe:	89 fd                	mov    %edi,%ebp
    1f00:	48 89 f3             	mov    %rsi,%rbx
    1f03:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f0a:	00 00 
    1f0c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1f13:	00 
    1f14:	31 c0                	xor    %eax,%eax
    1f16:	44 8b 25 fb 65 00 00 	mov    0x65fb(%rip),%r12d        # 8518 <num_input_strings>
    1f1d:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    1f22:	48 98                	cltq
    1f24:	48 89 c2             	mov    %rax,%rdx
    1f27:	48 c1 e2 04          	shl    $0x4,%rdx
    1f2b:	48 29 c2             	sub    %rax,%rdx
    1f2e:	48 8d 05 eb 65 00 00 	lea    0x65eb(%rip),%rax        # 8520 <input_strings>
    1f35:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    1f39:	4c 89 ef             	mov    %r13,%rdi
    1f3c:	e8 4f f3 ff ff       	call   1290 <strlen@plt>
    1f41:	48 83 c0 64          	add    $0x64,%rax
    1f45:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1f4b:	0f 87 a0 00 00 00    	ja     1ff1 <send_msg+0x11a>
    1f51:	85 ed                	test   %ebp,%ebp
    1f53:	0f 84 b8 00 00 00    	je     2011 <send_msg+0x13a>
    1f59:	48 8d 05 b4 26 00 00 	lea    0x26b4(%rip),%rax        # 4614 <transition_table+0x2f4>
    1f60:	48 89 e5             	mov    %rsp,%rbp
    1f63:	48 83 ec 08          	sub    $0x8,%rsp
    1f67:	41 55                	push   %r13
    1f69:	41 54                	push   %r12
    1f6b:	50                   	push   %rax
    1f6c:	4c 8d 0d cd 58 00 00 	lea    0x58cd(%rip),%r9        # 7840 <authkey>
    1f73:	44 8b 05 c6 60 00 00 	mov    0x60c6(%rip),%r8d        # 8040 <bomb_id>
    1f7a:	48 8d 0d a4 26 00 00 	lea    0x26a4(%rip),%rcx        # 4625 <transition_table+0x305>
    1f81:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f86:	be 01 00 00 00       	mov    $0x1,%esi
    1f8b:	48 89 ef             	mov    %rbp,%rdi
    1f8e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f93:	e8 48 f4 ff ff       	call   13e0 <__sprintf_chk@plt>
    1f98:	48 89 ec             	mov    %rbp,%rsp
    1f9b:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1fa2:	00 
    1fa3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1fa9:	48 89 e9             	mov    %rbp,%rcx
    1fac:	48 8d 15 8d 50 00 00 	lea    0x508d(%rip),%rdx        # 7040 <lab>
    1fb3:	48 8d 35 86 54 00 00 	lea    0x5486(%rip),%rsi        # 7440 <course>
    1fba:	48 8d 3d 7f 5c 00 00 	lea    0x5c7f(%rip),%rdi        # 7c40 <userid>
    1fc1:	e8 93 10 00 00       	call   3059 <driver_post>
    1fc6:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1fcc:	85 c0                	test   %eax,%eax
    1fce:	78 4d                	js     201d <send_msg+0x146>
    1fd0:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1fd7:	00 
    1fd8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1fdf:	00 00 
    1fe1:	75 51                	jne    2034 <send_msg+0x15d>
    1fe3:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1fea:	5b                   	pop    %rbx
    1feb:	5d                   	pop    %rbp
    1fec:	41 5c                	pop    %r12
    1fee:	41 5d                	pop    %r13
    1ff0:	c3                   	ret
    1ff1:	48 8d 35 d0 23 00 00 	lea    0x23d0(%rip),%rsi        # 43c8 <transition_table+0xa8>
    1ff8:	bf 01 00 00 00       	mov    $0x1,%edi
    1ffd:	b8 00 00 00 00       	mov    $0x0,%eax
    2002:	e8 59 f3 ff ff       	call   1360 <__printf_chk@plt>
    2007:	bf 08 00 00 00       	mov    $0x8,%edi
    200c:	e8 7f f3 ff ff       	call   1390 <exit@plt>
    2011:	48 8d 05 04 26 00 00 	lea    0x2604(%rip),%rax        # 461c <transition_table+0x2fc>
    2018:	e9 43 ff ff ff       	jmp    1f60 <send_msg+0x89>
    201d:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2024:	00 
    2025:	e8 46 f2 ff ff       	call   1270 <puts@plt>
    202a:	bf 00 00 00 00       	mov    $0x0,%edi
    202f:	e8 5c f3 ff ff       	call   1390 <exit@plt>
    2034:	e8 67 f2 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002039 <explode_bomb>:
    2039:	f3 0f 1e fa          	endbr64
    203d:	50                   	push   %rax
    203e:	58                   	pop    %rax
    203f:	48 83 ec 18          	sub    $0x18,%rsp
    2043:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    204a:	00 00 
    204c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2051:	31 c0                	xor    %eax,%eax
    2053:	48 8d 3d da 25 00 00 	lea    0x25da(%rip),%rdi        # 4634 <transition_table+0x314>
    205a:	e8 11 f2 ff ff       	call   1270 <puts@plt>
    205f:	48 8d 3d d7 25 00 00 	lea    0x25d7(%rip),%rdi        # 463d <transition_table+0x31d>
    2066:	e8 05 f2 ff ff       	call   1270 <puts@plt>
    206b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2072:	00 
    2073:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    2078:	bf 00 00 00 00       	mov    $0x0,%edi
    207d:	e8 55 fe ff ff       	call   1ed7 <send_msg>
    2082:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    2087:	74 20                	je     20a9 <explode_bomb+0x70>
    2089:	48 8d 35 60 23 00 00 	lea    0x2360(%rip),%rsi        # 43f0 <transition_table+0xd0>
    2090:	bf 01 00 00 00       	mov    $0x1,%edi
    2095:	b8 00 00 00 00       	mov    $0x0,%eax
    209a:	e8 c1 f2 ff ff       	call   1360 <__printf_chk@plt>
    209f:	bf 08 00 00 00       	mov    $0x8,%edi
    20a4:	e8 e7 f2 ff ff       	call   1390 <exit@plt>
    20a9:	48 8d 3d 88 23 00 00 	lea    0x2388(%rip),%rdi        # 4438 <transition_table+0x118>
    20b0:	e8 bb f1 ff ff       	call   1270 <puts@plt>
    20b5:	bf 08 00 00 00       	mov    $0x8,%edi
    20ba:	e8 d1 f2 ff ff       	call   1390 <exit@plt>

00000000000020bf <read_six_numbers>:
    20bf:	f3 0f 1e fa          	endbr64
    20c3:	48 83 ec 08          	sub    $0x8,%rsp
    20c7:	48 89 f2             	mov    %rsi,%rdx
    20ca:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    20ce:	48 8d 46 14          	lea    0x14(%rsi),%rax
    20d2:	50                   	push   %rax
    20d3:	48 8d 46 10          	lea    0x10(%rsi),%rax
    20d7:	50                   	push   %rax
    20d8:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    20dc:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    20e0:	48 8d 35 6d 25 00 00 	lea    0x256d(%rip),%rsi        # 4654 <transition_table+0x334>
    20e7:	b8 00 00 00 00       	mov    $0x0,%eax
    20ec:	e8 4f f2 ff ff       	call   1340 <__isoc99_sscanf@plt>
    20f1:	48 83 c4 10          	add    $0x10,%rsp
    20f5:	83 f8 05             	cmp    $0x5,%eax
    20f8:	7e 05                	jle    20ff <read_six_numbers+0x40>
    20fa:	48 83 c4 08          	add    $0x8,%rsp
    20fe:	c3                   	ret
    20ff:	e8 35 ff ff ff       	call   2039 <explode_bomb>

0000000000002104 <read_line>:
    2104:	f3 0f 1e fa          	endbr64
    2108:	55                   	push   %rbp
    2109:	53                   	push   %rbx
    210a:	48 83 ec 08          	sub    $0x8,%rsp
    210e:	b8 00 00 00 00       	mov    $0x0,%eax
    2113:	e8 6d fd ff ff       	call   1e85 <skip>
    2118:	48 85 c0             	test   %rax,%rax
    211b:	74 63                	je     2180 <read_line+0x7c>
    211d:	8b 1d f5 63 00 00    	mov    0x63f5(%rip),%ebx        # 8518 <num_input_strings>
    2123:	48 63 d3             	movslq %ebx,%rdx
    2126:	48 89 d0             	mov    %rdx,%rax
    2129:	48 c1 e0 04          	shl    $0x4,%rax
    212d:	48 29 d0             	sub    %rdx,%rax
    2130:	48 8d 15 e9 63 00 00 	lea    0x63e9(%rip),%rdx        # 8520 <input_strings>
    2137:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    213b:	48 89 ef             	mov    %rbp,%rdi
    213e:	e8 4d f1 ff ff       	call   1290 <strlen@plt>
    2143:	83 f8 76             	cmp    $0x76,%eax
    2146:	0f 8f ac 00 00 00    	jg     21f8 <read_line+0xf4>
    214c:	83 e8 01             	sub    $0x1,%eax
    214f:	48 98                	cltq
    2151:	48 63 cb             	movslq %ebx,%rcx
    2154:	48 89 ca             	mov    %rcx,%rdx
    2157:	48 c1 e2 04          	shl    $0x4,%rdx
    215b:	48 29 ca             	sub    %rcx,%rdx
    215e:	48 8d 0d bb 63 00 00 	lea    0x63bb(%rip),%rcx        # 8520 <input_strings>
    2165:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    2169:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    216d:	83 c3 01             	add    $0x1,%ebx
    2170:	89 1d a2 63 00 00    	mov    %ebx,0x63a2(%rip)        # 8518 <num_input_strings>
    2176:	48 89 e8             	mov    %rbp,%rax
    2179:	48 83 c4 08          	add    $0x8,%rsp
    217d:	5b                   	pop    %rbx
    217e:	5d                   	pop    %rbp
    217f:	c3                   	ret
    2180:	48 8b 05 e9 62 00 00 	mov    0x62e9(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2187:	48 39 05 02 63 00 00 	cmp    %rax,0x6302(%rip)        # 8490 <infile>
    218e:	74 1b                	je     21ab <read_line+0xa7>
    2190:	48 8d 3d ed 24 00 00 	lea    0x24ed(%rip),%rdi        # 4684 <transition_table+0x364>
    2197:	e8 84 f0 ff ff       	call   1220 <getenv@plt>
    219c:	48 85 c0             	test   %rax,%rax
    219f:	74 20                	je     21c1 <read_line+0xbd>
    21a1:	bf 00 00 00 00       	mov    $0x0,%edi
    21a6:	e8 e5 f1 ff ff       	call   1390 <exit@plt>
    21ab:	48 8d 3d b4 24 00 00 	lea    0x24b4(%rip),%rdi        # 4666 <transition_table+0x346>
    21b2:	e8 b9 f0 ff ff       	call   1270 <puts@plt>
    21b7:	bf 08 00 00 00       	mov    $0x8,%edi
    21bc:	e8 cf f1 ff ff       	call   1390 <exit@plt>
    21c1:	48 8b 05 a8 62 00 00 	mov    0x62a8(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21c8:	48 89 05 c1 62 00 00 	mov    %rax,0x62c1(%rip)        # 8490 <infile>
    21cf:	b8 00 00 00 00       	mov    $0x0,%eax
    21d4:	e8 ac fc ff ff       	call   1e85 <skip>
    21d9:	48 85 c0             	test   %rax,%rax
    21dc:	0f 85 3b ff ff ff    	jne    211d <read_line+0x19>
    21e2:	48 8d 3d 7d 24 00 00 	lea    0x247d(%rip),%rdi        # 4666 <transition_table+0x346>
    21e9:	e8 82 f0 ff ff       	call   1270 <puts@plt>
    21ee:	bf 00 00 00 00       	mov    $0x0,%edi
    21f3:	e8 98 f1 ff ff       	call   1390 <exit@plt>
    21f8:	48 8d 3d 90 24 00 00 	lea    0x2490(%rip),%rdi        # 468f <transition_table+0x36f>
    21ff:	e8 6c f0 ff ff       	call   1270 <puts@plt>
    2204:	8b 05 0e 63 00 00    	mov    0x630e(%rip),%eax        # 8518 <num_input_strings>
    220a:	8d 50 01             	lea    0x1(%rax),%edx
    220d:	89 15 05 63 00 00    	mov    %edx,0x6305(%rip)        # 8518 <num_input_strings>
    2213:	48 98                	cltq
    2215:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2219:	48 8d 15 00 63 00 00 	lea    0x6300(%rip),%rdx        # 8520 <input_strings>
    2220:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2227:	75 6e 63 
    222a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2231:	2a 2a 00 
    2234:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2238:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    223d:	e8 f7 fd ff ff       	call   2039 <explode_bomb>

0000000000002242 <phase_defused>:
    2242:	f3 0f 1e fa          	endbr64
    2246:	53                   	push   %rbx
    2247:	48 89 fb             	mov    %rdi,%rbx
    224a:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2250:	48 89 fe             	mov    %rdi,%rsi
    2253:	bf 01 00 00 00       	mov    $0x1,%edi
    2258:	e8 7a fc ff ff       	call   1ed7 <send_msg>
    225d:	83 3b 01             	cmpl   $0x1,(%rbx)
    2260:	75 0b                	jne    226d <phase_defused+0x2b>
    2262:	83 3d af 62 00 00 06 	cmpl   $0x6,0x62af(%rip)        # 8518 <num_input_strings>
    2269:	74 22                	je     228d <phase_defused+0x4b>
    226b:	5b                   	pop    %rbx
    226c:	c3                   	ret
    226d:	48 8d 35 7c 21 00 00 	lea    0x217c(%rip),%rsi        # 43f0 <transition_table+0xd0>
    2274:	bf 01 00 00 00       	mov    $0x1,%edi
    2279:	b8 00 00 00 00       	mov    $0x0,%eax
    227e:	e8 dd f0 ff ff       	call   1360 <__printf_chk@plt>
    2283:	bf 08 00 00 00       	mov    $0x8,%edi
    2288:	e8 03 f1 ff ff       	call   1390 <exit@plt>
    228d:	e8 e6 f3 ff ff       	call   1678 <abracadabra>
    2292:	85 c0                	test   %eax,%eax
    2294:	75 1a                	jne    22b0 <phase_defused+0x6e>
    2296:	48 8d 3d b3 22 00 00 	lea    0x22b3(%rip),%rdi        # 4550 <transition_table+0x230>
    229d:	e8 ce ef ff ff       	call   1270 <puts@plt>
    22a2:	48 8d 3d ef 22 00 00 	lea    0x22ef(%rip),%rdi        # 4598 <transition_table+0x278>
    22a9:	e8 c2 ef ff ff       	call   1270 <puts@plt>
    22ae:	eb bb                	jmp    226b <phase_defused+0x29>
    22b0:	e8 50 f4 ff ff       	call   1705 <alohomora>
    22b5:	85 c0                	test   %eax,%eax
    22b7:	74 30                	je     22e9 <phase_defused+0xa7>
    22b9:	48 8d 3d a0 21 00 00 	lea    0x21a0(%rip),%rdi        # 4460 <transition_table+0x140>
    22c0:	e8 ab ef ff ff       	call   1270 <puts@plt>
    22c5:	48 8d 3d bc 21 00 00 	lea    0x21bc(%rip),%rdi        # 4488 <transition_table+0x168>
    22cc:	e8 9f ef ff ff       	call   1270 <puts@plt>
    22d1:	48 8d 3d e8 21 00 00 	lea    0x21e8(%rip),%rdi        # 44c0 <transition_table+0x1a0>
    22d8:	e8 93 ef ff ff       	call   1270 <puts@plt>
    22dd:	b8 00 00 00 00       	mov    $0x0,%eax
    22e2:	e8 f7 f8 ff ff       	call   1bde <secret_phase>
    22e7:	eb ad                	jmp    2296 <phase_defused+0x54>
    22e9:	48 8d 3d 20 22 00 00 	lea    0x2220(%rip),%rdi        # 4510 <transition_table+0x1f0>
    22f0:	e8 7b ef ff ff       	call   1270 <puts@plt>
    22f5:	48 8d 3d c4 21 00 00 	lea    0x21c4(%rip),%rdi        # 44c0 <transition_table+0x1a0>
    22fc:	e8 6f ef ff ff       	call   1270 <puts@plt>
    2301:	eb 93                	jmp    2296 <phase_defused+0x54>

0000000000002303 <rio_readinitb>:
    2303:	89 37                	mov    %esi,(%rdi)
    2305:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    230c:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2310:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2314:	c3                   	ret

0000000000002315 <sigalrm_handler>:
    2315:	f3 0f 1e fa          	endbr64
    2319:	50                   	push   %rax
    231a:	58                   	pop    %rax
    231b:	48 83 ec 08          	sub    $0x8,%rsp
    231f:	b9 00 00 00 00       	mov    $0x0,%ecx
    2324:	48 8d 15 d5 23 00 00 	lea    0x23d5(%rip),%rdx        # 4700 <transition_table+0x3e0>
    232b:	be 01 00 00 00       	mov    $0x1,%esi
    2330:	48 8b 3d 49 61 00 00 	mov    0x6149(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    2337:	b8 00 00 00 00       	mov    $0x0,%eax
    233c:	e8 6f f0 ff ff       	call   13b0 <__fprintf_chk@plt>
    2341:	bf 01 00 00 00       	mov    $0x1,%edi
    2346:	e8 45 f0 ff ff       	call   1390 <exit@plt>

000000000000234b <rio_writen>:
    234b:	41 55                	push   %r13
    234d:	41 54                	push   %r12
    234f:	55                   	push   %rbp
    2350:	53                   	push   %rbx
    2351:	48 83 ec 08          	sub    $0x8,%rsp
    2355:	41 89 fc             	mov    %edi,%r12d
    2358:	48 89 f5             	mov    %rsi,%rbp
    235b:	49 89 d5             	mov    %rdx,%r13
    235e:	48 89 d3             	mov    %rdx,%rbx
    2361:	eb 06                	jmp    2369 <rio_writen+0x1e>
    2363:	48 29 c3             	sub    %rax,%rbx
    2366:	48 01 c5             	add    %rax,%rbp
    2369:	48 85 db             	test   %rbx,%rbx
    236c:	74 24                	je     2392 <rio_writen+0x47>
    236e:	48 89 da             	mov    %rbx,%rdx
    2371:	48 89 ee             	mov    %rbp,%rsi
    2374:	44 89 e7             	mov    %r12d,%edi
    2377:	e8 04 ef ff ff       	call   1280 <write@plt>
    237c:	48 85 c0             	test   %rax,%rax
    237f:	7f e2                	jg     2363 <rio_writen+0x18>
    2381:	e8 ba ee ff ff       	call   1240 <__errno_location@plt>
    2386:	83 38 04             	cmpl   $0x4,(%rax)
    2389:	75 15                	jne    23a0 <rio_writen+0x55>
    238b:	b8 00 00 00 00       	mov    $0x0,%eax
    2390:	eb d1                	jmp    2363 <rio_writen+0x18>
    2392:	4c 89 e8             	mov    %r13,%rax
    2395:	48 83 c4 08          	add    $0x8,%rsp
    2399:	5b                   	pop    %rbx
    239a:	5d                   	pop    %rbp
    239b:	41 5c                	pop    %r12
    239d:	41 5d                	pop    %r13
    239f:	c3                   	ret
    23a0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23a7:	eb ec                	jmp    2395 <rio_writen+0x4a>

00000000000023a9 <rio_read>:
    23a9:	41 55                	push   %r13
    23ab:	41 54                	push   %r12
    23ad:	55                   	push   %rbp
    23ae:	53                   	push   %rbx
    23af:	48 83 ec 08          	sub    $0x8,%rsp
    23b3:	48 89 fb             	mov    %rdi,%rbx
    23b6:	49 89 f5             	mov    %rsi,%r13
    23b9:	49 89 d4             	mov    %rdx,%r12
    23bc:	eb 0a                	jmp    23c8 <rio_read+0x1f>
    23be:	e8 7d ee ff ff       	call   1240 <__errno_location@plt>
    23c3:	83 38 04             	cmpl   $0x4,(%rax)
    23c6:	75 61                	jne    2429 <rio_read+0x80>
    23c8:	8b 6b 04             	mov    0x4(%rbx),%ebp
    23cb:	85 ed                	test   %ebp,%ebp
    23cd:	7f 29                	jg     23f8 <rio_read+0x4f>
    23cf:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    23d3:	8b 3b                	mov    (%rbx),%edi
    23d5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23dc:	ba 00 20 00 00       	mov    $0x2000,%edx
    23e1:	48 89 ee             	mov    %rbp,%rsi
    23e4:	e8 77 ee ff ff       	call   1260 <__read_chk@plt>
    23e9:	89 43 04             	mov    %eax,0x4(%rbx)
    23ec:	85 c0                	test   %eax,%eax
    23ee:	78 ce                	js     23be <rio_read+0x15>
    23f0:	74 40                	je     2432 <rio_read+0x89>
    23f2:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    23f6:	eb d0                	jmp    23c8 <rio_read+0x1f>
    23f8:	89 e8                	mov    %ebp,%eax
    23fa:	4c 39 e0             	cmp    %r12,%rax
    23fd:	72 03                	jb     2402 <rio_read+0x59>
    23ff:	44 89 e5             	mov    %r12d,%ebp
    2402:	4c 63 e5             	movslq %ebp,%r12
    2405:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2409:	4c 89 e2             	mov    %r12,%rdx
    240c:	4c 89 ef             	mov    %r13,%rdi
    240f:	e8 fc ee ff ff       	call   1310 <memcpy@plt>
    2414:	4c 01 63 08          	add    %r12,0x8(%rbx)
    2418:	29 6b 04             	sub    %ebp,0x4(%rbx)
    241b:	4c 89 e0             	mov    %r12,%rax
    241e:	48 83 c4 08          	add    $0x8,%rsp
    2422:	5b                   	pop    %rbx
    2423:	5d                   	pop    %rbp
    2424:	41 5c                	pop    %r12
    2426:	41 5d                	pop    %r13
    2428:	c3                   	ret
    2429:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2430:	eb ec                	jmp    241e <rio_read+0x75>
    2432:	b8 00 00 00 00       	mov    $0x0,%eax
    2437:	eb e5                	jmp    241e <rio_read+0x75>

0000000000002439 <rio_readlineb>:
    2439:	41 55                	push   %r13
    243b:	41 54                	push   %r12
    243d:	55                   	push   %rbp
    243e:	53                   	push   %rbx
    243f:	48 83 ec 18          	sub    $0x18,%rsp
    2443:	49 89 fd             	mov    %rdi,%r13
    2446:	48 89 f5             	mov    %rsi,%rbp
    2449:	49 89 d4             	mov    %rdx,%r12
    244c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2453:	00 00 
    2455:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    245a:	31 c0                	xor    %eax,%eax
    245c:	bb 01 00 00 00       	mov    $0x1,%ebx
    2461:	eb 18                	jmp    247b <rio_readlineb+0x42>
    2463:	85 c0                	test   %eax,%eax
    2465:	75 65                	jne    24cc <rio_readlineb+0x93>
    2467:	48 83 fb 01          	cmp    $0x1,%rbx
    246b:	75 3d                	jne    24aa <rio_readlineb+0x71>
    246d:	b8 00 00 00 00       	mov    $0x0,%eax
    2472:	eb 3d                	jmp    24b1 <rio_readlineb+0x78>
    2474:	48 83 c3 01          	add    $0x1,%rbx
    2478:	48 89 d5             	mov    %rdx,%rbp
    247b:	4c 39 e3             	cmp    %r12,%rbx
    247e:	73 2a                	jae    24aa <rio_readlineb+0x71>
    2480:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    2485:	ba 01 00 00 00       	mov    $0x1,%edx
    248a:	4c 89 ef             	mov    %r13,%rdi
    248d:	e8 17 ff ff ff       	call   23a9 <rio_read>
    2492:	83 f8 01             	cmp    $0x1,%eax
    2495:	75 cc                	jne    2463 <rio_readlineb+0x2a>
    2497:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    249b:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    24a0:	88 45 00             	mov    %al,0x0(%rbp)
    24a3:	3c 0a                	cmp    $0xa,%al
    24a5:	75 cd                	jne    2474 <rio_readlineb+0x3b>
    24a7:	48 89 d5             	mov    %rdx,%rbp
    24aa:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    24ae:	48 89 d8             	mov    %rbx,%rax
    24b1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    24b6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    24bd:	00 00 
    24bf:	75 14                	jne    24d5 <rio_readlineb+0x9c>
    24c1:	48 83 c4 18          	add    $0x18,%rsp
    24c5:	5b                   	pop    %rbx
    24c6:	5d                   	pop    %rbp
    24c7:	41 5c                	pop    %r12
    24c9:	41 5d                	pop    %r13
    24cb:	c3                   	ret
    24cc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    24d3:	eb dc                	jmp    24b1 <rio_readlineb+0x78>
    24d5:	e8 c6 ed ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000024da <urlencode>:
    24da:	41 54                	push   %r12
    24dc:	55                   	push   %rbp
    24dd:	53                   	push   %rbx
    24de:	48 83 ec 10          	sub    $0x10,%rsp
    24e2:	48 89 fb             	mov    %rdi,%rbx
    24e5:	48 89 f5             	mov    %rsi,%rbp
    24e8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24ef:	00 00 
    24f1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24f6:	31 c0                	xor    %eax,%eax
    24f8:	e8 93 ed ff ff       	call   1290 <strlen@plt>
    24fd:	eb 0f                	jmp    250e <urlencode+0x34>
    24ff:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2503:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2507:	48 83 c3 01          	add    $0x1,%rbx
    250b:	44 89 e0             	mov    %r12d,%eax
    250e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2512:	85 c0                	test   %eax,%eax
    2514:	0f 84 a8 00 00 00    	je     25c2 <urlencode+0xe8>
    251a:	44 0f b6 03          	movzbl (%rbx),%r8d
    251e:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2522:	0f 94 c0             	sete   %al
    2525:	41 80 f8 2d          	cmp    $0x2d,%r8b
    2529:	0f 94 c2             	sete   %dl
    252c:	08 d0                	or     %dl,%al
    252e:	75 cf                	jne    24ff <urlencode+0x25>
    2530:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2534:	74 c9                	je     24ff <urlencode+0x25>
    2536:	41 80 f8 5f          	cmp    $0x5f,%r8b
    253a:	74 c3                	je     24ff <urlencode+0x25>
    253c:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2540:	3c 09                	cmp    $0x9,%al
    2542:	76 bb                	jbe    24ff <urlencode+0x25>
    2544:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    2548:	3c 19                	cmp    $0x19,%al
    254a:	76 b3                	jbe    24ff <urlencode+0x25>
    254c:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2550:	3c 19                	cmp    $0x19,%al
    2552:	76 ab                	jbe    24ff <urlencode+0x25>
    2554:	41 80 f8 20          	cmp    $0x20,%r8b
    2558:	74 56                	je     25b0 <urlencode+0xd6>
    255a:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    255e:	3c 5f                	cmp    $0x5f,%al
    2560:	0f 96 c0             	setbe  %al
    2563:	41 80 f8 09          	cmp    $0x9,%r8b
    2567:	0f 94 c2             	sete   %dl
    256a:	08 d0                	or     %dl,%al
    256c:	74 4f                	je     25bd <urlencode+0xe3>
    256e:	48 89 e7             	mov    %rsp,%rdi
    2571:	45 0f b6 c0          	movzbl %r8b,%r8d
    2575:	48 8d 0d 39 22 00 00 	lea    0x2239(%rip),%rcx        # 47b5 <transition_table+0x495>
    257c:	ba 08 00 00 00       	mov    $0x8,%edx
    2581:	be 01 00 00 00       	mov    $0x1,%esi
    2586:	b8 00 00 00 00       	mov    $0x0,%eax
    258b:	e8 50 ee ff ff       	call   13e0 <__sprintf_chk@plt>
    2590:	0f b6 04 24          	movzbl (%rsp),%eax
    2594:	88 45 00             	mov    %al,0x0(%rbp)
    2597:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    259c:	88 45 01             	mov    %al,0x1(%rbp)
    259f:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    25a4:	88 45 02             	mov    %al,0x2(%rbp)
    25a7:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    25ab:	e9 57 ff ff ff       	jmp    2507 <urlencode+0x2d>
    25b0:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    25b4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    25b8:	e9 4a ff ff ff       	jmp    2507 <urlencode+0x2d>
    25bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c2:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    25c7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25ce:	00 00 
    25d0:	75 09                	jne    25db <urlencode+0x101>
    25d2:	48 83 c4 10          	add    $0x10,%rsp
    25d6:	5b                   	pop    %rbx
    25d7:	5d                   	pop    %rbp
    25d8:	41 5c                	pop    %r12
    25da:	c3                   	ret
    25db:	e8 c0 ec ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000025e0 <submitr>:
    25e0:	f3 0f 1e fa          	endbr64
    25e4:	41 57                	push   %r15
    25e6:	41 56                	push   %r14
    25e8:	41 55                	push   %r13
    25ea:	41 54                	push   %r12
    25ec:	55                   	push   %rbp
    25ed:	53                   	push   %rbx
    25ee:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    25f5:	ff 
    25f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    25fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2602:	4c 39 dc             	cmp    %r11,%rsp
    2605:	75 ef                	jne    25f6 <submitr+0x16>
    2607:	48 83 ec 68          	sub    $0x68,%rsp
    260b:	49 89 fc             	mov    %rdi,%r12
    260e:	89 74 24 18          	mov    %esi,0x18(%rsp)
    2612:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    2617:	49 89 cd             	mov    %rcx,%r13
    261a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    261f:	4d 89 ce             	mov    %r9,%r14
    2622:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    2629:	00 
    262a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2631:	00 00 
    2633:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    263a:	00 
    263b:	31 c0                	xor    %eax,%eax
    263d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2644:	00 
    2645:	ba 00 00 00 00       	mov    $0x0,%edx
    264a:	be 01 00 00 00       	mov    $0x1,%esi
    264f:	bf 02 00 00 00       	mov    $0x2,%edi
    2654:	e8 97 ed ff ff       	call   13f0 <socket@plt>
    2659:	85 c0                	test   %eax,%eax
    265b:	0f 88 ab 02 00 00    	js     290c <submitr+0x32c>
    2661:	89 c3                	mov    %eax,%ebx
    2663:	4c 89 e7             	mov    %r12,%rdi
    2666:	e8 85 ec ff ff       	call   12f0 <gethostbyname@plt>
    266b:	48 85 c0             	test   %rax,%rax
    266e:	0f 84 e4 02 00 00    	je     2958 <submitr+0x378>
    2674:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    2679:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    2680:	00 00 
    2682:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    2689:	00 00 
    268b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2692:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2696:	48 8b 40 18          	mov    0x18(%rax),%rax
    269a:	48 8b 30             	mov    (%rax),%rsi
    269d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    26a2:	b9 0c 00 00 00       	mov    $0xc,%ecx
    26a7:	e8 54 ec ff ff       	call   1300 <__memmove_chk@plt>
    26ac:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    26b1:	66 c1 c0 08          	rol    $0x8,%ax
    26b5:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    26ba:	ba 10 00 00 00       	mov    $0x10,%edx
    26bf:	4c 89 fe             	mov    %r15,%rsi
    26c2:	89 df                	mov    %ebx,%edi
    26c4:	e8 d7 ec ff ff       	call   13a0 <connect@plt>
    26c9:	85 c0                	test   %eax,%eax
    26cb:	0f 88 fd 02 00 00    	js     29ce <submitr+0x3ee>
    26d1:	4c 89 f7             	mov    %r14,%rdi
    26d4:	e8 b7 eb ff ff       	call   1290 <strlen@plt>
    26d9:	49 89 c7             	mov    %rax,%r15
    26dc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    26e1:	e8 aa eb ff ff       	call   1290 <strlen@plt>
    26e6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26eb:	4c 89 ef             	mov    %r13,%rdi
    26ee:	e8 9d eb ff ff       	call   1290 <strlen@plt>
    26f3:	48 03 44 24 18       	add    0x18(%rsp),%rax
    26f8:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26fd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2702:	e8 89 eb ff ff       	call   1290 <strlen@plt>
    2707:	48 03 44 24 18       	add    0x18(%rsp),%rax
    270c:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    2710:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    2717:	00 
    2718:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    271e:	0f 87 12 03 00 00    	ja     2a36 <submitr+0x456>
    2724:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    272b:	00 
    272c:	b9 00 04 00 00       	mov    $0x400,%ecx
    2731:	b8 00 00 00 00       	mov    $0x0,%eax
    2736:	48 89 f7             	mov    %rsi,%rdi
    2739:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    273c:	4c 89 f7             	mov    %r14,%rdi
    273f:	e8 96 fd ff ff       	call   24da <urlencode>
    2744:	85 c0                	test   %eax,%eax
    2746:	0f 88 5d 03 00 00    	js     2aa9 <submitr+0x4c9>
    274c:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2753:	00 
    2754:	b9 00 04 00 00       	mov    $0x400,%ecx
    2759:	b8 00 00 00 00       	mov    $0x0,%eax
    275e:	48 89 f7             	mov    %rsi,%rdi
    2761:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2764:	4c 89 ef             	mov    %r13,%rdi
    2767:	e8 6e fd ff ff       	call   24da <urlencode>
    276c:	85 c0                	test   %eax,%eax
    276e:	0f 88 c0 03 00 00    	js     2b34 <submitr+0x554>
    2774:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    277b:	00 
    277c:	48 83 ec 08          	sub    $0x8,%rsp
    2780:	41 54                	push   %r12
    2782:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    2789:	00 
    278a:	50                   	push   %rax
    278b:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    2792:	00 
    2793:	50                   	push   %rax
    2794:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2799:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    279e:	48 8d 0d 83 1f 00 00 	lea    0x1f83(%rip),%rcx        # 4728 <transition_table+0x408>
    27a5:	ba 00 20 00 00       	mov    $0x2000,%edx
    27aa:	be 01 00 00 00       	mov    $0x1,%esi
    27af:	4c 89 ff             	mov    %r15,%rdi
    27b2:	b8 00 00 00 00       	mov    $0x0,%eax
    27b7:	e8 24 ec ff ff       	call   13e0 <__sprintf_chk@plt>
    27bc:	48 83 c4 20          	add    $0x20,%rsp
    27c0:	4c 89 ff             	mov    %r15,%rdi
    27c3:	e8 c8 ea ff ff       	call   1290 <strlen@plt>
    27c8:	48 89 c2             	mov    %rax,%rdx
    27cb:	4c 89 fe             	mov    %r15,%rsi
    27ce:	89 df                	mov    %ebx,%edi
    27d0:	e8 76 fb ff ff       	call   234b <rio_writen>
    27d5:	48 85 c0             	test   %rax,%rax
    27d8:	0f 88 e1 03 00 00    	js     2bbf <submitr+0x5df>
    27de:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    27e3:	89 de                	mov    %ebx,%esi
    27e5:	4c 89 e7             	mov    %r12,%rdi
    27e8:	e8 16 fb ff ff       	call   2303 <rio_readinitb>
    27ed:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    27f4:	00 
    27f5:	ba 00 20 00 00       	mov    $0x2000,%edx
    27fa:	4c 89 e7             	mov    %r12,%rdi
    27fd:	e8 37 fc ff ff       	call   2439 <rio_readlineb>
    2802:	48 85 c0             	test   %rax,%rax
    2805:	0f 8e 20 04 00 00    	jle    2c2b <submitr+0x64b>
    280b:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2810:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    2817:	00 
    2818:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    281f:	00 
    2820:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    2827:	00 
    2828:	48 8d 35 8d 1f 00 00 	lea    0x1f8d(%rip),%rsi        # 47bc <transition_table+0x49c>
    282f:	b8 00 00 00 00       	mov    $0x0,%eax
    2834:	e8 07 eb ff ff       	call   1340 <__isoc99_sscanf@plt>
    2839:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2840:	00 
    2841:	48 8d 35 8b 1f 00 00 	lea    0x1f8b(%rip),%rsi        # 47d3 <transition_table+0x4b3>
    2848:	e8 83 ea ff ff       	call   12d0 <strcmp@plt>
    284d:	85 c0                	test   %eax,%eax
    284f:	0f 84 56 04 00 00    	je     2cab <submitr+0x6cb>
    2855:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    285c:	00 
    285d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2862:	ba 00 20 00 00       	mov    $0x2000,%edx
    2867:	e8 cd fb ff ff       	call   2439 <rio_readlineb>
    286c:	48 85 c0             	test   %rax,%rax
    286f:	7f c8                	jg     2839 <submitr+0x259>
    2871:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2878:	3a 20 43 
    287b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2882:	20 75 6e 
    2885:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2889:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    288d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2894:	74 6f 20 
    2897:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    289e:	68 65 61 
    28a1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28a5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28a9:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    28b0:	66 72 6f 
    28b3:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    28ba:	6f 6c 61 
    28bd:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28c1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    28c5:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    28cc:	76 65 72 
    28cf:	48 89 45 30          	mov    %rax,0x30(%rbp)
    28d3:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    28d7:	89 df                	mov    %ebx,%edi
    28d9:	e8 e2 e9 ff ff       	call   12c0 <close@plt>
    28de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28e3:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    28ea:	00 
    28eb:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28f2:	00 00 
    28f4:	0f 85 ff 04 00 00    	jne    2df9 <submitr+0x819>
    28fa:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    2901:	5b                   	pop    %rbx
    2902:	5d                   	pop    %rbp
    2903:	41 5c                	pop    %r12
    2905:	41 5d                	pop    %r13
    2907:	41 5e                	pop    %r14
    2909:	41 5f                	pop    %r15
    290b:	c3                   	ret
    290c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2913:	3a 20 43 
    2916:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    291d:	20 75 6e 
    2920:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2924:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2928:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    292f:	74 6f 20 
    2932:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2939:	65 20 73 
    293c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2940:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2944:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    294b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2951:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2956:	eb 8b                	jmp    28e3 <submitr+0x303>
    2958:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    295f:	3a 20 44 
    2962:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2969:	20 75 6e 
    296c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2970:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2974:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    297b:	74 6f 20 
    297e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2985:	76 65 20 
    2988:	48 89 45 10          	mov    %rax,0x10(%rbp)
    298c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2990:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2997:	61 62 20 
    299a:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    29a1:	72 20 61 
    29a4:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29a8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29ac:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    29b3:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    29b9:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    29bd:	89 df                	mov    %ebx,%edi
    29bf:	e8 fc e8 ff ff       	call   12c0 <close@plt>
    29c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29c9:	e9 15 ff ff ff       	jmp    28e3 <submitr+0x303>
    29ce:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    29d5:	3a 20 55 
    29d8:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    29df:	20 74 6f 
    29e2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29e6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29ea:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    29f1:	65 63 74 
    29f4:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    29fb:	68 65 20 
    29fe:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a02:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a06:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2a0d:	61 62 20 
    2a10:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a14:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2a1b:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2a21:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a25:	89 df                	mov    %ebx,%edi
    2a27:	e8 94 e8 ff ff       	call   12c0 <close@plt>
    2a2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a31:	e9 ad fe ff ff       	jmp    28e3 <submitr+0x303>
    2a36:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a3d:	3a 20 52 
    2a40:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a47:	20 73 74 
    2a4a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a4e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a52:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2a59:	74 6f 6f 
    2a5c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2a63:	65 2e 20 
    2a66:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a6a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a6e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a75:	61 73 65 
    2a78:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2a7f:	49 54 52 
    2a82:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a86:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a8a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2a91:	55 46 00 
    2a94:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a98:	89 df                	mov    %ebx,%edi
    2a9a:	e8 21 e8 ff ff       	call   12c0 <close@plt>
    2a9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2aa4:	e9 3a fe ff ff       	jmp    28e3 <submitr+0x303>
    2aa9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2ab0:	3a 20 52 
    2ab3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2aba:	20 73 74 
    2abd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ac1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ac5:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2acc:	63 6f 6e 
    2acf:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2ad6:	20 61 6e 
    2ad9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2add:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ae1:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2ae8:	67 61 6c 
    2aeb:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2af2:	6e 70 72 
    2af5:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2af9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2afd:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b04:	6c 65 20 
    2b07:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b0e:	63 74 65 
    2b11:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b15:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b19:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b1f:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b23:	89 df                	mov    %ebx,%edi
    2b25:	e8 96 e7 ff ff       	call   12c0 <close@plt>
    2b2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b2f:	e9 af fd ff ff       	jmp    28e3 <submitr+0x303>
    2b34:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b3b:	3a 20 55 
    2b3e:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    2b45:	20 73 74 
    2b48:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b4c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b50:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b57:	63 6f 6e 
    2b5a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b61:	20 61 6e 
    2b64:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b68:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b6c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b73:	67 61 6c 
    2b76:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b7d:	6e 70 72 
    2b80:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b84:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b88:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b8f:	6c 65 20 
    2b92:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b99:	63 74 65 
    2b9c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ba0:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2ba4:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2baa:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2bae:	89 df                	mov    %ebx,%edi
    2bb0:	e8 0b e7 ff ff       	call   12c0 <close@plt>
    2bb5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bba:	e9 24 fd ff ff       	jmp    28e3 <submitr+0x303>
    2bbf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2bc6:	3a 20 43 
    2bc9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bd0:	20 75 6e 
    2bd3:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bd7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bdb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2be2:	74 6f 20 
    2be5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2bec:	20 74 6f 
    2bef:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bf3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bf7:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2bfe:	41 75 74 
    2c01:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2c08:	73 65 72 
    2c0b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c0f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c13:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2c1a:	89 df                	mov    %ebx,%edi
    2c1c:	e8 9f e6 ff ff       	call   12c0 <close@plt>
    2c21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c26:	e9 b8 fc ff ff       	jmp    28e3 <submitr+0x303>
    2c2b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c32:	3a 20 43 
    2c35:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c3c:	20 75 6e 
    2c3f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c43:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c47:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c4e:	74 6f 20 
    2c51:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c58:	66 69 72 
    2c5b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c5f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c63:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c6a:	61 64 65 
    2c6d:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2c74:	6d 20 41 
    2c77:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c7b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c7f:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2c86:	62 20 73 
    2c89:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c8d:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2c94:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2c9a:	89 df                	mov    %ebx,%edi
    2c9c:	e8 1f e6 ff ff       	call   12c0 <close@plt>
    2ca1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ca6:	e9 38 fc ff ff       	jmp    28e3 <submitr+0x303>
    2cab:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cb2:	00 
    2cb3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2cb8:	ba 00 20 00 00       	mov    $0x2000,%edx
    2cbd:	e8 77 f7 ff ff       	call   2439 <rio_readlineb>
    2cc2:	48 85 c0             	test   %rax,%rax
    2cc5:	7e 78                	jle    2d3f <submitr+0x75f>
    2cc7:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ccc:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cd3:	0f 85 e7 00 00 00    	jne    2dc0 <submitr+0x7e0>
    2cd9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2ce0:	00 
    2ce1:	48 89 ef             	mov    %rbp,%rdi
    2ce4:	e8 67 e5 ff ff       	call   1250 <strcpy@plt>
    2ce9:	89 df                	mov    %ebx,%edi
    2ceb:	e8 d0 e5 ff ff       	call   12c0 <close@plt>
    2cf0:	48 8d 35 d6 1a 00 00 	lea    0x1ad6(%rip),%rsi        # 47cd <transition_table+0x4ad>
    2cf7:	48 89 ef             	mov    %rbp,%rdi
    2cfa:	e8 d1 e5 ff ff       	call   12d0 <strcmp@plt>
    2cff:	85 c0                	test   %eax,%eax
    2d01:	0f 84 dc fb ff ff    	je     28e3 <submitr+0x303>
    2d07:	48 8d 35 c3 1a 00 00 	lea    0x1ac3(%rip),%rsi        # 47d1 <transition_table+0x4b1>
    2d0e:	48 89 ef             	mov    %rbp,%rdi
    2d11:	e8 ba e5 ff ff       	call   12d0 <strcmp@plt>
    2d16:	85 c0                	test   %eax,%eax
    2d18:	0f 84 c5 fb ff ff    	je     28e3 <submitr+0x303>
    2d1e:	48 8d 35 b1 1a 00 00 	lea    0x1ab1(%rip),%rsi        # 47d6 <transition_table+0x4b6>
    2d25:	48 89 ef             	mov    %rbp,%rdi
    2d28:	e8 a3 e5 ff ff       	call   12d0 <strcmp@plt>
    2d2d:	85 c0                	test   %eax,%eax
    2d2f:	0f 84 ae fb ff ff    	je     28e3 <submitr+0x303>
    2d35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d3a:	e9 a4 fb ff ff       	jmp    28e3 <submitr+0x303>
    2d3f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d46:	3a 20 43 
    2d49:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d50:	20 75 6e 
    2d53:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d57:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d5b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d62:	74 6f 20 
    2d65:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d6c:	73 74 61 
    2d6f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d73:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d77:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d7e:	65 73 73 
    2d81:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2d88:	72 6f 6d 
    2d8b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d8f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d93:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2d9a:	6c 61 62 
    2d9d:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2da4:	65 72 00 
    2da7:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2dab:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2daf:	89 df                	mov    %ebx,%edi
    2db1:	e8 0a e5 ff ff       	call   12c0 <close@plt>
    2db6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dbb:	e9 23 fb ff ff       	jmp    28e3 <submitr+0x303>
    2dc0:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    2dc7:	00 
    2dc8:	48 8d 0d b9 19 00 00 	lea    0x19b9(%rip),%rcx        # 4788 <transition_table+0x468>
    2dcf:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2dd6:	be 01 00 00 00       	mov    $0x1,%esi
    2ddb:	48 89 ef             	mov    %rbp,%rdi
    2dde:	b8 00 00 00 00       	mov    $0x0,%eax
    2de3:	e8 f8 e5 ff ff       	call   13e0 <__sprintf_chk@plt>
    2de8:	89 df                	mov    %ebx,%edi
    2dea:	e8 d1 e4 ff ff       	call   12c0 <close@plt>
    2def:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2df4:	e9 ea fa ff ff       	jmp    28e3 <submitr+0x303>
    2df9:	e8 a2 e4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002dfe <init_timeout>:
    2dfe:	f3 0f 1e fa          	endbr64
    2e02:	85 ff                	test   %edi,%edi
    2e04:	74 26                	je     2e2c <init_timeout+0x2e>
    2e06:	53                   	push   %rbx
    2e07:	89 fb                	mov    %edi,%ebx
    2e09:	78 1a                	js     2e25 <init_timeout+0x27>
    2e0b:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 2315 <sigalrm_handler>
    2e12:	bf 0e 00 00 00       	mov    $0xe,%edi
    2e17:	e8 c4 e4 ff ff       	call   12e0 <signal@plt>
    2e1c:	89 df                	mov    %ebx,%edi
    2e1e:	e8 8d e4 ff ff       	call   12b0 <alarm@plt>
    2e23:	5b                   	pop    %rbx
    2e24:	c3                   	ret
    2e25:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e2a:	eb df                	jmp    2e0b <init_timeout+0xd>
    2e2c:	c3                   	ret

0000000000002e2d <init_driver>:
    2e2d:	f3 0f 1e fa          	endbr64
    2e31:	41 54                	push   %r12
    2e33:	55                   	push   %rbp
    2e34:	53                   	push   %rbx
    2e35:	48 83 ec 20          	sub    $0x20,%rsp
    2e39:	48 89 fd             	mov    %rdi,%rbp
    2e3c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e43:	00 00 
    2e45:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e4a:	31 c0                	xor    %eax,%eax
    2e4c:	be 01 00 00 00       	mov    $0x1,%esi
    2e51:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e56:	e8 85 e4 ff ff       	call   12e0 <signal@plt>
    2e5b:	be 01 00 00 00       	mov    $0x1,%esi
    2e60:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e65:	e8 76 e4 ff ff       	call   12e0 <signal@plt>
    2e6a:	be 01 00 00 00       	mov    $0x1,%esi
    2e6f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e74:	e8 67 e4 ff ff       	call   12e0 <signal@plt>
    2e79:	ba 00 00 00 00       	mov    $0x0,%edx
    2e7e:	be 01 00 00 00       	mov    $0x1,%esi
    2e83:	bf 02 00 00 00       	mov    $0x2,%edi
    2e88:	e8 63 e5 ff ff       	call   13f0 <socket@plt>
    2e8d:	85 c0                	test   %eax,%eax
    2e8f:	0f 88 9c 00 00 00    	js     2f31 <init_driver+0x104>
    2e95:	89 c3                	mov    %eax,%ebx
    2e97:	48 8d 3d 3b 19 00 00 	lea    0x193b(%rip),%rdi        # 47d9 <transition_table+0x4b9>
    2e9e:	e8 4d e4 ff ff       	call   12f0 <gethostbyname@plt>
    2ea3:	48 85 c0             	test   %rax,%rax
    2ea6:	0f 84 d1 00 00 00    	je     2f7d <init_driver+0x150>
    2eac:	49 89 e4             	mov    %rsp,%r12
    2eaf:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2eb6:	00 
    2eb7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2ebe:	00 00 
    2ec0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ec6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2eca:	48 8b 40 18          	mov    0x18(%rax),%rax
    2ece:	48 8b 30             	mov    (%rax),%rsi
    2ed1:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2ed6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2edb:	e8 20 e4 ff ff       	call   1300 <__memmove_chk@plt>
    2ee0:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
    2ee7:	ba 10 00 00 00       	mov    $0x10,%edx
    2eec:	4c 89 e6             	mov    %r12,%rsi
    2eef:	89 df                	mov    %ebx,%edi
    2ef1:	e8 aa e4 ff ff       	call   13a0 <connect@plt>
    2ef6:	85 c0                	test   %eax,%eax
    2ef8:	0f 88 e7 00 00 00    	js     2fe5 <init_driver+0x1b8>
    2efe:	89 df                	mov    %ebx,%edi
    2f00:	e8 bb e3 ff ff       	call   12c0 <close@plt>
    2f05:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2f0b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2f0f:	b8 00 00 00 00       	mov    $0x0,%eax
    2f14:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2f19:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2f20:	00 00 
    2f22:	0f 85 2c 01 00 00    	jne    3054 <init_driver+0x227>
    2f28:	48 83 c4 20          	add    $0x20,%rsp
    2f2c:	5b                   	pop    %rbx
    2f2d:	5d                   	pop    %rbp
    2f2e:	41 5c                	pop    %r12
    2f30:	c3                   	ret
    2f31:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f38:	3a 20 43 
    2f3b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f42:	20 75 6e 
    2f45:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f49:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f4d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f54:	74 6f 20 
    2f57:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f5e:	65 20 73 
    2f61:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f65:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f69:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2f70:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2f76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f7b:	eb 97                	jmp    2f14 <init_driver+0xe7>
    2f7d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2f84:	3a 20 44 
    2f87:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2f8e:	20 75 6e 
    2f91:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f95:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f99:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2fa0:	74 6f 20 
    2fa3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2faa:	76 65 20 
    2fad:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2fb1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2fb5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2fbc:	72 20 61 
    2fbf:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2fc3:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2fca:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2fd0:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2fd4:	89 df                	mov    %ebx,%edi
    2fd6:	e8 e5 e2 ff ff       	call   12c0 <close@plt>
    2fdb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fe0:	e9 2f ff ff ff       	jmp    2f14 <init_driver+0xe7>
    2fe5:	48 b8 31 39 32 2e 31 	movabs $0x2e3836312e323931,%rax
    2fec:	36 38 2e 
    2fef:	48 ba 31 33 32 2e 31 	movabs $0x3737312e323331,%rdx
    2ff6:	37 37 00 
    2ff9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ffd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3001:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3008:	3a 20 55 
    300b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3012:	20 74 6f 
    3015:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3019:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    301d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3024:	65 63 74 
    3027:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    302e:	65 72 76 
    3031:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3035:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3039:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    303f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    3043:	89 df                	mov    %ebx,%edi
    3045:	e8 76 e2 ff ff       	call   12c0 <close@plt>
    304a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    304f:	e9 c0 fe ff ff       	jmp    2f14 <init_driver+0xe7>
    3054:	e8 47 e2 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000003059 <driver_post>:
    3059:	f3 0f 1e fa          	endbr64
    305d:	53                   	push   %rbx
    305e:	4c 89 cb             	mov    %r9,%rbx
    3061:	45 85 c0             	test   %r8d,%r8d
    3064:	75 18                	jne    307e <driver_post+0x25>
    3066:	48 85 ff             	test   %rdi,%rdi
    3069:	74 05                	je     3070 <driver_post+0x17>
    306b:	80 3f 00             	cmpb   $0x0,(%rdi)
    306e:	75 37                	jne    30a7 <driver_post+0x4e>
    3070:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3075:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3079:	44 89 c0             	mov    %r8d,%eax
    307c:	5b                   	pop    %rbx
    307d:	c3                   	ret
    307e:	48 89 ca             	mov    %rcx,%rdx
    3081:	48 8d 35 61 17 00 00 	lea    0x1761(%rip),%rsi        # 47e9 <transition_table+0x4c9>
    3088:	bf 01 00 00 00       	mov    $0x1,%edi
    308d:	b8 00 00 00 00       	mov    $0x0,%eax
    3092:	e8 c9 e2 ff ff       	call   1360 <__printf_chk@plt>
    3097:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    309c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    30a0:	b8 00 00 00 00       	mov    $0x0,%eax
    30a5:	eb d5                	jmp    307c <driver_post+0x23>
    30a7:	48 83 ec 08          	sub    $0x8,%rsp
    30ab:	41 51                	push   %r9
    30ad:	49 89 c9             	mov    %rcx,%r9
    30b0:	49 89 d0             	mov    %rdx,%r8
    30b3:	48 89 f9             	mov    %rdi,%rcx
    30b6:	48 89 f2             	mov    %rsi,%rdx
    30b9:	be b8 0b 00 00       	mov    $0xbb8,%esi
    30be:	48 8d 3d 14 17 00 00 	lea    0x1714(%rip),%rdi        # 47d9 <transition_table+0x4b9>
    30c5:	e8 16 f5 ff ff       	call   25e0 <submitr>
    30ca:	48 83 c4 10          	add    $0x10,%rsp
    30ce:	eb ac                	jmp    307c <driver_post+0x23>

Disassembly of section .fini:

00000000000030d0 <_fini>:
    30d0:	f3 0f 1e fa          	endbr64
    30d4:	48 83 ec 08          	sub    $0x8,%rsp
    30d8:	48 83 c4 08          	add    $0x8,%rsp
    30dc:	c3                   	ret
