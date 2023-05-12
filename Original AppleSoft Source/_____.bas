     0  POKE 34,0:
        POKE 35,24:
        POKE 1011,0:
        POKE 1012,0:
        CLEAR 
     1  ONERR GOTO 0
     2  HOME :
        VTAB 7:
        HTAB 11:
        PRINT "SOFTPORN ADVENTURE":
        PRINT :
        HTAB 9:
        PRINT "WRITTEN BY CHUCK BENTON":
        PRINT :
        HTAB 13:
        PRINT "COPYRIGHT 1981":
        PRINT :
        HTAB 11:
        PRINT "BLUE SKY SOFTWARE"
     3  VTAB 22:
        HTAB 2:
        PRINT "SHOULD A SAVED GAME BE LOADED? (Y/N)":
        GET A$
     4  IF A$ = "Y" THEN 
          QQ = 1
     5  HOME :
        VTAB 10:
        HTAB 15:
        PRINT "PLEASE WAIT":
        VTAB 13:
        HTAB 11:
        PRINT "INITIALIZATION PHASE"
    10  ONERR GOTO 0
    15  C  = 3:
        M  = 10:
        N  = 0:
        V  = 0
    20  DE = 0:
        TI = 0:
        DD = 0:
        PI = 0:
        WA = 0
    21  ST = 0:
        AP = 0:
        AS = 0:
        ID = 0:
        BU = 0
    22  R  = 0:
        T  = 0:
        A  = 0:
        BD = 0:
        TV = 0
    23  GC = 0:
        AA = 0:
        WR = 0:
        FH = 0:
        SC = 0
    24  WI = 0:
        RR = 0:
        BG = 0:
        BB = 0:
        BW = 0
    25  BI = 0
   100  DIM D%(30)
   110  D%(1)  = 1:
        D%(2)  = 2:
        D%(3)  = 3:
        D%(4)  = 2
   115  D%(5)  = 5:
        D%(6)  = 6:
        D%(7)  = 7:
        D%(8)  = 19
   120  D%(9)  = 9:
        D%(10) = 13:
        D%(11) = 1:
        D%(12) = 2
   125  D%(13) = 4:
        D%(14) = 2:
        D%(15) = 5:
        D%(16) = 1
   130  D%(17) = 8:
        D%(18) = 6:
        D%(19) = 14:
        D%(20) = 7
   135  D%(21) = 8:
        D%(22) = 1:
        D%(23) = 2:
        D%(24) = 6
   140  D%(25) = 12:
        D%(26) = 18:
        D%(27) = 6:
        D%(28) = 16
   145  D%(29) = 9:
        D%(30) = 10
   200  DIM NG$(20)
   201  S$ = " "
   202  DIM T1$(20),T2$(20),T3$(20),T4$(20),T5$(20)
   203  DIM VC$(30)
   205  DIM SS$(20):
        SS$ = "I SEE SOMETHING!!"
   207  IC$ = "IT'S CLOSED":
        IO$ = "IT'S OPEN"
   210  NG$ = "I CAN'T GO IN THAT DIRECTION!!"
   220  DIM VB$(20),NN$(20),IN$(80)
   230  DIM NA$(200),NB$(200),NC$(200),ND$(200)
   240  DIM NY$(20):
        NY$ = "NOT YET,BUT MAYBE LATER................"
   250  DIM P1$(20),P2$(20),P3$(20),P4$(20)
   260  P3$ = "LUBRICATED":
        P4$ = "RIBBED"
   345  DIM T%(30)
   347  IF PEEK (768) < > 255 THEN 
          0
   350  FOR X = 1 TO 30:
          T%(X) = 0:
        NEXT 
   385  DIM V1%(32,15)
   390  FOR X = 1 TO 15
   391    FOR Y = 1 TO 32:
            V1%(Y,X) = 0
   392    NEXT Y
   393  NEXT X
   402  V1%(1,1)  = 3:
        V1%(1,2)  = 8:
        V1%(1,3)  = 57:
        V1%(1,4)  = 13
   404  V1%(2,1)  = 4:
        V1%(2,2)  = 9:
        V1%(2,3)  = 10:
        V1%(2,4)  = 11:
        V1%(2,5)  = 12
   406  V1%(3,1)  = 3:
        V1%(3,2)  = 15:
        V1%(3,3)  = 14:
        V1%(3,4)  = 23
   408  V1%(4,1)  = 1:
        V1%(4,2)  = 48
   410  V1%(5,1)  = 2:
        V1%(5,2)  = 16:
        V1%(5,3)  = 20
   412  V1%(6,1)  = 1:
        V1%(6,2)  = 56
   414  V1%(7,1)  = 1:
        V1%(7,2)  = 61
   416  V1%(8,1)  = 1:
        V1%(8,2)  = 46
   418  V1%(9,1)  = 2:
        V1%(9,2)  = 17:
        V1%(9,3)  = 60
   420  V1%(10,1) = 1:
        V1%(10,2) = 18
   422  V1%(11,1) = 1:
        V1%(11,2) = 48
   424  V1%(12,1) = 1:
        V1%(12,2) = 19
   426  V1%(13,1) = 1:
        V1%(13,2) = 21
   428  V1%(14,1) = 2:
        V1%(14,2) = 41:
        V1%(14,3) = 22
   430  V1%(15,1) = 1:
        V1%(15,2) = 47
   432  V1%(16,1) = 1:
        V1%(16,2) = 26
   434  V1%(17,1) = 1:
        V1%(17,2) = 24
   436  V1%(18,1) = 2:
        V1%(18,2) = 28:
        V1%(18,3) = 65
   438  V1%(19,1) = 3:
        V1%(19,2) = 14:
        V1%(19,3) = 25:
        V1%(19,4) = 43
   440  V1%(20,1) = 1:
        V1%(20,2) = 34
   442  V1%(21,1) = 3:
        V1%(21,2) = 33:
        V1%(21,3) = 32:
        V1%(21,4) = 49
   444  V1%(22,1) = 2:
        V1%(22,2) = 27:
        V1%(22,3) = 48
   446  V1%(23,1) = 1:
        V1%(23,2) = 30
   448  V1%(24,1) = 2:
        V1%(24,2) = 69:
        V1%(24,3) = 29
   450  V1%(25,1) = 2:
        V1%(25,2) = 14:
        V1%(25,3) = 43
   452  V1%(26,1) = 1:
        V1%(26,2) = 49
   454  V1%(27,1) = 2:
        V1%(27,2) = 42:
        V1%(27,3) = 36
   456  V1%(28,1) = 3:
        V1%(28,2) = 77:
        V1%(28,3) = 55:
        V1%(28,4) = 83
   458  V1%(29,1) = 1:
        V1%(29,2) = 35
   460  V1%(30,1) = 1:
        V1%(30,2) = 34
   462  V1%(31,1) = 1:
        V1%(31,2) = 73
   500  DIM D$(1):
        D$ = CHR$ (4)
   520  DIM OT$(20):
        OT$ = "OPEN SIN SIN SIN SIN ,L560"
   530  DIM CT$(20):
        CT$ = "CLOSE SIN SIN SIN SIN "
   540  DIM RT$(20):
        RT$ = "READ SIN SIN SIN SIN ,R"
   550  DIM OD$(20):
        OD$ = "OPEN LOG LOG LOG LOG ,L560"
   560  DIM CD$(20):
        CD$ = "CLOSE LOG LOG LOG LOG "
   580  DIM RD$(20):
        RD$ = "READ LOG LOG LOG LOG ,R"
   585  ONERR GOTO 8000
   590  IF QQ = 1 THEN 
          890
   600  HOME :
        VTAB 10:
        HTAB 15:
        PRINT "PLEASE WAIT":
        VTAB 13:
        HTAB 12:
        PRINT "GAME BEING LOADED"
   602  VTAB 20:
        HTAB 7:
        PRINT "DUPLICATION FOR OTHER THAN ":
        HTAB 5:
        PRINT "BACKUP PURPOSES IS A VIOLATION":
        HTAB 11:
        PRINT "OF APPLICABLE LAWS"
   605  PRINT D$;"BLOAD CHAIN,A520"
   610  CALL 520" SIN SIN "
   890  HOME 
   900  PRINT :
        PRINT "INSTALL DISK WITH SAVED GAME IN DRIVE 1 HIT THE SPACE BAR TO CONTINUE"
   905  ONERR GOTO 2000
   910  POKE - 16368,0:
        GET A$:
        IF A$ = CHR$ (32) THEN 
          990
   920  GOTO 910
   990  PRINT D$;"NOMON C,I,O":
        VTAB PEEK (37):
        CALL - 868
  1000  D$  = CHR$ (4):
        OS$ = "OPEN SG":
        CS$ = "CLOSE SG"
  1020  PRINT D$;OS$:
        PRINT D$;"READ SG"
  1030  INPUT C:
        INPUT M:
        INPUT N:
        INPUT V
  1031  INPUT GG:
        INPUT R:
        INPUT QC
  1035  INPUT DL:
        INPUT FH:
        INPUT ID:
        INPUT RR
  1036  INPUT TE:
        INPUT SS:
        INPUT UR:
        INPUT MA
  1040  INPUT DE:
        INPUT TI:
        INPUT DD:
        INPUT PI:
        INPUT WA
  1050  INPUT ST:
        INPUT AP:
        INPUT AS:
        INPUT ID:
        INPUT BU
  1060  INPUT R:
        INPUT T:
        INPUT A:
        INPUT BD:
        INPUT TV
  1070  INPUT GC:
        INPUT AA:
        INPUT WR:
        INPUT FH:
        INPUT SC
  1080  INPUT WI:
        INPUT RR:
        INPUT BG:
        INPUT BB:
        INPUT BW
  1090  INPUT BI
  1100  FOR X = 1 TO 30:
          INPUT D%(X):
        NEXT 
  1110  INPUT T1$:
        INPUT T2$:
        INPUT T3$:
        INPUT T4$:
        INPUT T5$
  1120  INPUT P1$:
        INPUT P2$
  1130  INPUT P3$:
        INPUT P4$
  1140  FOR X = 1 TO 30:
          INPUT T%(X):
        NEXT 
  1150  FOR X = 1 TO 15
  1160    FOR Y = 1 TO 32:
            INPUT V1%(Y,X)
  1170    NEXT Y
  1180  NEXT X
  1185  PRINT D$;CS$
  1190  ONERR GOTO 8000
  1191  PRINT :
        PRINT "INSTALL 'SOFTPORN ADVENTURE' IN DRIVE 1 HIT THE SPACE BAR TO CONTINUE"
  1192  POKE - 16368,0:
        GET A$:
        IF A$ = CHR$ (32) THEN 
          1195
  1193  GOTO 1192
  1195  PRINT D$;"NOMON C,I,O":
        VTAB PEEK (37):
        CALL - 868
  1200  GOTO 600
  2000  PRINT "DISK ERROR- HIT RESET TO RESTART OR:":
        GOTO 900
  8000  PRINT "DISK ERROR- HIT RESET TO RESTART OR:":
        GOTO 1191
