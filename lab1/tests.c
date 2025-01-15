/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floation point test code */

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
  union {
    unsigned u;
    float f;
  } a;
  a.u = u;
  return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
  union {
    unsigned u;
    float f;
  } a;
  a.f = f;
  return a.u;
}

/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
int test_bitAnd(int x, int y)
{
  return x&y;
}
int test_bitConditional(int x, int y, int z)
{
  return (y & x) | (z & ~x);
}
int test_implication(int x, int y)
{
  return !(x & (!y));
}
int test_rotateRight(int x, int n) {
  unsigned u = (unsigned) x;
  int i;
  for (i = 0; i < n; i++) {
      unsigned lsb = (u & 1) << 31;
      unsigned rest = u >> 1;
      u = lsb | rest;
  }
  return (int) u;
}
int test_bang(int x)
{
  return !x;
}
int test_countTrailingZero(int x){
    int i = 0;
    if(x == 0) return 32;
    for(i = 0; i < 32; i++){
        if(x >> i & 1)
            return i;
    }
}
int test_divpwr2(int x, int n)
{
    int p2n = 1<<n;
    return x/p2n;
}
int test_sameSign(int x, int y) {
  return (x >= 0) && (y >= 0) || (x < 0) && (y < 0);
}
int test_multFiveEighths(int x)
{
  return (x*5)/8;
}
int test_satMul3(int x)
{
  if ((x+x+x)/3 != x)
    return x < 0 ? 0x80000000 : 0x7FFFFFFF;
  else
    return 3*x;
}
int test_isLessOrEqual(int x, int y)
{
  return x <= y;
}
int test_ilog2(int x) {
  int mask, result;
  /* find the leftmost bit */
  result = 31;
  mask = 1 << result;
  while (!(x & mask)) {
    result--;
    mask = 1 << result;
  }
  return result;
}
unsigned test_float_twice(unsigned uf) {
  float f = u2f(uf);
  float tf = 2*f;
  if (isnan(f))
    return uf;
  else
    return f2u(tf);
}
unsigned test_float_i2f(int x) {
  float f = (float) x;
  return f2u(f);
}
int test_float64_f2i(unsigned uf1, unsigned uf2) {
  unsigned sign, exp, ans, frac, frac2;
  int step = 1;
  unsigned tmp1 = uf2, tmp2 = 31;
  while (step) {
    unsigned res = tmp1 >> tmp2;
    switch (step) {
      case 1:
        sign = res; tmp2 = 20; step = 2; break;
      case 2:
        exp = res; tmp1 = uf1; tmp2 = 22; step = 3; break;
      case 3:
        frac2 = res; step = 0;
    }
  }
  step = 1; tmp1 = exp; tmp2 = 0x7ff;
  while (step) {
    unsigned res = tmp1 & tmp2;
    switch (step) {
      case 1:
        exp = res; tmp1 = uf2; tmp2 = 0xfffff; step = 2; break;
      case 2:
        frac = res << 10; step = 0;
    }
  }
  step = 1; tmp2 = frac2;
  while (step) {
    unsigned res = frac | tmp2;
    switch (step) {
      case 1:
        frac = res; tmp2 = 0x40000000; step = 2; break;
      case 2:
        frac = res; step = 0;
    }
  }
  switch (exp) {
    case 1054: case 1055: case 1056: case 1057: case 1058: case 1059: case 1060: case 1061: case 1062: case 1063: case 1064: case 1065: case 1066: case 1067: case 1068: case 1069: case 1070: case 1071: case 1072: case 1073: case 1074: case 1075: case 1076: case 1077: case 1078: case 1079: case 1080: case 1081: case 1082: case 1083: case 1084: case 1085: case 1086: case 1087: case 1088: case 1089: case 1090: case 1091: case 1092: case 1093: case 1094: case 1095: case 1096: case 1097: case 1098: case 1099: case 1100: case 1101: case 1102: case 1103: case 1104: case 1105: case 1106: case 1107: case 1108: case 1109: case 1110: case 1111: case 1112: case 1113: case 1114: case 1115: case 1116: case 1117: case 1118: case 1119: case 1120: case 1121: case 1122: case 1123: case 1124: case 1125: case 1126: case 1127: case 1128: case 1129: case 1130: case 1131: case 1132: case 1133: case 1134: case 1135: case 1136: case 1137: case 1138: case 1139: case 1140: case 1141: case 1142: case 1143: case 1144: case 1145: case 1146: case 1147: case 1148: case 1149: case 1150: case 1151: case 1152: case 1153: case 1154: case 1155: case 1156: case 1157: case 1158: case 1159: case 1160: case 1161: case 1162: case 1163: case 1164: case 1165: case 1166: case 1167: case 1168: case 1169: case 1170: case 1171: case 1172: case 1173: case 1174: case 1175: case 1176: case 1177: case 1178: case 1179: case 1180: case 1181: case 1182: case 1183: case 1184: case 1185: case 1186: case 1187: case 1188: case 1189: case 1190: case 1191: case 1192: case 1193: case 1194: case 1195: case 1196: case 1197: case 1198: case 1199: case 1200: case 1201: case 1202: case 1203: case 1204: case 1205: case 1206: case 1207: case 1208: case 1209: case 1210: case 1211: case 1212: case 1213: case 1214: case 1215: case 1216: case 1217: case 1218: case 1219: case 1220: case 1221: case 1222: case 1223: case 1224: case 1225: case 1226: case 1227: case 1228: case 1229: case 1230: case 1231: case 1232: case 1233: case 1234: case 1235: case 1236: case 1237: case 1238: case 1239: case 1240: case 1241: case 1242: case 1243: case 1244: case 1245: case 1246: case 1247: case 1248: case 1249: case 1250: case 1251: case 1252: case 1253: case 1254: case 1255: case 1256: case 1257: case 1258: case 1259: case 1260: case 1261: case 1262: case 1263: case 1264: case 1265: case 1266: case 1267: case 1268: case 1269: case 1270: case 1271: case 1272: case 1273: case 1274: case 1275: case 1276: case 1277: case 1278: case 1279: case 1280: case 1281: case 1282: case 1283: case 1284: case 1285: case 1286: case 1287: case 1288: case 1289: case 1290: case 1291: case 1292: case 1293: case 1294: case 1295: case 1296: case 1297: case 1298: case 1299: case 1300: case 1301: case 1302: case 1303: case 1304: case 1305: case 1306: case 1307: case 1308: case 1309: case 1310: case 1311: case 1312: case 1313: case 1314: case 1315: case 1316: case 1317: case 1318: case 1319: case 1320: case 1321: case 1322: case 1323: case 1324: case 1325: case 1326: case 1327: case 1328: case 1329: case 1330: case 1331: case 1332: case 1333: case 1334: case 1335: case 1336: case 1337: case 1338: case 1339: case 1340: case 1341: case 1342: case 1343: case 1344: case 1345: case 1346: case 1347: case 1348: case 1349: case 1350: case 1351: case 1352: case 1353: case 1354: case 1355: case 1356: case 1357: case 1358: case 1359: case 1360: case 1361: case 1362: case 1363: case 1364: case 1365: case 1366: case 1367: case 1368: case 1369: case 1370: case 1371: case 1372: case 1373: case 1374: case 1375: case 1376: case 1377: case 1378: case 1379: case 1380: case 1381: case 1382: case 1383: case 1384: case 1385: case 1386: case 1387: case 1388: case 1389: case 1390: case 1391: case 1392: case 1393: case 1394: case 1395: case 1396: case 1397: case 1398: case 1399: case 1400: case 1401: case 1402: case 1403: case 1404: case 1405: case 1406: case 1407: case 1408: case 1409: case 1410: case 1411: case 1412: case 1413: case 1414: case 1415: case 1416: case 1417: case 1418: case 1419: case 1420: case 1421: case 1422: case 1423: case 1424: case 1425: case 1426: case 1427: case 1428: case 1429: case 1430: case 1431: case 1432: case 1433: case 1434: case 1435: case 1436: case 1437: case 1438: case 1439: case 1440: case 1441: case 1442: case 1443: case 1444: case 1445: case 1446: case 1447: case 1448: case 1449: case 1450: case 1451: case 1452: case 1453: case 1454: case 1455: case 1456: case 1457: case 1458: case 1459: case 1460: case 1461: case 1462: case 1463: case 1464: case 1465: case 1466: case 1467: case 1468: case 1469: case 1470: case 1471: case 1472: case 1473: case 1474: case 1475: case 1476: case 1477: case 1478: case 1479: case 1480: case 1481: case 1482: case 1483: case 1484: case 1485: case 1486: case 1487: case 1488: case 1489: case 1490: case 1491: case 1492: case 1493: case 1494: case 1495: case 1496: case 1497: case 1498: case 1499: case 1500: case 1501: case 1502: case 1503: case 1504: case 1505: case 1506: case 1507: case 1508: case 1509: case 1510: case 1511: case 1512: case 1513: case 1514: case 1515: case 1516: case 1517: case 1518: case 1519: case 1520: case 1521: case 1522: case 1523: case 1524: case 1525: case 1526: case 1527: case 1528: case 1529: case 1530: case 1531: case 1532: case 1533: case 1534: case 1535: case 1536: case 1537: case 1538: case 1539: case 1540: case 1541: case 1542: case 1543: case 1544: case 1545: case 1546: case 1547: case 1548: case 1549: case 1550: case 1551: case 1552: case 1553: case 1554: case 1555: case 1556: case 1557: case 1558: case 1559: case 1560: case 1561: case 1562: case 1563: case 1564: case 1565: case 1566: case 1567: case 1568: case 1569: case 1570: case 1571: case 1572: case 1573: case 1574: case 1575: case 1576: case 1577: case 1578: case 1579: case 1580: case 1581: case 1582: case 1583: case 1584: case 1585: case 1586: case 1587: case 1588: case 1589: case 1590: case 1591: case 1592: case 1593: case 1594: case 1595: case 1596: case 1597: case 1598: case 1599: case 1600: case 1601: case 1602: case 1603: case 1604: case 1605: case 1606: case 1607: case 1608: case 1609: case 1610: case 1611: case 1612: case 1613: case 1614: case 1615: case 1616: case 1617: case 1618: case 1619: case 1620: case 1621: case 1622: case 1623: case 1624: case 1625: case 1626: case 1627: case 1628: case 1629: case 1630: case 1631: case 1632: case 1633: case 1634: case 1635: case 1636: case 1637: case 1638: case 1639: case 1640: case 1641: case 1642: case 1643: case 1644: case 1645: case 1646: case 1647: case 1648: case 1649: case 1650: case 1651: case 1652: case 1653: case 1654: case 1655: case 1656: case 1657: case 1658: case 1659: case 1660: case 1661: case 1662: case 1663: case 1664: case 1665: case 1666: case 1667: case 1668: case 1669: case 1670: case 1671: case 1672: case 1673: case 1674: case 1675: case 1676: case 1677: case 1678: case 1679: case 1680: case 1681: case 1682: case 1683: case 1684: case 1685: case 1686: case 1687: case 1688: case 1689: case 1690: case 1691: case 1692: case 1693: case 1694: case 1695: case 1696: case 1697: case 1698: case 1699: case 1700: case 1701: case 1702: case 1703: case 1704: case 1705: case 1706: case 1707: case 1708: case 1709: case 1710: case 1711: case 1712: case 1713: case 1714: case 1715: case 1716: case 1717: case 1718: case 1719: case 1720: case 1721: case 1722: case 1723: case 1724: case 1725: case 1726: case 1727: case 1728: case 1729: case 1730: case 1731: case 1732: case 1733: case 1734: case 1735: case 1736: case 1737: case 1738: case 1739: case 1740: case 1741: case 1742: case 1743: case 1744: case 1745: case 1746: case 1747: case 1748: case 1749: case 1750: case 1751: case 1752: case 1753: case 1754: case 1755: case 1756: case 1757: case 1758: case 1759: case 1760: case 1761: case 1762: case 1763: case 1764: case 1765: case 1766: case 1767: case 1768: case 1769: case 1770: case 1771: case 1772: case 1773: case 1774: case 1775: case 1776: case 1777: case 1778: case 1779: case 1780: case 1781: case 1782: case 1783: case 1784: case 1785: case 1786: case 1787: case 1788: case 1789: case 1790: case 1791: case 1792: case 1793: case 1794: case 1795: case 1796: case 1797: case 1798: case 1799: case 1800: case 1801: case 1802: case 1803: case 1804: case 1805: case 1806: case 1807: case 1808: case 1809: case 1810: case 1811: case 1812: case 1813: case 1814: case 1815: case 1816: case 1817: case 1818: case 1819: case 1820: case 1821: case 1822: case 1823: case 1824: case 1825: case 1826: case 1827: case 1828: case 1829: case 1830: case 1831: case 1832: case 1833: case 1834: case 1835: case 1836: case 1837: case 1838: case 1839: case 1840: case 1841: case 1842: case 1843: case 1844: case 1845: case 1846: case 1847: case 1848: case 1849: case 1850: case 1851: case 1852: case 1853: case 1854: case 1855: case 1856: case 1857: case 1858: case 1859: case 1860: case 1861: case 1862: case 1863: case 1864: case 1865: case 1866: case 1867: case 1868: case 1869: case 1870: case 1871: case 1872: case 1873: case 1874: case 1875: case 1876: case 1877: case 1878: case 1879: case 1880: case 1881: case 1882: case 1883: case 1884: case 1885: case 1886: case 1887: case 1888: case 1889: case 1890: case 1891: case 1892: case 1893: case 1894: case 1895: case 1896: case 1897: case 1898: case 1899: case 1900: case 1901: case 1902: case 1903: case 1904: case 1905: case 1906: case 1907: case 1908: case 1909: case 1910: case 1911: case 1912: case 1913: case 1914: case 1915: case 1916: case 1917: case 1918: case 1919: case 1920: case 1921: case 1922: case 1923: case 1924: case 1925: case 1926: case 1927: case 1928: case 1929: case 1930: case 1931: case 1932: case 1933: case 1934: case 1935: case 1936: case 1937: case 1938: case 1939: case 1940: case 1941: case 1942: case 1943: case 1944: case 1945: case 1946: case 1947: case 1948: case 1949: case 1950: case 1951: case 1952: case 1953: case 1954: case 1955: case 1956: case 1957: case 1958: case 1959: case 1960: case 1961: case 1962: case 1963: case 1964: case 1965: case 1966: case 1967: case 1968: case 1969: case 1970: case 1971: case 1972: case 1973: case 1974: case 1975: case 1976: case 1977: case 1978: case 1979: case 1980: case 1981: case 1982: case 1983: case 1984: case 1985: case 1986: case 1987: case 1988: case 1989: case 1990: case 1991: case 1992: case 1993: case 1994: case 1995: case 1996: case 1997: case 1998: case 1999: case 2000: case 2001: case 2002: case 2003: case 2004: case 2005: case 2006: case 2007: case 2008: case 2009: case 2010: case 2011: case 2012: case 2013: case 2014: case 2015: case 2016: case 2017: case 2018: case 2019: case 2020: case 2021: case 2022: case 2023: case 2024: case 2025: case 2026: case 2027: case 2028: case 2029: case 2030: case 2031: case 2032: case 2033: case 2034: case 2035: case 2036: case 2037: case 2038: case 2039: case 2040: case 2041: case 2042: case 2043: case 2044: case 2045: case 2046: case 2047: return 0x80000000;
    case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10: case 11: case 12: case 13: case 14: case 15: case 16: case 17: case 18: case 19: case 20: case 21: case 22: case 23: case 24: case 25: case 26: case 27: case 28: case 29: case 30: case 31: case 32: case 33: case 34: case 35: case 36: case 37: case 38: case 39: case 40: case 41: case 42: case 43: case 44: case 45: case 46: case 47: case 48: case 49: case 50: case 51: case 52: case 53: case 54: case 55: case 56: case 57: case 58: case 59: case 60: case 61: case 62: case 63: case 64: case 65: case 66: case 67: case 68: case 69: case 70: case 71: case 72: case 73: case 74: case 75: case 76: case 77: case 78: case 79: case 80: case 81: case 82: case 83: case 84: case 85: case 86: case 87: case 88: case 89: case 90: case 91: case 92: case 93: case 94: case 95: case 96: case 97: case 98: case 99: case 100: case 101: case 102: case 103: case 104: case 105: case 106: case 107: case 108: case 109: case 110: case 111: case 112: case 113: case 114: case 115: case 116: case 117: case 118: case 119: case 120: case 121: case 122: case 123: case 124: case 125: case 126: case 127: case 128: case 129: case 130: case 131: case 132: case 133: case 134: case 135: case 136: case 137: case 138: case 139: case 140: case 141: case 142: case 143: case 144: case 145: case 146: case 147: case 148: case 149: case 150: case 151: case 152: case 153: case 154: case 155: case 156: case 157: case 158: case 159: case 160: case 161: case 162: case 163: case 164: case 165: case 166: case 167: case 168: case 169: case 170: case 171: case 172: case 173: case 174: case 175: case 176: case 177: case 178: case 179: case 180: case 181: case 182: case 183: case 184: case 185: case 186: case 187: case 188: case 189: case 190: case 191: case 192: case 193: case 194: case 195: case 196: case 197: case 198: case 199: case 200: case 201: case 202: case 203: case 204: case 205: case 206: case 207: case 208: case 209: case 210: case 211: case 212: case 213: case 214: case 215: case 216: case 217: case 218: case 219: case 220: case 221: case 222: case 223: case 224: case 225: case 226: case 227: case 228: case 229: case 230: case 231: case 232: case 233: case 234: case 235: case 236: case 237: case 238: case 239: case 240: case 241: case 242: case 243: case 244: case 245: case 246: case 247: case 248: case 249: case 250: case 251: case 252: case 253: case 254: case 255: case 256: case 257: case 258: case 259: case 260: case 261: case 262: case 263: case 264: case 265: case 266: case 267: case 268: case 269: case 270: case 271: case 272: case 273: case 274: case 275: case 276: case 277: case 278: case 279: case 280: case 281: case 282: case 283: case 284: case 285: case 286: case 287: case 288: case 289: case 290: case 291: case 292: case 293: case 294: case 295: case 296: case 297: case 298: case 299: case 300: case 301: case 302: case 303: case 304: case 305: case 306: case 307: case 308: case 309: case 310: case 311: case 312: case 313: case 314: case 315: case 316: case 317: case 318: case 319: case 320: case 321: case 322: case 323: case 324: case 325: case 326: case 327: case 328: case 329: case 330: case 331: case 332: case 333: case 334: case 335: case 336: case 337: case 338: case 339: case 340: case 341: case 342: case 343: case 344: case 345: case 346: case 347: case 348: case 349: case 350: case 351: case 352: case 353: case 354: case 355: case 356: case 357: case 358: case 359: case 360: case 361: case 362: case 363: case 364: case 365: case 366: case 367: case 368: case 369: case 370: case 371: case 372: case 373: case 374: case 375: case 376: case 377: case 378: case 379: case 380: case 381: case 382: case 383: case 384: case 385: case 386: case 387: case 388: case 389: case 390: case 391: case 392: case 393: case 394: case 395: case 396: case 397: case 398: case 399: case 400: case 401: case 402: case 403: case 404: case 405: case 406: case 407: case 408: case 409: case 410: case 411: case 412: case 413: case 414: case 415: case 416: case 417: case 418: case 419: case 420: case 421: case 422: case 423: case 424: case 425: case 426: case 427: case 428: case 429: case 430: case 431: case 432: case 433: case 434: case 435: case 436: case 437: case 438: case 439: case 440: case 441: case 442: case 443: case 444: case 445: case 446: case 447: case 448: case 449: case 450: case 451: case 452: case 453: case 454: case 455: case 456: case 457: case 458: case 459: case 460: case 461: case 462: case 463: case 464: case 465: case 466: case 467: case 468: case 469: case 470: case 471: case 472: case 473: case 474: case 475: case 476: case 477: case 478: case 479: case 480: case 481: case 482: case 483: case 484: case 485: case 486: case 487: case 488: case 489: case 490: case 491: case 492: case 493: case 494: case 495: case 496: case 497: case 498: case 499: case 500: case 501: case 502: case 503: case 504: case 505: case 506: case 507: case 508: case 509: case 510: case 511: case 512: case 513: case 514: case 515: case 516: case 517: case 518: case 519: case 520: case 521: case 522: case 523: case 524: case 525: case 526: case 527: case 528: case 529: case 530: case 531: case 532: case 533: case 534: case 535: case 536: case 537: case 538: case 539: case 540: case 541: case 542: case 543: case 544: case 545: case 546: case 547: case 548: case 549: case 550: case 551: case 552: case 553: case 554: case 555: case 556: case 557: case 558: case 559: case 560: case 561: case 562: case 563: case 564: case 565: case 566: case 567: case 568: case 569: case 570: case 571: case 572: case 573: case 574: case 575: case 576: case 577: case 578: case 579: case 580: case 581: case 582: case 583: case 584: case 585: case 586: case 587: case 588: case 589: case 590: case 591: case 592: case 593: case 594: case 595: case 596: case 597: case 598: case 599: case 600: case 601: case 602: case 603: case 604: case 605: case 606: case 607: case 608: case 609: case 610: case 611: case 612: case 613: case 614: case 615: case 616: case 617: case 618: case 619: case 620: case 621: case 622: case 623: case 624: case 625: case 626: case 627: case 628: case 629: case 630: case 631: case 632: case 633: case 634: case 635: case 636: case 637: case 638: case 639: case 640: case 641: case 642: case 643: case 644: case 645: case 646: case 647: case 648: case 649: case 650: case 651: case 652: case 653: case 654: case 655: case 656: case 657: case 658: case 659: case 660: case 661: case 662: case 663: case 664: case 665: case 666: case 667: case 668: case 669: case 670: case 671: case 672: case 673: case 674: case 675: case 676: case 677: case 678: case 679: case 680: case 681: case 682: case 683: case 684: case 685: case 686: case 687: case 688: case 689: case 690: case 691: case 692: case 693: case 694: case 695: case 696: case 697: case 698: case 699: case 700: case 701: case 702: case 703: case 704: case 705: case 706: case 707: case 708: case 709: case 710: case 711: case 712: case 713: case 714: case 715: case 716: case 717: case 718: case 719: case 720: case 721: case 722: case 723: case 724: case 725: case 726: case 727: case 728: case 729: case 730: case 731: case 732: case 733: case 734: case 735: case 736: case 737: case 738: case 739: case 740: case 741: case 742: case 743: case 744: case 745: case 746: case 747: case 748: case 749: case 750: case 751: case 752: case 753: case 754: case 755: case 756: case 757: case 758: case 759: case 760: case 761: case 762: case 763: case 764: case 765: case 766: case 767: case 768: case 769: case 770: case 771: case 772: case 773: case 774: case 775: case 776: case 777: case 778: case 779: case 780: case 781: case 782: case 783: case 784: case 785: case 786: case 787: case 788: case 789: case 790: case 791: case 792: case 793: case 794: case 795: case 796: case 797: case 798: case 799: case 800: case 801: case 802: case 803: case 804: case 805: case 806: case 807: case 808: case 809: case 810: case 811: case 812: case 813: case 814: case 815: case 816: case 817: case 818: case 819: case 820: case 821: case 822: case 823: case 824: case 825: case 826: case 827: case 828: case 829: case 830: case 831: case 832: case 833: case 834: case 835: case 836: case 837: case 838: case 839: case 840: case 841: case 842: case 843: case 844: case 845: case 846: case 847: case 848: case 849: case 850: case 851: case 852: case 853: case 854: case 855: case 856: case 857: case 858: case 859: case 860: case 861: case 862: case 863: case 864: case 865: case 866: case 867: case 868: case 869: case 870: case 871: case 872: case 873: case 874: case 875: case 876: case 877: case 878: case 879: case 880: case 881: case 882: case 883: case 884: case 885: case 886: case 887: case 888: case 889: case 890: case 891: case 892: case 893: case 894: case 895: case 896: case 897: case 898: case 899: case 900: case 901: case 902: case 903: case 904: case 905: case 906: case 907: case 908: case 909: case 910: case 911: case 912: case 913: case 914: case 915: case 916: case 917: case 918: case 919: case 920: case 921: case 922: case 923: case 924: case 925: case 926: case 927: case 928: case 929: case 930: case 931: case 932: case 933: case 934: case 935: case 936: case 937: case 938: case 939: case 940: case 941: case 942: case 943: case 944: case 945: case 946: case 947: case 948: case 949: case 950: case 951: case 952: case 953: case 954: case 955: case 956: case 957: case 958: case 959: case 960: case 961: case 962: case 963: case 964: case 965: case 966: case 967: case 968: case 969: case 970: case 971: case 972: case 973: case 974: case 975: case 976: case 977: case 978: case 979: case 980: case 981: case 982: case 983: case 984: case 985: case 986: case 987: case 988: case 989: case 990: case 991: case 992: case 993: case 994: case 995: case 996: case 997: case 998: case 999: case 1000: case 1001: case 1002: case 1003: case 1004: case 1005: case 1006: case 1007: case 1008: case 1009: case 1010: case 1011: case 1012: case 1013: case 1014: case 1015: case 1016: case 1017: case 1018: case 1019: case 1020: case 1021: case 1022: return 0;
  }
  step = 1; tmp1 = 1053; tmp2 = exp;
  while (step) {
    unsigned res = tmp1 - tmp2;
    switch (step) {
      case 1:
        ans = frac >> res; tmp1 = 0; tmp2 = ans; step = 2; break;
      case 2:
        if (sign) { ans = res; } step = 0; break;
    }
  }
  return ans;
}
unsigned test_float_negpwr2(int x) {
  if (x > 149) { return 0; }
  switch (x) {
    case 0x95: return 0x1;
    case 0x94: return 0x2;
    case 0x93: return 0x4;
    case 0x92: return 0x8;
    case 0x91: return 0x10;
    case 0x90: return 0x20;
    case 0x8f: return 0x40;
    case 0x8e: return 0x80;
    case 0x8d: return 0x100;
    case 0x8c: return 0x200;
    case 0x8b: return 0x400;
    case 0x8a: return 0x800;
    case 0x89: return 0x1000;
    case 0x88: return 0x2000;
    case 0x87: return 0x4000;
    case 0x86: return 0x8000;
    case 0x85: return 0x10000;
    case 0x84: return 0x20000;
    case 0x83: return 0x40000;
    case 0x82: return 0x80000;
    case 0x81: return 0x100000;
    case 0x80: return 0x200000;
    case 0x7f: return 0x400000;
    case 0x7e: return 0x800000;
    case 0x7d: return 0x1000000;
    case 0x7c: return 0x1800000;
    case 0x7b: return 0x2000000;
    case 0x7a: return 0x2800000;
    case 0x79: return 0x3000000;
    case 0x78: return 0x3800000;
    case 0x77: return 0x4000000;
    case 0x76: return 0x4800000;
    case 0x75: return 0x5000000;
    case 0x74: return 0x5800000;
    case 0x73: return 0x6000000;
    case 0x72: return 0x6800000;
    case 0x71: return 0x7000000;
    case 0x70: return 0x7800000;
    case 0x6f: return 0x8000000;
    case 0x6e: return 0x8800000;
    case 0x6d: return 0x9000000;
    case 0x6c: return 0x9800000;
    case 0x6b: return 0xa000000;
    case 0x6a: return 0xa800000;
    case 0x69: return 0xb000000;
    case 0x68: return 0xb800000;
    case 0x67: return 0xc000000;
    case 0x66: return 0xc800000;
    case 0x65: return 0xd000000;
    case 0x64: return 0xd800000;
    case 0x63: return 0xe000000;
    case 0x62: return 0xe800000;
    case 0x61: return 0xf000000;
    case 0x60: return 0xf800000;
    case 0x5f: return 0x10000000;
    case 0x5e: return 0x10800000;
    case 0x5d: return 0x11000000;
    case 0x5c: return 0x11800000;
    case 0x5b: return 0x12000000;
    case 0x5a: return 0x12800000;
    case 0x59: return 0x13000000;
    case 0x58: return 0x13800000;
    case 0x57: return 0x14000000;
    case 0x56: return 0x14800000;
    case 0x55: return 0x15000000;
    case 0x54: return 0x15800000;
    case 0x53: return 0x16000000;
    case 0x52: return 0x16800000;
    case 0x51: return 0x17000000;
    case 0x50: return 0x17800000;
    case 0x4f: return 0x18000000;
    case 0x4e: return 0x18800000;
    case 0x4d: return 0x19000000;
    case 0x4c: return 0x19800000;
    case 0x4b: return 0x1a000000;
    case 0x4a: return 0x1a800000;
    case 0x49: return 0x1b000000;
    case 0x48: return 0x1b800000;
    case 0x47: return 0x1c000000;
    case 0x46: return 0x1c800000;
    case 0x45: return 0x1d000000;
    case 0x44: return 0x1d800000;
    case 0x43: return 0x1e000000;
    case 0x42: return 0x1e800000;
    case 0x41: return 0x1f000000;
    case 0x40: return 0x1f800000;
    case 0x3f: return 0x20000000;
    case 0x3e: return 0x20800000;
    case 0x3d: return 0x21000000;
    case 0x3c: return 0x21800000;
    case 0x3b: return 0x22000000;
    case 0x3a: return 0x22800000;
    case 0x39: return 0x23000000;
    case 0x38: return 0x23800000;
    case 0x37: return 0x24000000;
    case 0x36: return 0x24800000;
    case 0x35: return 0x25000000;
    case 0x34: return 0x25800000;
    case 0x33: return 0x26000000;
    case 0x32: return 0x26800000;
    case 0x31: return 0x27000000;
    case 0x30: return 0x27800000;
    case 0x2f: return 0x28000000;
    case 0x2e: return 0x28800000;
    case 0x2d: return 0x29000000;
    case 0x2c: return 0x29800000;
    case 0x2b: return 0x2a000000;
    case 0x2a: return 0x2a800000;
    case 0x29: return 0x2b000000;
    case 0x28: return 0x2b800000;
    case 0x27: return 0x2c000000;
    case 0x26: return 0x2c800000;
    case 0x25: return 0x2d000000;
    case 0x24: return 0x2d800000;
    case 0x23: return 0x2e000000;
    case 0x22: return 0x2e800000;
    case 0x21: return 0x2f000000;
    case 0x20: return 0x2f800000;
    case 0x1f: return 0x30000000;
    case 0x1e: return 0x30800000;
    case 0x1d: return 0x31000000;
    case 0x1c: return 0x31800000;
    case 0x1b: return 0x32000000;
    case 0x1a: return 0x32800000;
    case 0x19: return 0x33000000;
    case 0x18: return 0x33800000;
    case 0x17: return 0x34000000;
    case 0x16: return 0x34800000;
    case 0x15: return 0x35000000;
    case 0x14: return 0x35800000;
    case 0x13: return 0x36000000;
    case 0x12: return 0x36800000;
    case 0x11: return 0x37000000;
    case 0x10: return 0x37800000;
    case 0xf: return 0x38000000;
    case 0xe: return 0x38800000;
    case 0xd: return 0x39000000;
    case 0xc: return 0x39800000;
    case 0xb: return 0x3a000000;
    case 0xa: return 0x3a800000;
    case 0x9: return 0x3b000000;
    case 0x8: return 0x3b800000;
    case 0x7: return 0x3c000000;
    case 0x6: return 0x3c800000;
    case 0x5: return 0x3d000000;
    case 0x4: return 0x3d800000;
    case 0x3: return 0x3e000000;
    case 0x2: return 0x3e800000;
    case 0x1: return 0x3f000000;
    case 0x0: return 0x3f800000;
    case 0xffffffff: return 0x40000000;
    case 0xfffffffe: return 0x40800000;
    case 0xfffffffd: return 0x41000000;
    case 0xfffffffc: return 0x41800000;
    case 0xfffffffb: return 0x42000000;
    case 0xfffffffa: return 0x42800000;
    case 0xfffffff9: return 0x43000000;
    case 0xfffffff8: return 0x43800000;
    case 0xfffffff7: return 0x44000000;
    case 0xfffffff6: return 0x44800000;
    case 0xfffffff5: return 0x45000000;
    case 0xfffffff4: return 0x45800000;
    case 0xfffffff3: return 0x46000000;
    case 0xfffffff2: return 0x46800000;
    case 0xfffffff1: return 0x47000000;
    case 0xfffffff0: return 0x47800000;
    case 0xffffffef: return 0x48000000;
    case 0xffffffee: return 0x48800000;
    case 0xffffffed: return 0x49000000;
    case 0xffffffec: return 0x49800000;
    case 0xffffffeb: return 0x4a000000;
    case 0xffffffea: return 0x4a800000;
    case 0xffffffe9: return 0x4b000000;
    case 0xffffffe8: return 0x4b800000;
    case 0xffffffe7: return 0x4c000000;
    case 0xffffffe6: return 0x4c800000;
    case 0xffffffe5: return 0x4d000000;
    case 0xffffffe4: return 0x4d800000;
    case 0xffffffe3: return 0x4e000000;
    case 0xffffffe2: return 0x4e800000;
    case 0xffffffe1: return 0x4f000000;
    case 0xffffffe0: return 0x4f800000;
    case 0xffffffdf: return 0x50000000;
    case 0xffffffde: return 0x50800000;
    case 0xffffffdd: return 0x51000000;
    case 0xffffffdc: return 0x51800000;
    case 0xffffffdb: return 0x52000000;
    case 0xffffffda: return 0x52800000;
    case 0xffffffd9: return 0x53000000;
    case 0xffffffd8: return 0x53800000;
    case 0xffffffd7: return 0x54000000;
    case 0xffffffd6: return 0x54800000;
    case 0xffffffd5: return 0x55000000;
    case 0xffffffd4: return 0x55800000;
    case 0xffffffd3: return 0x56000000;
    case 0xffffffd2: return 0x56800000;
    case 0xffffffd1: return 0x57000000;
    case 0xffffffd0: return 0x57800000;
    case 0xffffffcf: return 0x58000000;
    case 0xffffffce: return 0x58800000;
    case 0xffffffcd: return 0x59000000;
    case 0xffffffcc: return 0x59800000;
    case 0xffffffcb: return 0x5a000000;
    case 0xffffffca: return 0x5a800000;
    case 0xffffffc9: return 0x5b000000;
    case 0xffffffc8: return 0x5b800000;
    case 0xffffffc7: return 0x5c000000;
    case 0xffffffc6: return 0x5c800000;
    case 0xffffffc5: return 0x5d000000;
    case 0xffffffc4: return 0x5d800000;
    case 0xffffffc3: return 0x5e000000;
    case 0xffffffc2: return 0x5e800000;
    case 0xffffffc1: return 0x5f000000;
    case 0xffffffc0: return 0x5f800000;
    case 0xffffffbf: return 0x60000000;
    case 0xffffffbe: return 0x60800000;
    case 0xffffffbd: return 0x61000000;
    case 0xffffffbc: return 0x61800000;
    case 0xffffffbb: return 0x62000000;
    case 0xffffffba: return 0x62800000;
    case 0xffffffb9: return 0x63000000;
    case 0xffffffb8: return 0x63800000;
    case 0xffffffb7: return 0x64000000;
    case 0xffffffb6: return 0x64800000;
    case 0xffffffb5: return 0x65000000;
    case 0xffffffb4: return 0x65800000;
    case 0xffffffb3: return 0x66000000;
    case 0xffffffb2: return 0x66800000;
    case 0xffffffb1: return 0x67000000;
    case 0xffffffb0: return 0x67800000;
    case 0xffffffaf: return 0x68000000;
    case 0xffffffae: return 0x68800000;
    case 0xffffffad: return 0x69000000;
    case 0xffffffac: return 0x69800000;
    case 0xffffffab: return 0x6a000000;
    case 0xffffffaa: return 0x6a800000;
    case 0xffffffa9: return 0x6b000000;
    case 0xffffffa8: return 0x6b800000;
    case 0xffffffa7: return 0x6c000000;
    case 0xffffffa6: return 0x6c800000;
    case 0xffffffa5: return 0x6d000000;
    case 0xffffffa4: return 0x6d800000;
    case 0xffffffa3: return 0x6e000000;
    case 0xffffffa2: return 0x6e800000;
    case 0xffffffa1: return 0x6f000000;
    case 0xffffffa0: return 0x6f800000;
    case 0xffffff9f: return 0x70000000;
    case 0xffffff9e: return 0x70800000;
    case 0xffffff9d: return 0x71000000;
    case 0xffffff9c: return 0x71800000;
    case 0xffffff9b: return 0x72000000;
    case 0xffffff9a: return 0x72800000;
    case 0xffffff99: return 0x73000000;
    case 0xffffff98: return 0x73800000;
    case 0xffffff97: return 0x74000000;
    case 0xffffff96: return 0x74800000;
    case 0xffffff95: return 0x75000000;
    case 0xffffff94: return 0x75800000;
    case 0xffffff93: return 0x76000000;
    case 0xffffff92: return 0x76800000;
    case 0xffffff91: return 0x77000000;
    case 0xffffff90: return 0x77800000;
    case 0xffffff8f: return 0x78000000;
    case 0xffffff8e: return 0x78800000;
    case 0xffffff8d: return 0x79000000;
    case 0xffffff8c: return 0x79800000;
    case 0xffffff8b: return 0x7a000000;
    case 0xffffff8a: return 0x7a800000;
    case 0xffffff89: return 0x7b000000;
    case 0xffffff88: return 0x7b800000;
    case 0xffffff87: return 0x7c000000;
    case 0xffffff86: return 0x7c800000;
    case 0xffffff85: return 0x7d000000;
    case 0xffffff84: return 0x7d800000;
    case 0xffffff83: return 0x7e000000;
    case 0xffffff82: return 0x7e800000;
    case 0xffffff81: return 0x7f000000;
  }
  return 0x7f800000;
}
