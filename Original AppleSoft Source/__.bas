     5  HOME 
   580  CJ = 3
   590  REM 
   600  GOSUB 990
   601  IF C < > 3 THEN 
          D%(3) = 3
   610  GOSUB 1750:
        VTAB 24:
        HTAB 1
   622  PRINT D$;"NOMON C,I,O":
        VTAB PEEK (37):
        CALL - 868
   623  IF T%(C) = 0 THEN 
          T%(C) = 1:
          T     = 40:
          GOSUB 3750
   625  IF C = 15 AND WR = 1 THEN 
          PRINT "A PASSERBY KILLS ME FOR WEARING MY KINKYRUBBER IN PUBLIC!":
          GOTO 5000
   630  GOTO 2000
   990  POKE 34,0:
        VTAB 1:
        HTAB 1:
        CALL - 868
  1000  ON C GOTO 1010,1020,1030,1040,1050,1060,1070,1080,1090,1100,1110,1120,1130,1140,1150,1160,1170,1180,1190,1200,1210,1220,1230,1240,1250,1260,1270,1280,1290,1300
  1010  PRINT "I'M IN A HALLWAY.":
        RETURN 
  1020  PRINT "I'M IN A BATHROOM.":
        RETURN 
  1030  PRINT "I'M IN A SLEAZY BAR.":
        RETURN 
  1040  PRINT "I'M ON A STREET OUTSIDE THE BAR.":
        RETURN 
  1050  PRINT "I'M IN THE BACKROOM.":
        RETURN 
  1060  PRINT "I'M IN A FILTHY DUMPSTER!":
        RETURN 
  1070  PRINT "I'M INSIDE THE ROOM I BROKE INTO!":
        RETURN 
  1080  PRINT "I'M ON A WINDOW LEDGE.":
        RETURN 
  1090  PRINT "I'M IN A HOOKER'S BEDROOM.":
        RETURN 
  1100  PRINT "I'M ON A HOOKER'S BALCONY.":
        RETURN 
  1110  PRINT "I'M ON A DOWNTOWN STREET.":
        RETURN 
  1120  PRINT "I'M IN A QUICKIE MARRIAGE CENTER.":
        RETURN 
  1130  PRINT "I'M IN THE MAIN CASINO ROOM.":
        RETURN 
  1140  PRINT "I'M IN THE '21 ROOM'.":
        RETURN 
  1150  PRINT "I'M IN THE LOBBY OF THE HOTEL.":
        RETURN 
  1160  PRINT "I'M IN THE HONEYMOON SUITE.":
        RETURN 
  1170  PRINT "I'M IN THE HOTEL HALLWAY.":
        RETURN 
  1180  PRINT "I'M ON THE HONEYMOONER'S BALCONY.":
        RETURN 
  1190  PRINT "I'M AT THE HOTEL DESK.":
        RETURN 
  1200  PRINT "I'M IN A TELEPHONE BOOTH.":
        RETURN 
  1210  PRINT "I'M IN THE DISCO.":
        RETURN 
  1220  PRINT "I'M ON A RESIDENTIAL STREET.":
        RETURN 
  1230  PRINT "I'M IN THE DISCO'S ENTRANCE.":
        RETURN 
  1240  PRINT "I'M IN THE PHARMACY.":
        RETURN 
  1250  PRINT "I'M IN THE PENTHOUSE FOYER.":
        RETURN 
  1260  PRINT "I'M IN THE JACUZZI!":
        RETURN 
  1270  PRINT "I'M IN THE KITCHEN.":
        RETURN 
  1280  PRINT "I'M IN THE GARDEN.":
        RETURN 
  1290  PRINT "I'M IN THE LIVING ROOM.":
        RETURN 
  1300  PRINT "I'M ON THE PENTHOUSE PORCH.":
        RETURN 
  1500  IF ST < > 2 THEN 
          ST = 0
  1510  PRINT :
        PRINT :
        PRINT "OTHER AREAS ARE: ";
  1520  ON D%(C) GOSUB 1600,1603,1606,1609,1612,1615,1618,1621,1624,1627,1630,1633,1636,1639,1642,1645,1648,1651,1654
  1534  PRINT ":::::::::::::::::::::::::::::::::::::::"
  1535  CB = PEEK (37) + 1
  1536  IF CJ < PEEK (37) THEN 
          1542
  1538  FOR X = CB TO CJ:
          VTAB X:
          CALL - 868:
        NEXT 
  1542  POKE 34,CB:
        POKE 35,24:
        CJ = CB
  1548  RETURN 
  1600  PRINT "NORTH AND EAST":
        RETURN 
  1603  PRINT "SOUTH":
        RETURN 
  1606  PRINT "NORTH AND WEST":
        RETURN 
  1609  PRINT "NORTH, EAST AND WEST":
        RETURN 
  1612  PRINT "WEST AND UP":
        RETURN 
  1615  PRINT "WEST":
        RETURN 
  1618  PRINT "NORTH":
        RETURN 
  1621  PRINT "SOUTH AND EAST":
        RETURN 
  1624  PRINT "NORTH AND DOWN":
        RETURN 
  1627  PRINT "SOUTH AND DOWN":
        RETURN 
  1630  PRINT "SOUTH, EAST AND WEST":
        RETURN 
  1633  PRINT "EAST AND UP":
        RETURN 
  1636  PRINT "SOUTH, WEST AND DOWN":
        RETURN 
  1639  PRINT "WEST AND DOWN":
        RETURN 
  1642  PRINT "SOUTH AND WEST":
        RETURN 
  1645  PRINT "BY MAGIC!":
        RETURN 
  1648  PRINT "NORTH, EAST AND UP":
        RETURN 
  1651  PRINT "UP":
        RETURN 
  1654  PRINT "EAST":
        RETURN 
  1750  REM  VIS ITEMS RTN
  1754  POKE 34,2:
        POKE 35,CJ:
        HOME :
        POKE 35,24
  1758  PRINT "ITEMS IN SIGHT ARE: ";
  1762  IF V1%(C,1) = 0 THEN 
          PRINT :
          PRINT "NOTHING AT ALL!!!!!":
          GOTO 1500
  1766  FOR X = 2 TO V1%(C,1) + 1
  1774    IF X < > 2 THEN 
            PRINT ", ";
  1778    ON V1%(C,X) GOSUB 0,0,0,0,0,0,0,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1881,1815,1816,1817,1818
  1779    VV = V1%(C,X) - 27:
          IF VV < 1 THEN 
            1790
  1780    ON VV GOSUB 1819,1878,1820,0,1821,1822,1823,1824,1825,0,0,0,0,1827,1828,1826,1829,1830,1831,1862,1834,1835,1850,1851,1852,1853
  1782    VC = V1%(C,X) - 52:
          IF VC < 1 THEN 
            1790
  1786    ON VC GOSUB 1853,1854,1855,1856,1857,1858,1859,1860,1861,0,0,1864,1865,1866,1867,1868,1870,0,0,1871,1872,1873,1874,1875,1876,0,0,0,1877,0,1879,1880
  1790    IF LEN (VC$) < (38 - PEEK (36)) THEN 
            PRINT VC$;:
            NEXT 
  1792  IF V1%(C,1) + 1 < X THEN 
          1796
  1794  PRINT :
        CALL - 868:
        PRINT VC$;:
        NEXT 
  1796  IF C = 31 THEN 
          RETURN 
  1797  GOTO 1500
  1800  VC$ = "A DESK":
        RETURN 
  1801  VC$ = "A WASHBASIN":
        RETURN 
  1802  VC$ = "GRAFITTI":
        RETURN 
  1803  VC$ = "A MIRROR":
        RETURN 
  1804  VC$ = "A TOILET":
        RETURN 
  1805  VC$ = "A BUSINESSMAN":
        RETURN 
  1806  VC$ = "A BUTTON":
        RETURN 
  1807  VC$ = "THE BARTENDER":
        RETURN 
  1808  VC$ = "A BIG DUDE!":
        RETURN 
  1809  VC$ = "A FUNKY HOOKER":
        RETURN 
  1810  VC$ = "A BILLBOARD":
        RETURN 
  1811  VC$ = "A PREACHER":
        RETURN 
  1812  VC$ = "A TV":
        RETURN 
  1813  VC$ = "SLOT MACHINES":
        RETURN 
  1814  VC$ = "CARDS":
        RETURN 
  1815  VC$ = "AN ASHTRAY":
        RETURN 
  1816  VC$ = "A VOLUPTOUS BLONDE":
        RETURN 
  1817  VC$ = "A BED":
        RETURN 
  1818  VC$ = "A BUM":
        RETURN 
  1819  VC$ = "A PEEP HOLE":
        RETURN 
  1820  VC$ = "A DOOR TO THE WEST":
        RETURN 
  1821  VC$ = "A WAITRESS":
        RETURN 
  1822  VC$ = "A TABLE":
        RETURN 
  1823  VC$ = "A TELEPHONE":
        RETURN 
  1824  VC$ = "A CLOSET":
        RETURN 
  1825  VC$ = "A SINK":
        RETURN 
  1826  VC$ = "AN ELEVATOR":
        RETURN 
  1827  VC$ = "A DEALER":
        RETURN 
  1828  VC$ = "A CABINET":
        RETURN 
  1829  VC$ = "BUSHES":
        RETURN 
  1830  VC$ = "A TREE":
        RETURN 
  1831  VC$ = "A WINDOW":
        RETURN 
  1834  VC$ = "A SIGN":
        RETURN 
  1835  VC$ = "A GIRL":
        RETURN 
  1850  VC$ = "A NEWSPAPER":
        RETURN 
  1851  VC$ = "A WEDDING RING":
        RETURN 
  1852  VC$ = "A SHOT OF WHISKEY":
        RETURN 
  1853  VC$ = "A BEER":
        RETURN 
  1855  VC$ = "A HAMMER":
        RETURN 
  1856  VC$ = "GARBAGE":
        RETURN 
  1857  VC$ = "FLOWERS":
        RETURN 
  1858  VC$ = "THE CORE OF AN APPLE":
        RETURN 
  1859  VC$ = "SEEDS":
        RETURN 
  1860  VC$ = "CANDY":
        RETURN 
  1861  VC$ = "PILLS":
        RETURN 
  1862  VC$ = "A PLANT":
        RETURN 
  1864  VC$ = "A PASSCARD":
        RETURN 
  1865  VC$ = "A RADIO":
        RETURN 
  1866  VC$ = "A POCKET KNIFE":
        RETURN 
  1868  VC$ = "ADVENTUREBOY MAGAZINE":
        RETURN 
  1870  VC$ = "A RUBBER":
        RETURN 
  1871  VC$ = "A BOTTLE OF WINE":
        RETURN 
  1872  VC$ = "A WALLET":
        RETURN 
  1873  VC$ = "AN INFLATABLE DOLL":
        RETURN 
  1874  VC$ = "AN APPLE":
        RETURN 
  1875  VC$ = "A PITCHER":
        RETURN 
  1876  VC$ = "A STOOL":
        RETURN 
  1877  VC$ = "A ROPE":
        RETURN 
  1878  VC$ = "A DISPLAY RACK":
        RETURN 
  1879  VC$ = "A MUSHROOM":
        RETURN 
  1880  VC$ = "A REMOTE CONTROL UNIT":
        RETURN 
  1881  VC$ = "A CURTAIN":
        RETURN 
  2000  VTAB 24:
        HTAB 1:
        V   = 0:
        N   = 0:
        VB$ = "":
        NN$ = ""
  2001  ONERR GOTO 2002:
        NEXT :
        NEXT :
        NEXT :
        NEXT :
        NEXT 
  2002  ONERR GOTO 2003:
        POP :
        POP :
        POP :
        POP :
        POP 
  2003  ONERR GOTO 8000:
        LZ = 0:
        POKE - 16368,0
  2004  IF C = 30 AND TE = 1 THEN 
          PRINT "THE TELEPHONE RINGS...."
  2005  PRINT :
        INPUT "WHAT SHALL I DO? ";IN$
  2010  IF LEN (IN$) = 0 THEN 
          2400
  2011  IF IN$ = "SAVE GAME" THEN 
          PRINT D$;"BLOAD CHAIN,A520":
          CALL 520" LOG LOG LOG "
  2012  IF IN$ = "QUIT" THEN 
          IN$ = "Q"
  2014  IF IN$ = "SCORE" THEN 
          PRINT "YOUR SCORE IS ";SC;" OUT OF '3'":
          GOTO 2000
  2015  IF RR = 1 AND LEN (IN$) = 1 THEN 
          6240
  2020  IF IN$ = "N" THEN 
          2500
  2030  IF IN$ = "S" THEN 
          2600
  2040  IF IN$ = "E" THEN 
          2700
  2050  IF IN$ = "W" THEN 
          2800
  2060  IF IN$ = "U" THEN 
          2900
  2070  IF IN$ = "D" THEN 
          3000
  2080  IF IN$ < > "Q" THEN 
          2090
  2081  PRINT "SAVE GAME?? (Y/N)":
        INPUT IN$:
        POKE 34,0:
        IF LEFT$ (IN$,1) = "Y" THEN 
          IN$ = "SAVE GAME":
          GOTO 2011
  2082  HOME :
        NEW :
        END 
  2090  IF IN$ = "I" THEN 
          3500
  2100  IF RIGHT$ (IN$,1) = " " THEN 
          IN$ = LEFT$ (IN$, LEN (IN$) - 1):
          GOTO 2100
  2105  IF IN$ = "LOOK" THEN 
          T = 0:
          GOTO 3750
  2110  FOR X = 1 TO 20
  2120    IF MID$ (IN$,X,1) = " " THEN 
            2130
  2122    IF LEN (IN$) = X THEN 
            VB$ = IN$:
            GOTO 2195
  2125  NEXT 
  2130  VB$ = LEFT$ (IN$,X - 1)
  2140  NN$ = RIGHT$ (IN$, LEN (IN$) - X)
  2155  IF LEFT$ (NN$,1) = " " THEN 
          NN$ = RIGHT$ (NN$, LEN (NN$) - 1):
          GOTO 2155
  2195  QVB$ = VB$:
        QNN$ = NN$
  2196  IF LEN (NN$) > 3 THEN 
          NN$ = LEFT$ (NN$,4)
  2197  IF LEN (VB$) > 3 THEN 
          VB$ = LEFT$ (VB$,4)
  2198  IF LEN (NN$) > 3 THEN 
          NN$ = LEFT$ (NN$,4)
  2200  IF VB$ = "GO" THEN 
          V = 1
  2201  IF VB$ = "HAIL" THEN 
          V = 2
  2202  IF VB$ = "TAKE" OR VB$ = "GET" OR VB$ = "GRAB" THEN 
          V = 3
  2204  IF VB$ = "DROP" OR VB$ = "LEAV" OR VB$ = "PLAN" OR VB$ = "GIVE" THEN 
          V = 4
  2206  IF VB$ = "LOOK" OR VB$ = "SEAR" OR VB$ = "EXAM" OR VB$ = "READ" THEN 
          V = 5
  2207  IF VB$ = "FLUS" THEN 
          V = 6
  2208  IF VB$ = "OPEN" OR VB$ = "PULL" THEN 
          V = 7
  2210  IF VB$ = "INFL" THEN 
          V = 8
  2211  IF VB$ = "PLAY" THEN 
          V = 9
  2212  IF VB$ = "PRES" OR VB$ = "PUSH" THEN 
          V = 10
  2213  IF VB$ = "ENTE" THEN 
          V = 11
  2214  IF VB$ = "EAT" THEN 
          V = 12
  2215  IF VB$ = "DRIN" THEN 
          V = 13
  2216  IF VB$ = "BUY" OR VB$ = "ORDE" THEN 
          V = 14
  2217  IF VB$ = "CLIM" THEN 
          V = 15
  2218  IF VB$ = "WATE" THEN 
          V = 16
  2219  IF VB$ = "FILL" THEN 
          V = 17
  2220  IF VB$ = "POUR" THEN 
          V = 18
  2221  IF VB$ = "LIST" THEN 
          V = 19
  2222  IF VB$ = "CLOS" THEN 
          V = 20
  2223  IF VB$ = "JUMP" THEN 
          V = 21
  2224  IF VB$ = "MARR" THEN 
          V = 23
  2225  IF VB$ = "FUCK" OR VB$ = "SEDU" OR VB$ = "RAPE" OR VB$ = "SCRE" THEN 
          V = 24
  2226  IF VB$ = "WEAR" OR VB$ = "USE" THEN 
          V = 25
  2227  IF VB$ = "TV" THEN 
          V = 22
  2228  IF VB$ = "ANSW" THEN 
          V = 27
  2229  IF VB$ = "CALL" OR VB$ = "DIAL" THEN 
          V = 26
  2230  IF VB$ = "BREA" OR VB$ = "SMAS" THEN 
          V = 28
  2231  IF VB$ = "CUT" THEN 
          V = 29
  2232  IF VB$ = "DANC" THEN 
          V = 30
  2233  IF VB$ = "KILL" THEN 
          V = 31
  2234  IF VB$ = "PAY" THEN 
          V = 32
  2235  IF VB$ = "SMOK" THEN 
          V = 33
  2236  IF VB$ = "SHOW" THEN 
          V = 34
  2237  IF VB$ = "SMEL" THEN 
          V = 35
  2291  IF VB$ = "HELP" THEN 
          PRINT "SORRY, THAT DOES NOT COMPUTE":
          GOTO 2000
  2293  IF NN$ = "LADY" AND V < > 0 THEN 
          PRINT "THAT'S NO LADY!!! THAT'S MY SISTER!!!!":
          GOTO 2000
  2295  IF VB$ = "KISS" THEN 
          PRINT "";:
          PRINT "DON'T DO THAT!!!! IT GETS ME EXCITED!!":
          GOTO 2000
  2297  IF VB$ = "STAB" THEN 
          PRINT "OK- WARMONGER!":
          FOR X = 1 TO 1000:
          NEXT :
          PRINT "PARRY!!":
          FOR X = 1 TO 500:
          NEXT :
          PRINT "THRUST!!!":
          FOR X = 1 TO 1000:
          NEXT :
          FLASH :
          PRINT "I JUST GOT MYSELF!!":
          NORMAL :
          GOTO 5000
  2298  IF VB$ = "SAY" THEN 
          PRINT "OK":
          PRINT QNN$:
          GOTO 2000
  2299  IF VB$ = "TKAE" OR VB$ = "TAEK" THEN 
          PRINT "LEARN TO SPELL IDIOT!":
          GOTO 2000
  2300  IF NN$ = "NORT" THEN 
          N = 1
  2301  IF NN$ = "SOUT" THEN 
          N = 2
  2302  IF NN$ = "EAST" THEN 
          N = 3
  2303  IF NN$ = "WEST" THEN 
          N = 4
  2304  IF NN$ = "UP" THEN 
          N = 5
  2305  IF NN$ = "DOWN" THEN 
          N = 6
  2306  IF NN$ = "TAXI" OR NN$ = "CAB" THEN 
          N = 7
  2307  IF NN$ = "DESK" OR NN$ = "DRAW" THEN 
          N = 8
  2308  IF NN$ = "WASH" OR NN$ = "BASI" THEN 
          N = 9
  2309  IF NN$ = "GRAF" THEN 
          N = 10
  2310  IF NN$ = "MIRR" THEN 
          N = 11
  2311  IF NN$ = "TOIL" THEN 
          N = 12
  2312  IF NN$ = "BUSI" THEN 
          N = 13
  2313  IF NN$ = "BUTT" THEN 
          N = 14
  2314  IF NN$ = "BART" THEN 
          N = 15
  2315  IF NN$ = "DUDE" OR NN$ = "PIMP" THEN 
          N = 16
  2316  IF NN$ = "HOOK" THEN 
          N = 17
  2317  IF NN$ = "BILL" THEN 
          N = 18
  2318  IF NN$ = "PREA" THEN 
          N = 19
  2319  IF NN$ = "TV" THEN 
          N = 20
  2320  IF NN$ = "SLOT" OR NN$ = "MACH" THEN 
          N = 21
  2321  IF NN$ = "CARD" THEN 
          N = 22
  2322  IF NN$ = "CURT" THEN 
          N = 23
  2323  IF NN$ = "ASHT" THEN 
          N = 24
  2324  IF NN$ = "BLON" THEN 
          N = 25
  2325  IF NN$ = "BED" THEN 
          N = 26
  2326  IF NN$ = "BUM" THEN 
          N = 27
  2327  IF NN$ = "HOLE" THEN 
          N = 28
  2328  IF NN$ = "DISP" OR NN$ = "RACK" THEN 
          N = 29
  2329  IF NN$ = "DOOR" THEN 
          N = 30
  2330  IF NN$ = "MUSH" THEN 
          N = 83
  2331  IF NN$ = "WAIT" THEN 
          N = 32
  2332  IF NN$ = "TABL" THEN 
          N = 33
  2333  IF NN$ = "TELE" OR NN$ = "PHON" THEN 
          N = 34
  2334  IF NN$ = "CLOS" THEN 
          N = 35
  2335  IF NN$ = "SINK" THEN 
          N = 36
  2336  IF NN$ = "21" THEN 
          N = 37
  2337  IF NN$ = "ON" THEN 
          N = 38
  2338  IF NN$ = "OFF" THEN 
          N = 39
  2339  IF NN$ = "INVE" THEN 
          N = 40
  2340  IF NN$ = "DEAL" THEN 
          N = 41
  2341  IF NN$ = "CABI" THEN 
          N = 42
  2342  IF NN$ = "ELEV" THEN 
          N = 43
  2343  IF NN$ = "PLAN" THEN 
          N = 47
  2344  IF NN$ = "BUSH" THEN 
          N = 44
  2345  IF NN$ = "TREE" THEN 
          N = 45
  2346  IF NN$ = "WIND" THEN 
          N = 46
  2347  IF NN$ = "SIGN" THEN 
          N = 48
  2348  IF NN$ = "GIRL" OR NN$ = "EVE" THEN 
          N = 49
  2349  IF NN$ = "NEWS" OR NN$ = "PAPE" THEN 
          N = 50
  2350  IF NN$ = "RING" THEN 
          N = 51
  2351  IF NN$ = "WHIS" OR NN$ = "SHOT" THEN 
          N = 52
  2352  IF NN$ = "BEER" THEN 
          N = 53
  2353  IF NN$ = "BAG" THEN 
          N = 54
  2354  IF NN$ = "HAMM" THEN 
          N = 55
  2355  IF NN$ = "GARB" OR NN$ = "TRAS" THEN 
          N = 56
  2356  IF NN$ = "FLOW" THEN 
          N = 57
  2357  IF NN$ = "CORE" THEN 
          N = 58
  2358  IF NN$ = "SEED" THEN 
          N = 59
  2359  IF NN$ = "CAND" THEN 
          N = 60
  2360  IF NN$ = "PILL" THEN 
          N = 61
  2361  IF NN$ = "DISC" THEN 
          N = 62
  2363  IF NN$ = "PASS" THEN 
          N = 64
  2364  IF NN$ = "RADI" THEN 
          N = 65
  2365  IF NN$ = "KNIF" THEN 
          N = 66
  2367  IF NN$ = "MAGA" THEN 
          N = 68
  2368  IF NN$ = "RUBB" THEN 
          N = 69
  2371  IF NN$ = "WINE" THEN 
          N = 72
  2372  IF NN$ = "WALL" THEN 
          N = 73
  2373  IF NN$ = "DOLL" THEN 
          N = 74
  2374  IF NN$ = "APPL" THEN 
          N = 75
  2375  IF NN$ = "PITC" THEN 
          N = 76
  2376  IF NN$ = "STOO" THEN 
          N = 77
  2377  IF NN$ = "SHIT" THEN 
          N = 87
  2378  IF NN$ = "WATE" THEN 
          N = 82
  2379  IF NN$ = "YOU" THEN 
          N = 86
  2380  IF NN$ = "ROPE" THEN 
          N = 81
  2381  IF NN$ = "INVE" THEN 
          N = 85
  2382  IF NN$ = "RACK" THEN 
          N = 29
  2383  IF NN$ = "CONT" OR NN$ = "UNIT" THEN 
          N = 84
  2384  IF V = 21 THEN 
          5500
  2385  IF V = 0 THEN 
          PRINT "I DON'T KNOW HOW TO ";QVB$;" SOMETHING!":
          GOTO 2000
  2386  IF V = 26 THEN 
          5950
  2387  IF V = 30 THEN 
          6250
  2388  IF LEN (QNN$) = 0 THEN 
          PRINT "GIMME A NOUN!!!!":
          GOTO 2000
  2389  IF N = 0 THEN 
          PRINT "I DON'T KNOW WHAT A ";QNN$;" IS!!":
          GOTO 2000
  2390  ON V GOTO 3100,3120,3200,3250,3600,4500,4600,4650,4700,4800,4850,4900,4950,5150,5200,5250,5300,5350,5400,5450,5500,5550,5700,5800,5900,5950,6000,6150,6200,6250,6300,6350,6400,6450,6500,6600,6700
  2400  PRINT "HUH?":
        GOTO 2000
  2500  IF D%(C) = 1 THEN 
          2550
  2505  IF D%(C) = 3 THEN 
          2550
  2507  IF D%(C) = 4 THEN 
          2550
  2509  IF D%(C) = 7 THEN 
          2550
  2511  IF D%(C) = 9 THEN 
          2550
  2513  IF D%(C) = 17 THEN 
          2550
  2520  PRINT NG$:
        GOTO 2000
  2550  IF C = 9 AND SC = 0 THEN 
          PRINT "THE HOOKER SAYS 'DON'T GO THERE....DO ME FIRST!!!!'":
          GOTO 2000
  2560  C = C + 1:
        GOTO 600
  2600  IF D%(C) = 2 THEN 
          2650
  2605  IF D%(C) = 8 THEN 
          2650
  2610  IF D%(C) = 10 THEN 
          2650
  2615  IF D%(C) = 11 THEN 
          2650
  2620  IF D%(C) = 13 THEN 
          2650
  2625  IF D%(C) = 15 THEN 
          2650
  2630  PRINT NG$:
        GOTO 2000
  2650  IF C = 17 AND GC < 5 THEN 
          PRINT "THE DOOR IS LOCKED SHUT!":
          GOTO 2000
  2660  C = C - 1:
        GOTO 600
  2700  IF D%(C) = 1 THEN 
          2750
  2705  IF D%(C) = 4 THEN 
          2750
  2710  IF D%(C) = 8 THEN 
          2750
  2715  IF D%(C) = 11 THEN 
          2750
  2720  IF D%(C) = 17 THEN 
          2750
  2725  IF D%(C) = 12 THEN 
          2750
  2727  IF D%(C) = 19 THEN 
          2750
  2730  PRINT NG$:
        GOTO 2000
  2750  SS = 0:
        C  = C + 2:
        GOTO 600
  2800  IF D%(C) = 3 THEN 
          2850
  2805  IF D%(C) = 4 THEN 
          2850
  2810  IF D%(C) = 5 THEN 
          2850
  2815  IF D%(C) = 6 THEN 
          2850
  2820  IF D%(C) = 11 THEN 
          2850
  2830  IF D%(C) = 13 THEN 
          2850
  2835  IF D%(C) = 14 THEN 
          2850
  2840  IF D%(C) = 15 THEN 
          2850
  2845  PRINT NG$:
        GOTO 2000
  2850  IF C < > 10 THEN 
          2852
  2851  IF UR < > 1 THEN 
          5510
  2852  IF C = 23 AND SS = 0 THEN 
          PRINT "THE DOOR IS CLOSED!":
          GOTO 2000
  2853  D%(23) = 2:
        C      = C - 2:
        GOTO 600
  2900  IF D%(C) = 5 THEN 
          2950
  2905  IF D%(C) = 12 THEN 
          2950
  2910  IF D%(C) = 17 THEN 
          2950
  2915  IF D%(C) = 18 THEN 
          2950
  2920  PRINT NG$:
        GOTO 2000
  2950  IF C < > 5 OR SC < > 0 THEN 
          2953
  2951  IF M < 10 THEN 
          PRINT "THE PIMP SAYS I CAN'T UNTIL I GET $1000":
          GOTO 2000
  2952  M = M - 10:
        PRINT "THE PIMP TAKES $1000 AND SAYS OK":
        GOTO 2960
  2953  IF C = 5 AND BD = 0 THEN 
          PRINT "THE PIMP SAYS 'NO WAY!!!! LEAVE MY GIRL ALONE!":
          GOTO 2000
  2960  C = C + 4:
        GOTO 600
  3000  IF D%(C) = 9 THEN 
          3050
  3005  IF D%(C) = 10 THEN 
          3050
  3010  IF D%(C) = 13 THEN 
          3050
  3012  IF D%(C) = 14 THEN 
          3050
  3020  PRINT NG$:
        GOTO 2000
  3050  IF UR = 1 THEN 
          UR = 0
  3055  C = C - 4:
        GOTO 600
  3100  IF RR = 1 THEN 
          6240
  3101  IF N = 87 THEN 
          PRINT "ON YOUR FACE, ASSHOLE!!!":
          GOTO 2000
  3102  IF N = 1
          GOTO 2500
  3105  IF N = 2
          GOTO 2600
  3110  IF N = 3
          GOTO 2700
  3115  IF N = 4
          GOTO 2800
  3117  IF N = 5
          GOTO 2900
  3118  IF N = 6
          GOTO 3000
  3119  PRINT NG$:
        GOTO 2000
  3120  IF N < > 7 THEN 
          PRINT "WHO ARE YOU KIDDING? YOU'RE PULLING AT  STRAWS, FOOL!":
          GOTO 2000
  3129  IF C = 22 OR C = 11 OR C = 4 THEN 
          T = 6:
          GOSUB 5100:
          GOTO 3134
  3132  PRINT "I'M NOT ON A STREET, FOOL!!!":
        GOTO 2000
  3134  OC = C:
        INPUT IN$
  3140  IF LEFT$ (IN$,4) = "DISC" THEN 
          C = 22
  3150  IF LEFT$ (IN$,4) = "CASI" THEN 
          C = 11
  3160  IF IN$ = "BAR" THEN 
          C = 4
  3165  IF OC = C THEN 
          PRINT "HUH? HAIL ANOTHER!":
          GOTO 2000
  3170  FOR X = 1 TO V1%(31,1) + 1:
          IF V1%(31,X) = 72 THEN 
            3190
  3175  NEXT 
  3180  PRINT "WE ARRIVE AND I GET OUT!":
        GOTO 600
  3190  SPEED=20:
        T = 28:
        GOSUB 5100:
        SPEED=255:
        PRINT :
        PRINT "WHAT SHALL I DO? ":
        FOR X = 1 TO 1000:
        NEXT 
  3195  POKE 34,0:
        PRINT "THE IDIOT CAB DRIVER BACKS OVER ME AND  KILLS ME!!!!!!! PERMANENTLY!!!":
        NEW :
        END 
  3200  IF N = 40 THEN 
          3500
  3201  IF N = 85 THEN 
          3500
  3202  IF N < 50 THEN 
          PRINT "I CAN'T DO THAT":
          GOTO 2000
  3203  IF N = 82 THEN 
          5300
  3204  IF C = 24 AND N = 69 OR N = 68 THEN 
          PRINT "THE MAN SAYS SHOPLIFTER!! AND SHOOTS ME":
          GOTO 5000
  3205  GOSUB 6100:
        GOSUB 3206:
        PRINT "OK":
        GOTO 3230
  3206  IF V1%(31,1) > 7 THEN 
          PRINT "I'M CARRYING TOO MUCH!!!":
          GOTO 2000
  3207  T = 31:
        F = C
  3210  FOR X = 2 TO V1%(F,1) + 1
  3215    IF N = V1%(F,X) THEN 
            RETURN 
  3220  NEXT 
  3225  PRINT "I DON'T SEE IT HERE!!":
        POP :
        GOTO 2000
  3230  IF F = 31 THEN 
          GOSUB 5650
  3234  V1%(T,V1%(T,1) + 2) = N:
        V1%(T,1)            = V1%(T,1) + 1
  3235  IF X = V1%(F,1) + 1 THEN 
          V1%(F,1) = V1%(F,1) - 1:
          GOTO 3240
  3236  V1%(F,X) = V1%(F,V1%(F,1) + 1):
        V1%(F,1) = V1%(F,1) - 1:
        IF V1%(F,1) < 0 THEN 
          V1%(F,1) = 0
  3240  GOTO 610
  3250  F = 31:
        T = C
  3255  GOSUB 3260:
        GOTO 3230
  3260  IF V1%(F,1) = 0 THEN 
          3285
  3265  FOR X = 2 TO V1%(F,1) + 1
  3270    IF N = V1%(F,X) THEN 
            RETURN 
  3280  NEXT 
  3285  PRINT "I DON'T HAVE IT!!":
        POP :
        GOTO 2000
  3500  PRINT "I'M CARRYING THE FOLLOWING:"
  3510  IF V1%(31,1) = 0 THEN 
          PRINT "NOTHING!!":
          GOTO 2000
  3515  OC = C:
        C  = 31:
        GOSUB 1762:
        C = OC:
        PRINT :
        GOTO 2000
  3600  REM  LOOK RTN
  3602  IF N < 7 THEN 
          PRINT "I'M TOO NEARSIGHTED, SORRY.......":
          GOTO 2000
  3605  FOR X = 2 TO V1%(C,1) + 1
  3606    IF V1%(C,X) = N THEN 
            3620
  3607  NEXT 
  3610  FOR X = 2 TO V1%(31,1) + 1
  3611    IF V1%(31,X) = N THEN 
            3620
  3612  NEXT 
  3615  PRINT "IT'S NOT HERE!!!!!":
        GOTO 2000
  3620  IF N = 8 AND DE = 0 THEN 
          PRINT "IT'S DRAWER IS SHUT":
          GOTO 2000
  3622  IF N = 8 AND DE = 1 THEN 
          PRINT SS$:
          F  = 32:
          T  = C:
          N  = 50:
          DE = 2:
          GOTO 3230
  3630  IF N = 9 AND TI = 0 THEN 
          PRINT SS$:
          T  = 2:
          F  = 32:
          TI = 1:
          N  = 51:
          GOTO 3230
  3632  IF N = 9 AND TI = 1 THEN 
          PRINT "DEAD COCKROACHES....":
          GOTO 2000
  3635  IF N = 10 THEN 
          GOTO 3800
  3640  IF N = 11 THEN 
          PRINT "THERE'S A PERVERT LOOKING BACK AT ME!!!":
          GOTO 2000
  3645  IF N = 12 THEN 
          PRINT "HASN'T BEEN FLUSHED IN AGES! STINKS!!!!":
          GOTO 2000
  3650  IF N = 13 THEN 
          PRINT "HE LOOKS LIKE A WHISKEY DRINKER TO ME!!":
          GOTO 2000
  3655  IF N = 14 THEN 
          PRINT "SAYS PUSH":
          GOTO 2000
  3660  IF N = 15 THEN 
          PRINT "HE'S WAITING FOR ME TO BUY SOMETHING!":
          GOTO 2000
  3665  IF N = 16 THEN 
          PRINT "HE'S WEARING A BUTTON PROCLAIMING-      SUPPORT YOUR LOCAL PIMP, GIMME $2000!!!":
          GOTO 2000
  3670  IF N = 17 THEN 
          T = 1:
          GOTO 5100
  3675  IF N = 18 THEN 
          4150
  3680  IF N = 20 AND TV = 0 THEN 
          PRINT "ONLY IF YOU TURN IT ON! SAY 'TV ON'":
          GOTO 2000
  3682  IF N = 20 AND TV = 1 THEN 
          5560
  3685  IF N = 21 THEN 
          PRINT "PLAYING THEM MIGHT BE MORE FUN....":
          GOTO 2000
  3690  IF N = 23 THEN 
          PRINT "IT'S ON THE EAST WALL":
          GOTO 2000
  3693  IF N = 24 AND AS = 0 THEN 
          PRINT SS$:
          AS = 1:
          F  = 32:
          T  = C:
          N  = 64:
          GOTO 3230
  3696  IF N = 25 THEN 
          T = 10:
          GOSUB 5100:
          GOTO 2000
  3699  IF N = 27 THEN 
          PRINT "HE GRUMBLES- I'LL TELL YOU A STORY FOR  A BOTTLE OF WINE.....":
          GOTO 2000
  3702  IF N = 28 THEN 
          T = 25:
          GOSUB 5100:
          GOTO 2000
  3706  IF N = 29 AND MA = 0 THEN 
          PRINT SS$:
          T  = 24:
          F  = 32:
          N  = 68:
          MA = 1:
          GOTO 3230
  3707  IF N < > 30 THEN 
          3712
  3708  IF C < > 23 THEN 
          PRINT NY$:
          GOTO 2000
  3709  IF DL = 0 THEN 
          PRINT "A SIGN SAYS 'ENTRY BY SHOWING PASSCARD- CLUB MEMBERS AND THEIR GUESTS ONLY!":
          GOTO 2000
  3710  IF DL = 1 THEN 
          PRINT "IT'S UNLOCKED":
          GOTO 2000
  3712  IF N = 32 THEN 
          PRINT "SHE IGNORES YOU!":
          GOTO 2000
  3715  IF N = 34 AND C = 20 THEN 
          PRINT "A NUMBER IS THERE- 'CALL 555-6969 FOR A GOOD TIME!'":
          GOTO 2000
  3718  IF N = 35 AND DD = 0 THEN 
          PRINT "IT'S CLOSED":
          GOTO 2000
  3719  IF N = 35 AND DD = 1 THEN 
          PRINT SS$:
          F  = 32:
          T  = 29:
          N  = 74:
          DD = 2:
          GOTO 3230
  3720  IF N = 41 THEN 
          PRINT "HE'S WAITING FOR ME TO PLAY":
          GOTO 2000
  3721  IF N = 36 THEN 
          PRINT "A SIGN SAYS 'WATER ON OR OFF TO OPERATE'":
          GOTO 2000
  3722  IF N = 42 AND ST = 0 THEN 
          PRINT "IT'S TOO HIGH!":
          GOTO 2000
  3723  IF N = 42 AND ST = 1 THEN 
          PRINT SS$:
          ST = 2:
          F  = 32:
          T  = C:
          N  = 76:
          GOTO 3230
  3724  IF N = 48 THEN 
          PRINT "IT SAYS 'HAIL TAXI HERE'":
          GOTO 2000
  3725  IF N = 43 THEN 
          PRINT "IT'S DOORS ARE CLOSED":
          GOTO 2000
  3726  IF N = 45 THEN 
          PRINT SS$:
          N = 75:
          T = C:
          F = 32:
          GOTO 3230
  3727  IF N = 50 THEN 
          T = 2:
          GOTO 5100
  3728  IF N = 58 AND AP = 0 THEN 
          PRINT SS$:
          T  = C:
          F  = 32:
          N  = 59:
          AP = 1:
          GOTO 3230
  3729  IF N = 56 AND GG = 0 THEN 
          PRINT SS$:
          N  = 58:
          T  = C:
          F  = 32:
          GG = 1:
          GOTO 3230
  3730  IF N = 61 THEN 
          PRINT "THE LABEL ON THE BOTTLE SAYS 'WANT TO   DRIVE SOMEONE CRAZY WITH LUST??         TRY THIS!!!!":
          GOTO 2000
  3731  IF N = 44 THEN 
          PRINT "ENTERING THEM WOULD BE KINKY!!":
          GOTO 2000
  3732  IF N = 47 AND BU = 0 THEN 
          BU = 1:
          PRINT "THERE'S A GROUP OF BUSHES BEHIND IT!!":
          T = C:
          F = 32:
          N = 44:
          GOTO 3230
  3734  IF N = 65 THEN 
          PRINT "MAYBE I SHOULD LISTEN....":
          GOTO 2000
  3736  IF N = 68 THEN 
          F = 31:
          GOSUB 3260:
          T = 3:
          GOTO 5100
  3737  IF N = 69 THEN 
          GOSUB 5817:
          PRINT "IT'S ";P1$;", ";P2$;"-FLAVORED, ":
          PRINT P3$;", AND ";P4$:
          GOTO 2000
  3738  IF N = 49 AND C = 26 THEN 
          T = 5:
          GOTO 5100
  3739  IF N = 49 AND GC > 3 THEN 
          PRINT "SHE SLAPS ME AND YELLS 'PERVERT!!!!!'":
          GOTO 2000
  3740  IF N = 49 AND C < > 26 THEN 
          T = 4:
          GOTO 5100
  3742  IF N = 73 THEN 
          PRINT "IT CONTAINS $";M;"00":
          GOTO 2000
  3744  IF N = 74 AND ID = 1 THEN 
          PRINT "IT'S INFLATED":
          GOTO 2000
  3745  IF N = 74 AND ID = 0 THEN 
          PRINT "IT'S ROLLED UP IN A LITTLE BALL!":
          GOTO 2000
  3746  IF N = 76 AND PI = 0 THEN 
          PRINT "IT'S EMPTY":
          GOTO 2000
  3747  IF N = 76 AND PI = 1 THEN 
          PRINT "IT'S FULL":
          GOTO 2000
  3748  PRINT "I SEE NOTHING SPECIAL"
  3749  GOTO 2000
  3750  PRINT D$;OD$
  3760  PRINT D$;RD$;C
  3770  INPUT NA$:
        INPUT NB$:
        INPUT NC$:
        INPUT ND$
  3780  PRINT D$;CD$
  3790  PRINT NA$:
        PRINT NB$:
        PRINT NC$:
        PRINT ND$
  3792  IF T > 5 THEN 
          RETURN 
  3795  GOTO 2000
  3800  POKE 34,0:
        INVERSE :
        HOME 
  3802  FOR X = 1 TO 24
  3804    PRINT "                                       "
  3806  NEXT :
        RESTORE 
  3808  SPEED=20
  3810  DATA  C,O,M,P,U,T,E,R, ,F,R,E,A,K,S, ,P,E,E,K, ,B,E,F,O,R,E,
              ,T,H,E,Y, ,P,O,K,E, ,I,',D, ,L,I,K,E, ,T,O, ,N,I,B,B,L,
             E, ,H,E,R, ,F,L,O,P,P,I,E,S,!
  3811  DATA     A,S,C,I,I,A,N,D,,Y,E, ,S,H,A,L,L, ,R,E,C,E,I,V,E
  3815  VTAB 3
  3820  FOR X = 1 TO 21
  3830    READ X$:
          PRINT X$;:
          CALL - 922
  3840  NEXT 
  3850  VTAB 5:
        PRINT 
  3860  FOR X = 1 TO 16
  3870    READ X$:
          PRINT X$;:
          CALL - 922
  3880  NEXT :
        VTAB 1:
        HTAB 3
  3890  PRINT "AT MY APPLE IS WHERE I SIT,";
  3895  VTAB 2:
        HTAB 3
  3900  PRINT "WHEN I FEEL LIKE FONDLING IT'S BITS!"
  3920  FOR X = 4 TO 22:
          VTAB X
  3925    HTAB 35
  3930    READ X$:
          PRINT X$;:
        NEXT 
  3950  FOR X = 4 TO 17:
          VTAB X:
          HTAB 37
  3960    READ X$:
          PRINT X$:
        NEXT 
  3970  VTAB 6:
        HTAB 18:
        PRINT "THE PASSWORD IS:"
  3972  VTAB 8:
        HTAB 20:
        PRINT "BELLYBUTTON":
        HTAB 10
  3980  FOR X = 5 TO 13 STEP 2
  3990    VTAB X:
          READ X$:
          PRINT X$;
  4000  NEXT :
        HTAB 13:
        FOR X = 5 TO 18 STEP 2
  4010    VTAB X:
          READ X$:
          PRINT X$;
  4020  NEXT 
  4030  FOR X = 10 TO 20 STEP 2:
          VTAB X
  4040    READ X$:
          PRINT X$;
  4050  NEXT 
  4060  FOR X = 10 TO 22 STEP 2:
          VTAB X
  4070    READ X$:
          PRINT X$;
  4080  NEXT :
        NORMAL :
        SPEED=255
  4085  VTAB 24:
        HTAB 1
  4090  PRINT "HIT ANY KEY TO RETURN TO GAME";
  4100  IF PEEK ( - 16384) > 127 THEN 
          POKE - 16368,0:
          HOME :
          GOTO 590
  4110  GOTO 4100
  4150  POKE 34,0:
        HOME :
        INVERSE 
  4160  FOR X = 1 TO 24:
          PRINT "                                       "
  4170  NEXT :
        VTAB 1
  4175  VTAB 4
  4180  VTAB 5:
        HTAB 5:
        PRINT "FOR THOSE WHO DESIRE THE BEST:"
  4190  PRINT :
        HTAB 15:
        PRINT "ANNOUNCING"
  4195  PRINT :
        HTAB 10:
        PRINT "THE MOST EXCLUSIVE,"
  4200  PRINT :
        HTAB 13:
        PRINT "THE EXCITING,"
  4210  PRINT :
        HTAB 8:
        PRINT "THE HOTTEST SPOT IN TOWN,"
  4220  VTAB 15:
        HTAB 9:
        PRINT "SWINGING SINGLE'S DISCO"
  4230  FLASH :
        VTAB 13:
        HTAB 7:
        PRINT "**************************"
  4235  VTAB 17:
        HTAB 7:
        PRINT "**************************"
  4240  FOR X = 13 TO 17:
          HTAB 7:
          VTAB X:
          PRINT "*"
  4242  NEXT 
  4245  FOR X = 13 TO 17:
          HTAB 33:
          VTAB X:
          PRINT "*"
  4247  NEXT 
  4250  NORMAL :
        GOTO 4085
  4500  IF N < > 12 THEN 
          PRINT "YOU'RE NUTS!!":
          GOTO 2000
  4505  IF C < > 2 THEN 
          PRINT "FIND ME ONE!":
          GOTO 2000
  4510  SPEED=20:
        PRINT "OK, HERE GOES.........................."
  4520  PRINT "OH, NO!!!!!! IT'S OVERFLOWING!!!!!!!!!! IT'S FILLING THE ROOM WITH GROSS SEWAGE!"
  4529  FOR X = 1 TO 300
  4540  NEXT X
  4550  NORMAL :
        SPEED=255
  4560  PRINT :
        PRINT "I'M DEAD FROM THE GERMS!!":
        GOTO 5000
  4600  IF N < > 8 THEN 
          4615
  4605  IF C < > 1 THEN 
          PRINT NY$:
          GOTO 2000
  4610  PRINT "OK":
        DE = 1:
        GOTO 2000
  4615  IF N = 46 THEN 
          PRINT "WON'T BUDGE":
          GOTO 2000
  4630  IF N < > 30 THEN 
          4639
  4631  IF C < > 23 THEN 
          PRINT NY$:
          GOTO 2000
  4632  PRINT "A VOICE ASKS 'PASSCARD??' I SEARCH IN   MY POCKETS AND":
        F = 31:
        N = 64:
        GOSUB 3260:
        PRINT "I HAVE IT! THE DOOR OPENS!":
        D%(23) = 15:
        SS     = 1:
        GOTO 600
  4633  IF N < > 23 THEN 
          4639
  4634  IF C < > 29 THEN 
          PRINT NY$:
          GOTO 2000
  4635  PRINT "IT'S SEEMS TO BE REMOTELY CONTROLLED!":
        GOTO 2000
  4639  IF N < > 35 THEN 
          4646
  4640  IF C < > 29 THEN 
          PRINT NY$:
          GOTO 2000
  4645  PRINT "OK":
        DD = 1:
        GOTO 2000
  4646  IF N < > 42 THEN 
          PRINT "UMMM..........................HUH??":
          GOTO 2000
  4647  IF ST = 0 THEN 
          PRINT "I CAN'T REACH IT!!"
  4648  IF ST = 1 THEN 
          PRINT "IT'S ALREADY OPEN!"
  4649  GOTO 2000
  4650  IF N < > 74 THEN 
          PRINT "BUT THE PRIME RATE IS ALREADY 257%!!":
          GOTO 2000
  4660  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = 74 THEN 
            4670
  4665  NEXT 
  4666  PRINT "I CAN'T UNLESS I'M HOLDING IT CLOSE!!":
        GOTO 2000
  4670  PRINT "OK":
        ID = 1:
        GOTO 2000
  4700  IF N = 21 THEN 
          4720
  4705  IF N = 37 THEN 
          4751
  4715  PRINT "PLAYFUL BUGGER, EH??":
        GOTO 2000
  4720  IF C < > 13 THEN 
          PRINT "OK, SHOW ME YOUR SLOT.....":
          GOTO 2000
  4725  PRINT "THIS WILL COST $100 EACH TIME"
  4726  PRINT "YOU HAVE $";M;"00":
        PRINT "WOULD YOU LIKE TO PLAY? (Y/N)":
        POKE - 16368,0:
        GET X$:
        IF X$ < > "Y" THEN 
          2000
  4736  VTAB 24:
        INVERSE 
  4737  FOR Y = 1 TO 30
  4740    X  = INT ( RND (1) * 10) + 33:
          X1 = INT ( RND (1) * 10) + 33:
          X2 = INT ( RND (1) * 10) + 33:
  4741    HTAB 1:
          PRINT CHR$ (X);:
          HTAB 13:
          PRINT CHR$ (X1);:
          HTAB 26:
          PRINT CHR$ (X2);
  4742  NEXT :
        NORMAL :
        PRINT 
  4743  IF X = X1 AND X1 = X2 THEN 
          PRINT "TRIPLES!!!!!! YOU WIN $1500":
          M = M + 15:
          GOTO 4726
  4744  IF X = X1 OR X1 = X2 OR X = X2 THEN 
          PRINT "A PAIR! YOU WIN $300":
          M = M + 3:
          GOTO 4726
  4747  M = M - 1:
        IF M < 1 THEN 
          PRINT "I'M BROKE!!!- THAT MEANS DEATH!!!!!!!!":
          FOR X = 1 TO 10000:
          NEXT :
          GOTO 5000
  4750  PRINT "YOU LOSE!":
        GOTO 4726
  4751  IF C < > 14 THEN 
          PRINT NY$:
          GOTO 2000
  4752  MI = 0:
        MD = 0:
        YD = 0:
        YM = 0:
        AD = 0:
        AM = 0:
        ONERR GOTO 4799
  4753  PRINT "YOU HAVE $";M;"00":
        PRINT "HOW MANY DOLLARS WOULD YOU LIKE TO BET?":
        INPUT X:
        IF X / 100 > M THEN 
          PRINT "YOU DON'T HAVE THAT MUCH!!!":
          GOTO 4753
  4754  PRINT "OK":
        A = 1:
        IF INT ((X / 100 - INT (X / 100)) * 100 + .05) * SGN (X / 100) < > 0 THEN 
          PRINT "$100 INCREMENTS ONLY!!":
          GOTO 4753
  4755  Z  = INT ( RND (1) * 13) + 1:
        Y  = 0:
        AC = 0:
        IF Z = 11 THEN 
          IN$ = " JACK":
          Y   = 1
  4756  IF Z = 12 THEN 
          IN$ = " QUEEN"
  4757  IF Z = 13 THEN 
          IN$ = " KING"
  4758  IF Z < 10 THEN 
          IN$ = S$ + CHR$ (Z + 48)
  4759  IF Z = 10 THEN 
          IN$ = " 10"
  4760  IF Z > 10 THEN 
          Z = 10
  4761  IF Z = 1 THEN 
          Z   = 11:
          Y   = 1:
          IN$ = "N ACE":
          AC  = 1
  4762  IF A = 1 OR A = 3 THEN 
          INVERSE :
          MI = MI + Z:
          PRINT "YOU'RE DEALT A";IN$:
          YM = YM + Y:
          AM = AM + AC:
          NORMAL 
  4763  IF A = 2 THEN 
          MD = MD + Z:
          PRINT "THE DEALER GETS A CARD DOWN":
          YD = YD + Y:
          AD = AD + AC
  4764  IF A = 4 THEN 
          MD = MD + Z:
          PRINT "THE DEALER GETS A";IN$:
          A  = 5:
          AD = AD + AC:
          YD = YD + Y:
          GOTO 4770
  4765  IF A = 5 THEN 
          MI = MI + Z:
          INVERSE :
          PRINT "YOU GET A";IN$:
          AM = AM + AC:
          NORMAL :
          GOTO 4770
  4766  IF A = 6 THEN 
          MD = MD + Z:
          PRINT "THE DEALER GETS A";IN$:
          AD = AD + AC:
          GOTO 4784
  4769  A = A + 1:
        GOTO 4755
  4770  IF MI > 21 AND AM > 0 THEN 
          AM = AM - 1:
          MI = MI - 10
  4776  INVERSE :
        PRINT "YOUR TOTAL IS ";MI:
        NORMAL :
        IF MI > 21 THEN 
          FLASH :
          PRINT "BUSTED!":
          NORMAL :
          :
          M = M - (X / 100):
          GOTO 4794
  4780  IF YM = 2 AND MI = 21 THEN 
          PRINT "YOU'VE GOT ***BLACKJACK***":
          M = M + ((X / 100) * 5):
          GOTO 4794
  4781  IF YD = 2 AND MD = 21 THEN 
          PRINT "THE DEALER HAS ***BLACKJACK***":
          M = M - (X / 100):
          GOTO 4794
  4782  PRINT "WOULD YOU LIKE A HIT (Y/N)??":
        GET A$:
        IF A$ = "Y" THEN 
          GOTO 4755
  4784  IF MD > 21 AND AD > 0 THEN 
          AD = AD - 1:
          MD = MD - 10
  4785  PRINT "THE DEALER HAS ";MD:
        IF MD < 17 THEN 
          A = 6:
          GOTO 4755
  4786  IF MD > 21 THEN 
          4790
  4788  IF MI < MD THEN 
          M = M - (X / 100):
          PRINT "YOU LOSE!":
          GOTO 4794
  4789  IF MI = MD THEN 
          PRINT "TIE!":
          M = M + 1:
          GOTO 4794
  4790  PRINT "YOU WIN!!":
        M = M + (X / 100)
  4794  IF M = 0 THEN 
          PRINT "YOU'RE OUT OF MONEY!!":
          PRINT "SO LONG!!!!!!!!!!":
          GOTO 5000
  4795  PRINT "PLAY AGAIN?? (Y/N)??":
        GET A$:
        IF A$ = "N" THEN 
          2000
  4797  GOTO 4752
  4799  PRINT "$100 INCREMENTS (NUMERIC) ONLY!!":
        GOTO 4752
  4800  IF N < > 14 OR C < > 3 THEN 
          4810
  4802  PRINT "A VOICE ASKS 'WHATS THE PASSWORD?' (ONE WORD)":
        INPUT IN$:
        IF LEFT$ (IN$,4) < > "BELL" THEN 
          PRINT "WRONG!":
          GOTO 2000
  4805  D%(C) = 4:
        PRINT "THE CURTAIN PULLS BACK!!":
        GOTO 600
  4810  IF N < > 14 OR C < > 19 THEN 
          4815
  4811  IF BG = 0 THEN 
          PRINT "THE BLONDE SAYS 'YOU CAN'T GO THERE!'":
          GOTO 2000
  4813  T = 7:
        GOSUB 5100
  4814  C = 25:
        GOTO 600
  4815  IF N < > 14 OR C < > 25 THEN 
          4820
  4816  T = 7:
        GOSUB 5100
  4817  C = 19:
        GOTO 600
  4820  IF N < > 49 THEN 
          PRINT "PUSHY CHUMP, EH???":
          GOTO 2000
  4830  PRINT "SHE KICKS ME IN THE STOMACH AND LAUGHS!!":
        GOTO 2000
  4850  IF N = 44 AND C = 15 AND BU = 1 THEN 
          C = 28:
          GOTO 600
  4857  IF N < > 46 THEN 
          4860
  4858  IF C < > 8 THEN 
          PRINT NY$:
          GOTO 2000
  4859  GOTO 2600
  4860  IF N < > 44 OR N < > 46 THEN 
          4875
  4870  PRINT NY$:
        GOTO 2000
  4875  IF N = 30 THEN 
          2800
  4876  IF N = 46 THEN 
          2650
  4877  IF N < > 62 THEN 
          4890
  4878  IF C < > 23 THEN 
          PRINT NY$:
          GOTO 2000
  4879  GOTO 2800
  4890  GOTO 2400
  4900  IF N = 25 OR N = 32 OR N = 17 OR N = 49 OR N = 70 THEN 
          4940
  4902  IF N = 87 THEN 
          PRINT "TAKE A HIKE, BUDDY!!":
          GOTO 2000
  4905  GOSUB 5817
  4910  IF N = 83 THEN 
          PRINT "HOLY COW!!! PSYCHEDELIC!!!!!            PRETTY COLORS APPEAR AND I'M ELSWHERE!":
          C = INT ( RND (1) * 3) + 1:
          GOTO 600
  4920  IF N = 58 OR N = 56 THEN 
          PRINT "TOO MOLDY!":
          GOTO 2000
  4925  IF N = 75 THEN 
          PRINT "SORRY...NOT HUNGRY.":
          GOTO 2000
  4927  IF N = 61 THEN 
          SPEED=20:
          T = 26:
          GOSUB 5100:
          SPEED=255:
          GOTO 5000
  4935  PRINT "YECCHHH!!!! TASTE'S AWFUL!":
        GOTO 2000
  4940  GOSUB 3206:
        T = 8:
        GOSUB 5100
  4947  FOR X = 1 TO 10000:
        NEXT :
        GOTO 5000
  4950  GOSUB 5817
  4955  IF N = 52 THEN 
          PRINT "THIS STUFF IS ROT-GUT! GIVE IT TO       SOMEONE....I DON'T WANT IT.":
          GOTO 2000
  4960  IF N = 53 THEN 
          SPEED=20:
          PRINT "HEH...HEH....HEY!!!! THIS STUFF'S OK!":
          SPEED=255:
          GOTO 2000
  4970  IF N = 72 THEN 
          PRINT "SOUR GRAPES.....":
          GOTO 2000
  4980  IF N = 82 THEN 
          PRINT "THANKS!":
          GOTO 2000
  4990  PRINT "GET YOUR HEAD EXAMINED!!!":
        GOTO 2000
  5000  PRINT "WELCOME TO PURGATORY!! HERE AT THIS     CROSSROADS YOU HAVE THREE OPTIONS:"
  5010  PRINT :
        PRINT "BEFORE YOU ARE THREE DOORS. EACH WILL   BRING YOU TO A DIFFERENT PLACE- "
  5020  PRINT "A- TO HELL (WHERE THE GAME ENDS)"
  5030  PRINT "B- BACK TO LIFE, UNHARMED"
  5040  PRINT "C- YOU STAY HERE AND MUST CHOOSE AGAIN"
  5041  PRINT 
  5045  PRINT "THE DOORS ARE RANDOMLY DIFFERENT EACH   TIME!!":
        PRINT 
  5047  ONERR GOTO 5090
  5050  PRINT "CHOOSE YOUR DOOR: 1, 2, OR 3??  ":
        GET A
  5055  IF A = 1 OR A = 2 OR A = 3 THEN 
          5060
  5057  GOTO 5050
  5060  X = INT ( RND (1) * 4)
  5070  IF A = X THEN 
          GOTO 2000
  5080  A = A - 1:
        IF A < 1 THEN 
          A = 3
  5085  IF A = X THEN 
          POKE 34,0:
          HOME :
          NEW :
          END 
  5090  PRINT "YOU'RE STILL HERE!":
        GOTO 5050
  5100  PRINT D$;OT$:
        PRINT D$;RT$;T
  5110  INPUT NA$:
        INPUT NB$:
        INPUT NC$:
        INPUT ND$
  5120  PRINT D$;CT$
  5130  GOTO 3790
  5150  IF M < 1 THEN 
          PRINT "NO MONEY!!!":
          GOTO 2000
  5155  IF N = 52 OR N = 53 AND C = 3 THEN 
          5157
  5156  GOTO 5169
  5157  IF C < > 3 THEN 
          PRINT NY$
  5158  IF (N = 52 AND BW = 1) OR (N = 53 AND BB = 1) THEN 
          PRINT "SORRY...TEMPORARILY SOLD OUT":
          GOTO 2000
  5160  PRINT "I GIVE THE BARTENDER $100 AND HE PLACES IT ON THE BAR.":
        M = M - 1:
        T = C:
        F = 32:
        IF N = 52 THEN 
          BW = 1
  5161  IF N = 53 THEN 
          BB = 1
  5162  GOTO 3230
  5169  IF N < > 72 THEN 
          5177
  5170  IF C < > 21 THEN 
          PRINT NY$:
          GOTO 2000
  5171  IF BI = 1 THEN 
          PRINT "SORRY....ALL OUT!":
          GOTO 2000
  5172  PRINT "THE WAITRESS TAKES $100 AND SAYS SHE'LL RETURN":
        FOR X = 1 TO 10000:
        NEXT :
        PRINT "POOR SERVICE!"
  5174  FOR X = 1 TO 5000:
        NEXT 
  5175  M  = M - 1:
        T  = C:
        F  = 32:
        X  = 0:
        BI = 1:
        GOTO 3230
  5177  IF N < > 69 THEN 
          5191
  5178  IF C < > 24 THEN 
          PRINT NY$:
          GOTO 2000
  5179  IF LEN (P1$) > 2 THEN 
          PRINT "ALL OUT!!":
          GOTO 2000
  5180  PRINT "THE MAN LEANS OVER THE COUNTER AND WHISPERS:":
        PRINT "WHAT COLOR?":
        INPUT P1$
  5182  PRINT "AND FOR A FLAVOR??":
        INPUT P2$
  5184  PRINT "LUBRICATED OR NOT (Y/N)??":
        GET A$:
        IF A$ = "N" THEN 
          P3$ = "NON-LUBRICATED"
  5186  PRINT "RIBBED (Y/N)":
        GET A$:
        IF A$ = "N" THEN 
          P4$ = "SMOOTH"
  5188  PRINT "HE YELLS- THIS PERVERT JUST BOUGHT A  ":
        PRINT P1$;", ";P2$;"-FLAVORED":
        PRINT P3$;", ";P4$;" RUBBER!!!!":
        PRINT :
        PRINT "A LADY WALKS BY AND LOOKS AT ME IN      DISGUST!!!!"
  5190  M = M - 1:
        T = 31:
        F = C:
        GOTO 3255
  5191  IF N < > 68 THEN 
          5199
  5192  F = C:
        GOSUB 3210:
        M = M - 1:
        PRINT "HE TAKES $100 AND GIVES ME THE MAGAZINE":
        F = C:
        T = 31:
        GOTO 3230
  5199  GOTO 2400
  5200  IF V1%(C,1) = 0 THEN 
          3225
  5203  FOR X = 2 TO V1%(C,1) + 1:
          IF V1%(C,X) = N THEN 
            5210
  5205  NEXT :
        PRINT "IT'S NOT ON THE FLOOR HERE!":
        GOTO 2000
  5210  IF N = 77 THEN 
          PRINT "OK":
          ST = 1:
          GOTO 2000
  5220  N = 0:
        GOTO 3202
  5250  IF C = 27 AND N = 38 THEN 
          PRINT "OK":
          WA = 1:
          GOTO 2000
  5260  IF C = 27 AND N = 39 THEN 
          PRINT "OK":
          WA = 0:
          GOTO 2000
  5262  IF N = 38 OR N = 39 THEN 
          5315
  5265  IF PI = 0 THEN 
          PRINT "PITCHER'S EMPTY!":
          GOTO 2000
  5270  IF V1%(C,1) = 0 THEN 
          5280
  5271  FOR X = 2 TO V1%(C,1) + 1:
          IF V1%(C,X) = 59 THEN 
            5290
  5275  NEXT 
  5280  PRINT "IT POURS INTO THE GROUND":
        PI = 0:
        GOTO 2000
  5290  IF C < > 28 THEN 
          PRINT "THE SEEDS NEED BETTER SOIL TO GROW":
          GOTO 5280
  5292  PI = 0:
        PRINT "A TREE SPROUTS!!":
        V1%(C,X) = 45:
        GOTO 610
  5300  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = 76 THEN 
            5310
  5301  NEXT 
  5303  PRINT "GET ME THE PITCHER SO I DON'T SPILL IT!":
        GOTO 2000
  5310  IF C = 27 AND WA = 1 THEN 
          PRINT "OK":
          PI = 1:
          GOTO 2000
  5315  IF C < > 27 THEN 
          PRINT "FIND A WORKING SINK":
          GOTO 2000
  5320  IF WA = 0 THEN 
          PRINT "NO WATER!!!":
          GOTO 2000
  5350  IF N = 82 THEN 
          5265
  5400  IF N < > 65 THEN 
          PRINT "QUIET AS A MOUSE IN HEAT!":
          GOTO 2000
  5415  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = N THEN 
            5420
  5417  NEXT :
        PRINT "TAKE IT AND PUT IT NEXT TO MY EAR!":
        GOTO 2000
  5420  IF R = 0 THEN 
          PRINT "AN ADVERTISEMENT SAYS 'CALL 555-0987 FORALL YOUR LIQUOR NEEDS!!!!":
          GOTO 2000
  5430  IF R = 1 THEN 
          FLASH :
          PRINT "PUNK ROCK!!!!!":
          NORMAL 
  5440  GOTO 2000
  5450  IF N = 8 THEN 
          DE = 0:
          GOTO 2000
  5460  IF N = 35 THEN 
          DD = 0:
          GOTO 2000
  5465  IF N = 30 THEN 
          SS = 0:
          GOTO 2000
  5470  N = 0:
        GOTO 3202
  5500  IF C < > 8 THEN 
          PRINT "WHOOOPEEEEE!!!":
          GOTO 2000
  5510  FOR X = 1 TO 50:
          PRINT "AAAAAEEEEEIIIIIIII!!!!!!!!":
        NEXT :
        PRINT "SPLAAATTTTT!!!!!"
  5520  IF C = 10 AND UR = 0 THEN 
          PRINT "I SHOULD HAVE USED SAFETY ROPE!!!!!!!!":
          GOTO 5000
  5550  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = 84 THEN 
            5553
  5551  NEXT :
        PRINT "I NEED THE REMOTE CONTROL UNIT!":
        GOTO 2000
  5553  IF C < > 5 THEN 
          PRINT "NO TV!":
          GOTO 2000
  5554  IF N = 39 THEN 
          TV = 0:
          PRINT "OK":
          GOTO 2000
  5555  IF N < > 38 THEN 
          GOTO 2400
  5556  IF SC = 0 THEN 
          PRINT "THE DUDE WON'T LET ME!!":
          GOTO 2000
  5560  TV = 1:
        PRINT "CHOOSE A CHANNEL (1-9)"
  5570  INPUT A:
        IF A < 1 OR A > 9 THEN 
          PRINT "HUH?":
          GOTO 5570
  5590  BD = 0:
        IF A = 6 THEN 
          BD = 1
  5600  T = A + 10:
        GOSUB 5100
  5610  PRINT :
        PRINT "CHANGE THE CHANNEL?(Y/N)"
  5620  GET IN$:
        IF IN$ = "N" THEN 
          2000
  5630  GOTO 5560
  5650  IF C < > 21 THEN 
          5670
  5651  IF C = 21 AND N = 60 AND QC = 0 AND GC < 3 THEN 
          GC = GC + 1:
          QC = 1:
          PRINT "SHE SMILES AND EATS A COUPLE!!"
  5655  IF C = 21 AND N = 57 THEN 
          GC = GC + 1:
          PRINT "SHE BLUSHES PROFUSELY AND PUTS THEM IN  HER HAIR!":
          V1%(F,X) = V1%(F,V1%(F,1) + 1):
          V1%(F,1) = V1%(F,1) - 1:
          IF GC < > 3 THEN 
            2000
  5657  IF C = 21 AND N = 51 THEN 
          GC = GC + 1:
          PRINT "SHE BLUSHES AND PUTS IT IN HER PURSE.":
          V1%(F,X) = V1%(F,V1%(F,1) + 1):
          V1%(F,1) = V1%(F,1) - 1:
          IF GC < > 3 THEN 
            2000
  5659  IF GC < > 3 THEN 
          RETURN 
  5660  PRINT "SHE SAYS 'SEE YOU AT THE MARRIAGE       CENTER!!":
        GC = 4:
        F  = C:
        T  = 12:
        N  = 49:
        GOTO 3255
  5670  IF C < > 22 OR N < > 72 THEN 
          5686
  5671  IF WI = 1 THEN 
          PRINT "THE BUM MUTTERS 'THAT STUFF MADE ME     PUKE!!! GET OUT OF HERE!!!!":
          GOTO 2000
  5672  PRINT "HE LOOKS AT ME AND STARTS TO SPEAK..."
  5675  WI = 1:
        T  = 9:
        SPEED=30:
        GOSUB 5100
  5680  PRINT "AFTER ALL YOU MAY GET IN A PROGRAM BUG":
        SPEED=255:
        POKE 34,0
  5685  FOR X = 1 TO 255:
          PRINT "LIKE I DID!!!":
          HTAB X:
        NEXT :
        V1%(C,V1%(C,1) + 2) = 66:
        V1%(C,1)            = V1%(C,1) + 1:
        HOME :
        VTAB 24:
        PRINT "HE THROWS UP AND GIVES ME BACK THE WINE":
        GOTO 590
  5686  IF C < > 26 OR N < > 75 THEN 
          5690
  5687  T = 20:
        GOSUB 5100:
        AA = 1:
        RETURN 
  5690  IF N = 69 THEN 
          WR = 0
  5691  IF N = 81 THEN 
          UR = 0
  5692  IF N < > 61 OR C < > 19 OR BG = 1 THEN 
          5696
  5693  T = 27:
        GOSUB 5100:
        BG = 1:
        FOR X = 2 TO V1%(C,1) + 1:
          IF V1%(C,X) = 25 THEN 
            V1%(C,X) = V1%(C,V1%(C,1) + 1):
            V1%(C,1) = V1%(C,1) - 1:
            T        = 6:
            RETURN 
  5695  NEXT 
  5696  IF N < > 52 OR C < > 1 THEN 
          RETURN 
  5697  V1%(31,X) = V1%(31,V1%(31,1) + 1):
        V1%(31,1) = V1%(31,1) - 1:
        PRINT "THE GUY GIVES ME A TV CONTROLLER!!":
        V1%(C,V1%(C,1) + 2) = 84:
        V1%(C,1)            = V1%(C,1) + 1:
        GOTO 600
  5700  IF N < > 49 THEN 
          PRINT "NO WAY, WIERDO!!":
          GOTO 2000
  5705  IF C < > 12 THEN 
          PRINT NY$:
          GOTO 2000
  5710  IF GC < > 4 THEN 
          PRINT "NO GIRL!!":
          GOTO 2000
  5712  IF M < 20 THEN 
          PRINT "THE GIRL SAYS 'BUT YOU'LL NEED $2000 FORTHE HONEYMOON SUITE!":
          GOTO 2000
  5713  IF M < 30 THEN 
          PRINT "THE PREACHER SAYS 'I'LL NEED $1000 ALSO!'":
          GOTO 2000
  5715  PRINT "OK":
        FOR X = 1 TO 500:
        NEXT :
        PRINT "WHY AM I DOING THIS!?!?!":
        FOR X = 1 TO 500:
        NEXT :
        GC = 5:
        M  = M - 30
  5720  PRINT "THE PREACHER TAKES $1000 AND WINKS!":
        PRINT "THE GIRL GRABS $2000 AND SAYS 'MEET ME  AT THE HONEYMOON SUITE! I'VE GOT        CONNECTIONS TO GET A ROOM THERE!!"
  5725  F = C:
        T = 16:
        N = 49:
        GOTO 3255
  5800  IF N = 86 THEN 
          PRINT "NOT TONIGHT- I HAVE A HEADACHE!":
          GOTO 2000
  5805  IF N < > 17 AND C < > 9 THEN 
          5815
  5810  IF FH = 1 THEN 
          PRINT "SHE CAN'T TAKE IT ANY MORE!!!!!":
          GOTO 2000
  5813  IF WR = 0 THEN 
          PRINT "OH NO!!!! I'VE GOT THE DREADED ATOMIC      CLAP!!! I'M DEAD!!":
          FOR X = 1 TO 1000:
          NEXT :
          GOTO 5000
  5814  T = 21:
        GOSUB 5100:
        SC = 1:
        FH = 1:
        GOTO 2000
  5815  IF N < > 74 THEN 
          5830
  5816  GOSUB 5817:
        GOTO 5822
  5817  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = N THEN 
            Y = 31:
            RETURN 
  5818  NEXT 
  5819  FOR X = 2 TO V1%(C,1) + 1:
          IF V1%(C,X) = N THEN 
            Y = C:
            RETURN 
  5820  NEXT :
        PRINT "I CAN'T FIND IT!":
        GOTO 2000
  5822  IF ID = 1 THEN 
          T = 22:
          GOSUB 5100:
          V1%(Y,X) = V1%(Y,V1%(Y,1) + 1):
          V1%(Y,1) = V1%(Y,1) - 1:
          ID       = 2:
          GOTO 590
  5825  IF ID = 0 THEN 
          PRINT "INFLATE IT FIRST- STUPID!!!":
          GOTO 2000
  5830  IF N < > 49 THEN 
          5880
  5831  F = C:
        GOSUB 3210
  5835  IF C < > 26 THEN 
          5840
  5836  IF AA < > 1 THEN 
          PRINT NY$:
          GOTO 2000
  5837  T = 23:
        GOSUB 5100:
        NEW :
        END 
  5840  IF GC < 5 OR C < > 16 THEN 
          PRINT NY$:
          GOTO 2000
  5842  IF GC < > 6 THEN 
          PRINT "SHE SAYS 'GET ME WINE!!! I'M NERVOUS!!'":
          GOTO 2000
  5845  T = 24:
        GOSUB 5100:
        R        = 1:
        SC       = SC + 1:
        RR       = 1:
        V1%(C,X) = 81:
        GOTO 590
  5880  F = C:
        GOSUB 3210:
        IF N = 32 THEN 
          PRINT "SHE KICKS ME IN THE GROIN AND SAYS      'WISE UP- BUSTER!!'":
          GOTO 2000
  5885  IF N = 25 THEN 
          PRINT "SHE SAYS 'I'M WORKING! LEAVE ME ALONE!'":
          GOTO 2000
  5887  IF N = 16 THEN 
          PRINT "HE SAYS 'YOU'LL NEVER HAVE ENOUGH MONEY FOR ME- FOOL!!!' I GUESS HE'S GAY!":
          GOTO 2000
  5890  IF N = 27 THEN 
          PRINT "TO DO THAT I NEED VASELINE!!":
          GOTO 2000
  5893  IF N = 15 THEN 
          PRINT "HE JUMPS OVER THE BAR AND KILLS ME!!":
          GOTO 5000
  5895  IF N = 13 THEN 
          PRINT "NO WAY!!! YOU'RE WIERD!!":
          GOTO 2000
  5899  PRINT "PERVERT!":
        GOTO 2000
  5900  IF N < > 69 THEN 
          5912
  5910  F = 31:
        GOSUB 3260:
        WR = 1:
        PRINT "IT TICKLES!!!!":
        GOTO 2000
  5912  IF N < > 12 THEN 
          5916
  5913  F = C:
        GOSUB 3210
  5915  SPEED=10:
        PRINT "...........I GOT THOSE CONSTIPATION     BLUES............................":
        SPEED=255:
        PRINT "AHHH...RELIEF! THANKS!":
        GOTO 2000
  5916  IF N < > 26 THEN 
          5921
  5917  F = C:
        GOSUB 3210:
        SPEED=20:
        PRINT "AHHHHH........SLEEP!!!"
  5918  FOR X = 1 TO 5:
          PRINT D$;OT$:
          PRINT D$;CT$:
        NEXT 
  5920  PRINT "YOUR DISK IS SNORING!!! I CAN'T SLEEP!":
        SPEED=255:
        GOTO 2000
  5921  IF N < > 81 THEN 
          5928
  5924  IF C = 7 OR C = 10 THEN 
          5926
  5925  PRINT NY$:
        GOTO 2000
  5926  F = 31:
        GOSUB 5817:
        UR = 1:
        PRINT "OK":
        GOTO 2000
  5928  IF N < > 64 THEN 
          5930
  5929  GOTO 4631
  5930  IF N < > 66 THEN 
          5935
  5931  GOTO 6205
  5935  IF N < > 54 THEN 
          2400
  5936  PRINT "TRY GIVING IT TO HER":
        GOTO 2000
  5950  IF C = 30 THEN 
          PRINT "THIS ONLY TAKES INCOMING CALLS!!":
          GOTO 2000
  5951  IF C < > 20 THEN 
          PRINT "THERE'S NO PHONE!":
          GOTO 2000
  5952  IF QNN$ = "555-6969" AND LEN (T1$) = 0 THEN 
          5970
  5953  IF QNN$ < > "555-0439" THEN 
          5969
  5954  PRINT "HI THERE!!! THIS IS CHUCK (THE AUTHOR   OF THIS ABSURD GAME). IF YOU'RE A       VOLUPTOUS BLONDE WHO'S LOOKING FOR A    GOOD TIME THEN CALL ME IMMEDIATELY!!!!":
        GOTO 2000
  5969  GOTO 5981
  5970  PRINT "A VOICE SAYS 'HELLO, PLEASE ANSWER THE  QUESTIONS WITH ONE WORD ANSWERS!"
  5971  INPUT "WHAT'S YOUR FAVORITE GIRLS NAME?";T1$
  5972  INPUT "NAME A NICE PART OF HER ANATOMY.";T2$
  5973  INPUT "WHAT DO YOU LIKE TO DO WITH HER?";T3$
  5974  INPUT "AND THE BEST PART OF YOUR BODY?!?";T4$
  5975  INPUT "FINALLY, YOUR FAVORITE OBJECT?";T5$
  5980  TE = 1:
        PRINT "HE HANGS UP!!!!!":
        GOTO 2000
  5981  IF QNN$ < > "555-0987" THEN 
          5999
  5984  IF GC < > 5 THEN 
          PRINT "SOMEBODY ANSWERS AND HANGS UP!!!!":
          GOTO 2000
  5985  PRINT "A VOICE ANSWERS AND SAYS 'WINE FOR THE  NERVOUS NEWLYWEDS!! COMING RIGHT UP!!!!"
  5986  GC                    = 6
  5990  V1%(16,V1%(16,1) + 2) = 72:
        V1%(16,1)             = V1%(16,1) + 1:
        GOTO 2000
  5999  PRINT "NOBODY ANSWERS":
        GOTO 2000
  6000  IF N < > 34 THEN 
          PRINT "I DON'T KNOW HOW TO!!":
          GOTO 2000
  6010  IF TE < > 1 THEN 
          PRINT "IT'S NOT RINGING!":
          GOTO 2000
  6020  TE = 0:
        PRINT "A GIRL SAYS 'HI HONEY! THIS IS ";T1$;".":
        PRINT "DEAR, WHY DON'T YOU FORGET THIS GAME    AND ";T3$;" WITH ME???":
        PRINT "AFTER ALL, YOUR ";T4$;" HAS ALWAYS TURNED ME ON!!!!"
  6030  PRINT "SO BRING A ";T5$;" AND COME":
        PRINT "PLAY WITH MY ";T2$;" !!!!":
        PRINT "SHE HANGS UP!!":
        GOTO 2000
  6100  FOR X = 2 TO V1%(31,1) + 1:
          IF V1%(31,X) = N THEN 
            PRINT "I'M ALREADY CARRYING IT!":
            POP :
            GOTO 2000
  6110  NEXT :
        RETURN 
  6150  IF N < > 46 THEN 
          2400
  6160  IF C < > 8 THEN 
          PRINT "IT'S NOT HERE!":
          GOTO 2000
  6165  PRINT "LET ME SEE IF I HAVE A HAMMER"
  6170  N = 55:
        F = 31:
        GOSUB 3260:
        PRINT "THE WINDOW SMASHES TO PIECES!":
        D%(8) = 8:
        GOTO 600
  6200  IF N < > 81 THEN 
          2400
  6205  GOSUB 5817
  6207  F = 31:
        PRINT "LET ME SEE IF I STILL HAVE THE KNIFE!":
        N = 66:
        GOSUB 3260
  6208  IF RR = 2 THEN 
          PRINT "SAMURAI SEX FIEND!!!!!!!!!!!!!!!!!!!!!!":
          FOR X = 1 TO 1000:
          NEXT :
          PRINT "I STAB MYSELF IN ECSTACY!":
          GOTO 5000
  6210  IF RR < > 1 THEN 
          PRINT "I DON'T WANT TO! "
  6220  RR = 2:
        PRINT "I DO AND IT WORKED! THANKS!":
        GOTO 2000
  6240  PRINT "BUT I'M TIED TO THE BED!!!!!":
        GOTO 2000
  6250  Y = 0
  6255  FOR X = 1 TO 550:
        NEXT X:
        PRINT "BOOGIE WOOGIE!!!!"
  6260  FOR X = 1 TO 1150:
        NEXT X:
        PRINT "YEH YEH YEH!!!"
  6270  IF Y = 10 THEN 
          PRINT "I GOT THE STEPS, MAN!!":
          GOTO 2000
  6280  Y = Y + 1:
        GOTO 6255
  6300  PRINT "TRY USING A KNIFE!!!":
        GOTO 2000
  6350  IF N < > 16 THEN 
          2400
  6355  IF C < > 5 THEN 
          PRINT NY$:
          GOTO 2000
  6357  IF FH = 1 THEN 
          PRINT "HE SAYS 'I DON'T WANT YOUR MONEY- STUD!":
          GOTO 2000
  6360  PRINT "TRY GOING UP- HE'LL TAKE THE MONEY THEN":
        GOTO 2000
  6385  GOTO 2400
  6400  IF N = 47 THEN 
          PRINT "A COP BEATS ME OVER THE HEAD!!!!":
          GOTO 5000
  6430  GOTO 2400
  6450  IF N < > 64 THEN 
          2400
  6460  GOTO 4631
  6500  GOSUB 5817
  6505  IF N = 25 THEN 
          PRINT "HMMM.....NICE!!!!":
          GOTO 2000
  6510  IF N = 17 THEN 
          PRINT "OK, WHO'S EATING TUNA FISH?!?!?":
          GOTO 2000
  6520  IF N = 12 THEN 
          SPEED=2:
          PRINT "ARGHHH....I'M GOING TO PUKE!!!!!":
          SPEED=255:
          GOTO 2000
  6530  IF N = 47 THEN 
          PRINT "AHH..CHOOO!!!!!!! I GUESS I'M ALLERGIC!":
          GOTO 2000
  6540  IF N = 56 THEN 
          PRINT "YECHHHHH!!!!!":
          GOTO 2000
  6550  IF N = 57 THEN 
          PRINT "SMELLS JUST LIKE PERFUME!!!":
          GOTO 2000
  6560  PRINT "SMELLS OK":
        GOTO 2000
  8000  ONERR GOTO 8020
  8002  IF PEEK (222) = 255 THEN 
          PRINT "THAT'S A NO-NO...TRY 'Q'!":
          GOTO 2000
  8003  POKE 768,104:
        POKE 769,168:
        POKE 770,104:
        POKE 771,166:
        POKE 772,223:
        POKE 773,154:
        POKE 774,72:
        POKE 775,152:
        POKE 776,72:
        POKE 777,96
  8007  ONERR GOTO 8020
  8009  CALL 768:
        IF LZ = 1 THEN 
          8020:
          LZ = 1:
          RESUME
  8020  ONERR GOTO 8030:
        POP :
        POP :
        POP :
        POP :
        POP :
        POP 
  8030  ONERR GOTO 8040:
        NEXT :
        NEXT :
        NEXT :
        NEXT :
        NEXT 
  8040  POKE 216,0:
        PRINT FRE  (0):
        VTAB PEEK (37):
        CALL - 868:
        GOTO 2000
