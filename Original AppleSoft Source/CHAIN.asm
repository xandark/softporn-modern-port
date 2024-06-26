Name    : CHAIN
Length  : $01C8 (456)
Load at : $0808 (2,056)

    0808: 20 85 03     JSR $0385        
    080B: 20 A6 03     JSR $03A6        
    080E: A9 07        LDA #$07
    0810: 85 8F        STA $8F          
    0812: A5 69        LDA $69          ; Basic variables address LO
    0814: A6 6A        LDX $6A          ; Basic variables address HI
    0816: 85 9D        STA $9D          ; FAC
    0818: 86 9E        STX $9E          ; FAC mantissa hi order
    081A: E4 6C        CPX $6C          ; Basic arrays address HI
    081C: D0 04        BNE $0822
    081E: C5 6B        CMP $6B          ; Basic arrays address LO
    0820: F0 05        BEQ $0827
    0822: 20 7E 02     JSR $027E        
    0825: F0 F3        BEQ $081A
    0827: 85 9F        STA $9F          ; FAC mantissa mid order hi
    0829: 86 A0        STX $A0          
    082B: A9 03        LDA #$03
    082D: 85 8F        STA $8F          
    082F: A5 9F        LDA $9F          ; FAC mantissa mid order hi
    0831: A6 A0        LDX $A0          
    0833: E4 6E        CPX $6E          
    0835: D0 07        BNE $083E
    0837: C5 6D        CMP $6D          
    0839: D0 03        BNE $083E
    083B: 4C E0 02     JMP $02E0        
    083E: 85 9D        STA $9D          ; FAC
    0840: 86 9E        STX $9E          ; FAC mantissa hi order
    0842: A0 00        LDY #$00
    0844: B1 9D        LDA ($9D),Y
    0846: AA           TAX 
    0847: C8           INY 
    0848: B1 9D        LDA ($9D),Y
    084A: 08           PHP 
    084B: C8           INY 
    084C: B1 9D        LDA ($9D),Y
    084E: 65 9F        ADC $9F          ; FAC mantissa mid order hi
    0850: 85 9F        STA $9F          ; FAC mantissa mid order hi
    0852: C8           INY 
    0853: B1 9D        LDA ($9D),Y
    0855: 65 A0        ADC $A0          
    0857: 85 A0        STA $A0          
    0859: 28           PLP 
    085A: 10 D3        BPL $082F
    085C: 8A           TXA 
    085D: 30 D0        BMI $082F
    085F: C8           INY 
    0860: B1 9D        LDA ($9D),Y
    0862: A0 00        LDY #$00
    0864: 0A           ASL 
    0865: 69 05        ADC #$05
    0867: 65 9D        ADC $9D          ; FAC
    0869: 85 9D        STA $9D          ; FAC
    086B: 90 02        BCC $086F
    086D: E6 9E        INC $9E          ; FAC mantissa hi order
    086F: A6 9E        LDX $9E          ; FAC mantissa hi order
    0871: E4 A0        CPX $A0          
    0873: D0 04        BNE $0879
    0875: C5 9F        CMP $9F          ; FAC mantissa mid order hi
    0877: F0 BA        BEQ $0833
    0879: 20 88 02     JSR $0288        
    087C: F0 F3        BEQ $0871
    087E: B1 9D        LDA ($9D),Y
    0880: 30 46        BMI $08C8
    0882: C8           INY 
    0883: B1 9D        LDA ($9D),Y
    0885: 10 41        BPL $08C8
    0887: C8           INY 
    0888: B1 9D        LDA ($9D),Y
    088A: F0 3C        BEQ $08C8
    088C: C8           INY 
    088D: B1 9D        LDA ($9D),Y
    088F: AA           TAX 
    0890: C8           INY 
    0891: B1 9D        LDA ($9D),Y
    0893: 85 9C        STA $9C          
    0895: 86 9B        STX $9B          
    0897: C5 B0        CMP $B0          
    0899: F0 02        BEQ $089D
    089B: B0 2B        BCS $08C8
    089D: 88           DEY 
    089E: 88           DEY 
    089F: B1 9D        LDA ($9D),Y
    08A1: 48           PHA 
    08A2: 38           SEC 
    08A3: A5 6F        LDA $6F          
    08A5: 85 94        STA $94          
    08A7: F1 9D        SBC ($9D),Y
    08A9: C8           INY 
    08AA: 91 9D        STA ($9D),Y
    08AC: 85 6F        STA $6F          
    08AE: C8           INY 
    08AF: A5 70        LDA $70          
    08B1: 85 95        STA $95          
    08B3: E9 00        SBC #$00
    08B5: 91 9D        STA ($9D),Y
    08B7: 85 70        STA $70          
    08B9: 68           PLA 
    08BA: 18           CLC 
    08BB: 65 9B        ADC $9B          
    08BD: 85 96        STA $96          
    08BF: A5 9C        LDA $9C          
    08C1: 69 00        ADC #$00
    08C3: 85 97        STA $97          
    08C5: 20 A9 03     JSR $03A9        
    08C8: A5 8F        LDA $8F          
    08CA: 18           CLC 
    08CB: 65 9D        ADC $9D          ; FAC
    08CD: 85 9D        STA $9D          ; FAC
    08CF: 90 02        BCC $08D3
    08D1: E6 9E        INC $9E          ; FAC mantissa hi order
    08D3: A5 9D        LDA $9D          ; FAC
    08D5: A6 9E        LDX $9E          ; FAC mantissa hi order
    08D7: A0 00        LDY #$00
    08D9: 60           RTS 
    08DA: C4 C1        CPY $C1          
    08DC: CF           ??? 
    08DD: CC 84 8D     CPY $8D84        
    08E0: A9 00        LDA #$00
    08E2: 85 94        STA $94          
    08E4: 85 9C        STA $9C          
    08E6: 85 97        STA $97          
    08E8: A9 69        LDA #$69
    08EA: 85 9B        STA $9B          
    08EC: A9 71        LDA #$71
    08EE: 85 96        STA $96          
    08F0: A9 01        LDA #$01
    08F2: 85 95        STA $95          
    08F4: 20 A9 03     JSR $03A9        
    08F7: A2 01        LDX #$01
    08F9: B5 69        LDA $69,X
    08FB: 95 9B        STA $9B,X
    08FD: B5 6D        LDA $6D,X
    08FF: 95 96        STA $96,X
    0901: B5 6F        LDA $6F,X
    0903: 95 94        STA $94,X
    0905: CA           DEX 
    0906: F0 F1        BEQ $08F9
    0908: 20 A9 03     JSR $03A9        
    090B: A5 94        LDA $94          
    090D: 85 A1        STA $A1          
    090F: A6 95        LDX $95          
    0911: E8           INX 
    0912: 86 A2        STX $A2          
    0914: A0 06        LDY #$06
    0916: B9 D9 02     LDA $02D9,Y
    0919: 20 A0 03     JSR $03A0        
    091C: 88           DEY 
    091D: D0 F7        BNE $0916
    091F: C8           INY 
    0920: B1 B8        LDA ($B8),Y
    0922: F0 0A        BEQ $092E
    0924: C9 22        CMP #$22
    0926: F0 06        BEQ $092E
    0928: 20 A0 03     JSR $03A0        
    092B: C8           INY 
    092C: D0 F2        BNE $0920
    092E: A9 3C        LDA #$3C
    0930: 85 36        STA $36          ; CSWL
    0932: A9 03        LDA #$03
    0934: 85 37        STA $37          ; CSHW
    0936: 20 EA 03     JSR $03EA        ; VECT
    0939: 4C A3 03     JMP $03A3        
    093C: 20 93 FE     JSR $FE93        ; disconnect DOS from I/O links
    093F: 20 EA 03     JSR $03EA        ; VECT
    0942: 20 9D 03     JSR $039D        
    0945: 38           SEC 
    0946: A5 69        LDA $69          ; Basic variables address LO
    0948: E5 F8        SBC $F8          
    094A: 85 9D        STA $9D          ; FAC
    094C: A5 6A        LDA $6A          ; Basic variables address HI
    094E: E5 F9        SBC $F9          ; ROT
    0950: 85 9E        STA $9E          ; FAC mantissa hi order
    0952: A2 FA        LDX #$FA
    0954: 20 76 03     JSR $0376        
    0957: E8           INX 
    0958: 20 76 03     JSR $0376        
    095B: A2 01        LDX #$01
    095D: B5 FE        LDA $FE,X
    095F: 95 6F        STA $6F,X
    0961: 95 3E        STA $3E,X
    0963: B5 A1        LDA $A1,X
    0965: 95 3C        STA $3C,X
    0967: B5 69        LDA $69,X
    0969: 95 42        STA $42,X
    096B: CA           DEX 
    096C: F0 EF        BEQ $095D
    096E: A0 00        LDY #$00
    0970: 20 2C FE     JSR $FE2C        ; move a block of memory
    0973: 6C AE 03     JMP ($03AE)
    0976: 18           CLC 
    0977: B5 00        LDA $00,X
    0979: 65 9D        ADC $9D          ; FAC
    097B: 95 71        STA $71,X
    097D: E8           INX 
    097E: B5 00        LDA $00,X
    0980: 65 9E        ADC $9E          ; FAC mantissa hi order
    0982: 95 71        STA $71,X
    0984: 60           RTS 
    0985: AD 00 E0     LDA $E000        
    0988: A0 0B        LDY #$0B
    098A: C9 4C        CMP #$4C
    098C: F0 02        BEQ $0990
    098E: A0 17        LDY #$17
    0990: A2 0B        LDX #$0B
    0992: B9 B8 03     LDA $03B8,Y
    0995: 9D AC 03     STA $03AC,X
    0998: 88           DEY 
    0999: CA           DEX 
    099A: 10 F6        BPL $0992
    099C: 60           RTS 
    099D: 6C AC 03     JMP ($03AC)
    09A0: 6C B2 03     JMP ($03B2)
    09A3: 6C B0 03     JMP ($03B0)
    09A6: 6C B4 03     JMP ($03B4)
    09A9: 6C B6 03     JMP ($03B6)
    09AC: 00           BRK 
    09AD: 00           BRK 
    09AE: 00           BRK 
    09AF: 00           BRK 
    09B0: 00           BRK 
    09B1: 00           BRK 
    09B2: 00           BRK 
    09B3: 00           BRK 
    09B4: 00           BRK 
    09B5: 00           BRK 
    09B6: 00           BRK 
    09B7: 00           BRK 
    09B8: 65 D6        ADC $D6          
    09BA: D2 D7        CMP ($D7)
    09BC: FB           ??? 
    09BD: DA           PHX 
    09BE: 5C           ??? 
    09BF: DB           ??? 
    09C0: 84 E4        STY $E4          ; HCOLOR
    09C2: 9A           TXS 
    09C3: D3           ??? 
    09C4: 65 0E        ADC $0E          
    09C6: D4           ??? 
    09C7: 0F           ??? 
    09C8: FC           ??? 
    09C9: 12 5F        ORA ($5F)
    09CB: 13           ??? 
    09CC: 7B           ??? 
    09CD: 1C 9A 0B     TRB $0B9A        
