     0  D$  = CHR$ (4):
        OS$ = "OPEN SG":
        CS$ = "CLOSE SG"
     1  WS$ = "WRITE SG"
     2  HOME :
        PRINT "PLEASE REMOVE THE 'SOFTPORN ADVENTURE'  DISK AND PLACE ANOTHER DISK IN DRIVE 1. HIT THE SPACE BAR TO CONTINUE"
     3  POKE - 16368,0:
        GET A$:
        IF A$ = CHR$ (32) THEN 
          5
     4  GOTO 3
     5  PRINT D$;"NOMON C,I,O":
        VTAB PEEK (37):
        CALL - 868
     6  PRINT D$;OS$:
        PRINT D$;WS$
    10  PRINT C:
        PRINT M:
        PRINT N:
        PRINT V
    11  PRINT GG:
        PRINT R:
        PRINT QC
    15  PRINT DL:
        PRINT FH:
        PRINT ID:
        PRINT RR
    16  PRINT TE:
        PRINT SS:
        PRINT UR:
        PRINT MA
    20  PRINT DE:
        PRINT TI:
        PRINT DD:
        PRINT PI:
        PRINT WA
    21  PRINT ST:
        PRINT AP:
        PRINT AS:
        PRINT ID:
        PRINT BU
    22  PRINT R:
        PRINT T:
        PRINT A:
        PRINT BD:
        PRINT TV
    23  PRINT GC:
        PRINT AA:
        PRINT WR:
        PRINT FH:
        PRINT SC
    24  PRINT WI:
        PRINT RR:
        PRINT BG:
        PRINT BB:
        PRINT BW
    25  PRINT BI
   100  FOR X = 1 TO 30:
          PRINT D%(X):
        NEXT 
   202  PRINT T1$:
        PRINT T2$:
        PRINT T3$:
        PRINT T4$:
        PRINT T5$
   250  PRINT P1$:
        PRINT P2$
   260  PRINT P3$:
        PRINT P4$
   350  FOR X = 1 TO 30:
          PRINT T%(X):
        NEXT 
   390  FOR X = 1 TO 15
   391    FOR Y = 1 TO 32:
            PRINT V1%(Y,X)
   392    NEXT Y
   393  NEXT X
   394  PRINT D$;CS$:
        ONERR GOTO 8000
   395  HOME :
        PRINT "GAME IS NOW SAVED":
        PRINT :
        PRINT "PLEASE INSTALL 'SOFTPORN ADVENTURE' IN DRIVE 1":
        PRINT "HIT THE SPACE BAR TO CONTINUE"
   396  POKE - 16368,0:
        GET A$:
        IF A$ = CHR$ (32) THEN 
          400
   397  GOTO 396
   400  PRINT D$;"NOMON C,I,O":
        VTAB PEEK (37):
        CALL - 868
   500  PRINT D$;"BLOAD CHAIN, A520"
   510  CALL 520" SIN SIN "
  8000  HOME :
        PRINT "DISK ERROR- HIT RESET TO RESTART OR:":
        POKE 34, PEEK (37) + 1:
        GOTO 395
