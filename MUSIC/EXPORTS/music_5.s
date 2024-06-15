; This file is for the FamiStudio Sound Engine and was generated by FamiStudio

.if FAMISTUDIO_CFG_C_BINDINGS
.export _music_data_famidash_music5=music_data_famidash_music5
.endif

music_data_famidash_music5:
	.byte 1
	.word @instruments
	.word @samples-4
; 00 : custom_endgame
	.word @song0ch0
	.word @song0ch1
	.word @song0ch2
	.word @song0ch3
	.word @song0ch4
	.word 251,209

.export music_data_famidash_music5
.global FAMISTUDIO_DPCM_PTR

@instruments:
	.word @env11,@env14,@env18,@env0 ; 00 : blank
	.word @env12,@env5,@env18,@env0 ; 01 : rel hats
	.word @env22,@env14,@env18,@env0 ; 02 : quiet bass
	.word @env24,@env5,@env1,@env0 ; 03 : cymbal
	.word @env13,@env17,@env1,@env0 ; 04 : snare
	.word @env7,@env23,@env18,@env0 ; 05 : kick
	.word @env28,@env14,@env21,@env0 ; 06 : shift string
	.word @env2,@env14,@env20,@env0 ; 07 : sample
	.word @env6,@env5,@env18,@env0 ; 08 : hat
	.word @env10,@env3,@env18,@env0 ; 09 : tight triangle kick
	.word @env16,@env14,@env18,@env0 ; 0a : echo
	.word @env9,@env14,@env4,@env0 ; 0b : endgame lead
	.word @env25,@env19,@env18,@env0 ; 0c : clap

@env0:
	.byte $00,$c0,$7f,$00,$02
@env1:
	.byte $c1,$c0,$00,$01
@env2:
	.byte $00,$c9,$c8,$c7,$c6,$c6,$c5,$c5,$c4,$00,$08
@env3:
	.byte $da,$d0,$ce,$c4,$00,$03
@env4:
	.byte $c2,$c2,$c0,$00,$00
@env5:
	.byte $bd,$c0,$00,$01
@env6:
	.byte $00,$c8,$c4,$c2,$c0,$00,$04
@env7:
	.byte $00,$cd,$c9,$c5,$c2,$c1,$c0,$00,$06
@env8:
	.byte $c0,$c4,$c0,$00,$00
@env9:
	.byte $00,$cf,$cd,$cb,$c7,$c7,$ca,$00,$06
@env10:
	.byte $00,$cf,$7f,$00,$02
@env11:
	.byte $04,$cf,$00,$01,$ca,$c6,$c4,$c2,$c0,$00,$08
@env12:
	.byte $00,$c8,$c6,$c5,$c5,$c4,$c4,$c3,$02,$c2,$02,$c1,$02,$c0,$00,$0d
@env13:
	.byte $00,$cd,$cb,$c8,$c6,$c5,$c4,$c3,$c2,$c1,$c1,$c0,$00,$0b
@env14:
	.byte $c0,$7f,$00,$01
@env15:
	.byte $c0,$cc,$c0,$00,$00
@env16:
	.byte $00,$cb,$c7,$c5,$c4,$c3,$c2,$c2,$c1,$c1,$c0,$c2,$c2,$c1,$05,$c0,$00,$0f
@env17:
	.byte $c6,$cc,$00,$01
@env18:
	.byte $7f,$00,$00
@env19:
	.byte $bc,$c1,$c0,$00,$02
@env20:
	.byte $c2,$7f,$00,$00
@env21:
	.byte $c1,$c2,$c1,$c1,$00,$00
@env22:
	.byte $00,$c9,$c7,$c5,$00,$03
@env23:
	.byte $c9,$cf,$00,$01
@env24:
	.byte $18,$cf,$ce,$cd,$cc,$cb,$ca,$c9,$c8,$c8,$c7,$c7,$c6,$02,$c5,$c5,$c4,$02,$c3,$03,$c2,$c2,$00,$15,$c2,$c2,$c1,$03,$c0,$00,$1c
@env25:
	.byte $00,$cf,$c0,$cb,$ca,$c9,$c8,$c6,$c5,$c4,$c2,$c1,$c0,$00,$0c
@env26:
	.byte $c0,$c3,$c0,$00,$00
@env27:
	.byte $00,$c0,$be,$bc,$bc,$bd,$bf,$c1,$c3,$c4,$c4,$c2,$00,$01
@env28:
	.byte $08,$c4,$c5,$c6,$08,$c5,$00,$05,$c5,$04,$c4,$07,$c3,$05,$c2,$02,$c1,$02,$c0,$00,$12
@env29:
	.byte $c0,$c5,$c5,$00,$00

@samples:
	.byte $50+.lobyte(FAMISTUDIO_DPCM_PTR),$25,$0f,$40 ; 00 kick (Pitch:15)
	.byte $20+.lobyte(FAMISTUDIO_DPCM_PTR),$3f,$07,$40 ; 01 ripped00.dmc (Pitch:7)
	.byte $20+.lobyte(FAMISTUDIO_DPCM_PTR),$3f,$0f,$40 ; 02 ripped00.dmc (Pitch:15)
	.byte $30+.lobyte(FAMISTUDIO_DPCM_PTR),$3e,$0a,$40 ; 03 ripped01.dmc (Pitch:10)
	.byte $30+.lobyte(FAMISTUDIO_DPCM_PTR),$3e,$0f,$40 ; 04 ripped01.dmc (Pitch:15)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$3e,$0f,$40 ; 05 ripped02.dmc (Pitch:15)
	.byte $10+.lobyte(FAMISTUDIO_DPCM_PTR),$3f,$0f,$40 ; 06 ripped03.dmc (Pitch:15)
	.byte $40+.lobyte(FAMISTUDIO_DPCM_PTR),$3f,$0f,$40 ; 07 ripped04.dmc (Pitch:15)
	.byte $5a+.lobyte(FAMISTUDIO_DPCM_PTR),$41,$0f,$34 ; 08 snare (Pitch:15)

@song0ch0:
@song0ch0loop:
	.byte $7a, $80, $50, $09, $35, $32, $4e, $02, $00, $81, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $00, $48
	.byte $04, $50, $10, $35, $32, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48
	.byte $02, $50, $11, $38, $36, $48, $02, $50, $14, $35, $33, $48, $02, $50, $20, $35, $32, $00, $50, $09, $35, $32, $00, $81
	.byte $48, $02, $50, $11, $38, $36, $48, $02, $50, $1b, $38, $35, $00, $50, $09, $3d, $36, $81, $50, $08, $35, $2e, $83, $48
	.byte $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36
@song0ref109:
	.byte $48, $02, $50, $14, $35, $33, $48, $02, $50, $14, $35, $33, $00, $50, $06, $35, $33, $00, $81, $48, $02, $50, $11, $38
	.byte $36, $48, $02, $50, $11, $38, $36, $00, $48, $04, $50, $0a, $35, $33, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11
	.byte $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $14, $35, $33, $48, $02, $50, $14
	.byte $35, $33, $00, $50, $09, $35, $30, $81, $00, $48, $02, $50, $1b, $38, $35, $48, $02, $50, $1b, $38, $35, $00, $50, $09
	.byte $3d, $36, $81, $50, $08, $35, $2e, $83, $48, $02, $50, $1b, $38, $35, $48, $02, $50, $1b, $38, $35, $00, $48, $02, $50
	.byte $14, $35, $33, $00, $48, $02, $50, $38, $35, $30, $00, $83, $50, $06, $35, $33, $00, $81, $48, $02, $50, $11, $38, $36
	.byte $48, $02, $50, $11, $38, $36, $00, $83, $48, $04, $50, $0a, $35, $33, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11
	.byte $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $1b, $38, $35
	.byte $41, $09
	.word @song0ref109
	.byte $50, $09, $3d, $36, $81, $50, $08, $35, $2e, $83, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48, $02
	.byte $50, $14, $35, $33, $48, $02, $50, $38, $35, $30, $00, $50, $06, $35, $33, $00, $81, $48, $02, $50, $1b, $38, $35, $48
	.byte $02, $50, $7f, $38, $2c, $00, $83, $48, $04, $50, $16, $35, $31, $48, $02, $50, $1b, $38, $35, $48, $02, $50, $1b, $38
	.byte $35, $48, $02, $50, $1b, $38, $35, $48, $02, $50, $1b, $38, $35, $48, $02, $50, $14, $35, $33, $48, $02, $50, $46, $35
	.byte $2f, $00, $50, $09, $35, $30, $81, $00, $48, $02, $50, $11, $38, $36, $48, $02, $50, $3b, $38, $32, $50, $09, $3d, $36
	.byte $81, $50, $08, $35, $2e, $83, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36
	.byte $48, $02, $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $50, $0b, $38, $36, $00, $50, $06, $38, $36, $00, $48, $02
	.byte $50, $11, $38, $36, $48, $02, $50, $11, $38, $36, $48, $02, $50, $1b, $38, $35, $00, $50, $03, $38, $37, $00, $50, $03
	.byte $38, $37, $00, $50, $03, $38, $37, $00, $50, $03, $38, $37, $00, $50, $05, $35, $30, $85, $00, $93, $4e, $00, $81, $8f
	.byte $7f
@song0ref511:
	.byte $4f, $01, $94
@song0ref514:
	.byte $34, $85, $33, $83, $47, $03, $31, $33, $89, $31, $89, $2c, $b9, $8c, $25, $0d, $20, $81, $00, $81, $8f
	.byte $41, $0a
	.word @song0ref511
@song0ref538:
	.byte $85, $2d, $87, $2d, $2f, $2d, $2c, $83, $47, $03, $2c, $33, $85, $31, $9d, $48, $06, $96
@song0ref556:
	.byte $25, $48, $04, $25, $28, $74, $81, $7f, $2a, $74, $81, $7f, $2b
@song0ref569:
	.byte $47, $01, $25, $2c, $47, $01, $25, $2b, $74, $81, $7f, $2a, $74, $81, $7f, $25, $28, $48, $05, $25, $48, $04, $25, $28
	.byte $74, $81, $7f, $2a, $74, $81, $7f, $2b, $47, $01, $25, $27
@song0ref605:
	.byte $74, $81, $7f, $28, $74, $81, $7f, $27, $74, $81, $7f, $25, $27, $48, $05, $21, $48, $04, $21, $25, $74, $81, $7f, $27
	.byte $21, $28, $25, $2c, $81, $2d, $74, $81, $7f, $48, $04, $2c, $48, $04, $2d, $2b, $74, $81, $7f, $27, $47, $01, $1e, $20
	.byte $47, $01, $25, $27, $74, $81, $7f, $28, $74, $81, $7f, $27, $81, $49, .lobyte(@env27), .hibyte(@env27), $87, $49, .lobyte(@env0)
	.byte .hibyte(@env0), $4a, $96
@song0ref675:
	.byte $25, $24, $48, $06, $25, $48, $04, $25, $2c, $74, $81, $7f, $2b, $74, $81, $7f, $2a
	.byte $41, $11
	.word @song0ref569
	.byte $2a
	.byte $41, $0f
	.word @song0ref605
@song0ref699:
	.byte $2a, $81, $2d, $74, $81, $7f, $48, $04, $2c, $48, $04, $31, $2d, $74, $81, $7f, $2c, $47, $01, $1e, $20, $47, $01, $25
	.byte $27, $74, $81, $7f, $24, $74, $81, $7f, $25, $81, $25, $85, $00, $81, $48, $06, $8e
	.byte $41, $3b
	.word @song0ref556
	.byte $49, .lobyte(@env0), .hibyte(@env0), $4a, $8e
	.byte $41, $09
	.word @song0ref675
	.byte $41, $11
	.word @song0ref569
	.byte $2a
	.byte $41, $0f
	.word @song0ref605
	.byte $41, $16
	.word @song0ref699
	.byte $8f
	.byte $41, $0a
	.word @song0ref511
	.byte $c5, $8f, $4f, $01
	.byte $41, $0a
	.word @song0ref514
	.byte $41, $0c
	.word @song0ref538
	.byte $81, $45, $87, $42
	.word @song0ch0loop
@song0ch1:
@song0ch1loop:
	.byte $4c, $83, $4f, $02, $83, $7f, $51, $fb, $50, $8e
@song0ref792:
	.byte $25, $83
@song0ref794:
	.byte $7f, $51, $fb, $90, $28, $83, $7f, $51, $fb, $00, $25, $8d, $7f, $51, $fb, $50, $25, $87, $7f, $51, $fb, $90, $28, $83
	.byte $7f, $51, $fb, $90, $25, $83, $7f, $51, $fb, $60, $25, $00, $85, $7f, $51, $fb, $50
	.byte $41, $0a
	.word @song0ref792
	.byte $7f, $51, $fb, $c0, $25, $83, $81, $7f, $48, $02, $80, $2c, $48, $02, $28, $48, $02, $27, $48, $02, $25, $00, $85, $51
	.byte $fb, $50, $8e, $25, $87
	.byte $41, $0d
	.word @song0ref794
	.byte $7f, $51, $fb, $50, $25, $87, $7f, $51, $fb, $90, $28, $83, $7f, $51, $fb, $00, $25, $8d, $7f, $51, $fb, $50, $25, $85
	.byte $7f, $51, $fb, $90, $28, $83, $7f, $51, $fb, $90, $25, $83, $81, $25, $9b, $00, $25, $9b
@song0ref912:
	.byte $00, $76
@song0ref914:
	.byte $4f, $02, $80, $09, $00, $09, $81, $00, $09, $81, $00, $8b, $7f, $8c, $28, $81, $27, $4f, $02, $81, $76, $80, $08, $81
	.byte $00, $08, $7f, $8c, $25, $81, $45, $89, $20, $81, $76, $4f, $02, $80, $09, $00, $09, $81, $00, $09, $81, $00, $91, $4f
	.byte $02, $81, $7f, $8c, $25, $81, $00, $81, $20, $81, $20, $89, $14
	.byte $41, $20
	.word @song0ref912
@song0ref978:
	.byte $7f, $8c, $20, $00, $20, $00, $27, $81, $28, $81, $25, $00, $31, $81, $45, $81, $20, $45, $20, $81, $21, $81, $23, $81
	.byte $24, $81, $4f, $01, $00
@song0ref1007:
	.byte $84, $0d, $78, $4b, .lobyte(@env29), .hibyte(@env29), $80, $14, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84
	.byte $0d, $00, $78, $4b, .lobyte(@env29), .hibyte(@env29), $80, $14, $7f, $4d, $48, $04, $84, $0d, $4b, .lobyte(@env14)
	.byte .hibyte(@env14), $4c, $0d, $78, $4b, .lobyte(@env29), .hibyte(@env29), $80, $14, $00, $47, $03, $7f, $4d, $84, $0d
	.byte $81, $78, $4b, .lobyte(@env8), .hibyte(@env8), $80, $1c, $85, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84
	.byte $09, $00, $78, $4b, .lobyte(@env26), .hibyte(@env26), $80, $1e, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84
	.byte $09, $00, $78, $4b, .lobyte(@env26), .hibyte(@env26), $80, $1e, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84
	.byte $09, $81, $78, $4b, .lobyte(@env8), .hibyte(@env8), $80, $1c, $00, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c
	.byte $84, $08, $81, $78, $4b, .lobyte(@env8), .hibyte(@env8), $80, $1c, $83, $7f, $4b, .lobyte(@env14), .hibyte(@env14)
	.byte $4c, $84, $08, $47, $03, $09, $81, $78, $4b, .lobyte(@env26), .hibyte(@env26), $80, $1e, $00, $81, $4d, $1e, $00, $7f
	.byte $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84, $09, $78, $4b, .lobyte(@env26), .hibyte(@env26), $80, $1b, $00, $7f
	.byte $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84, $09, $78, $4b, .lobyte(@env26), .hibyte(@env26), $80, $1b, $00, $4d
	.byte $1b, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c, $84, $0f, $81, $78, $4b, .lobyte(@env15), .hibyte(@env15), $80
	.byte $14, $00, $81, $4d, $14, $00, $81, $4d, $1b, $00, $4b, .lobyte(@env8), .hibyte(@env8), $1c, $89, $00, $81, $4f, $01
	.byte $81, $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c
	.byte $41, $2b
	.word @song0ref1007
@song0ref1212:
	.byte $00, $78, $4b, .lobyte(@env15), .hibyte(@env15), $80, $14, $00, $81, $4d, $14, $00, $81, $4d, $1b, $00, $4d, $19, $81
	.byte $7f, $4d, $48, $06, $96, $28, $4d, $48, $05, $27, $4d, $48, $04, $25, $00, $83, $4f, $01, $00, $4b, .lobyte(@env14)
	.byte .hibyte(@env14), $4c
	.byte $41, $39
	.word @song0ref1007
	.byte $7f, $4b, .lobyte(@env14), .hibyte(@env14), $4c
	.byte $41, $2b
	.word @song0ref1007
	.byte $41, $0b
	.word @song0ref1212
	.byte $7f, $4d, $48, $06, $96, $1c, $4d, $48, $05, $1b, $4d, $48, $04, $19, $00, $83, $76, $4b, .lobyte(@env14), .hibyte(@env14)
	.byte $4c
	.byte $41, $28
	.word @song0ref914
	.byte $81, $25, $0d, $20, $81, $14
	.byte $41, $20
	.word @song0ref912
	.byte $41, $09
	.word @song0ref978
	.byte $81, $45, $87, $42
	.word @song0ch1loop
@song0ch2:
@song0ch2loop:
	.byte $ff
@song0ref1312:
	.byte $92, $09, $8e, $0d, $00, $85, $92, $09, $09, $09, $09, $09, $00, $83, $09, $80, $19
	.byte $41, $0b
	.word @song0ref1312
	.byte $48, $03, $80, $19, $48, $03, $19
	.byte $41, $0b
	.word @song0ref1312
	.byte $80, $19, $81, $92, $09, $8e, $0d, $00, $83, $92, $09, $09, $09, $09, $09, $00, $87, $9f, $8e, $14, $85, $10, $85, $0f
	.byte $85, $0d, $85
@song0ref1369:
	.byte $15, $00, $15, $81, $00, $15, $48, $02, $81, $48, $04, $15, $15, $00, $15, $00, $1c, $81, $00, $81, $19, $00, $19, $81
	.byte $00, $19, $48, $02, $81, $48, $04, $19, $14, $00, $14, $81, $00, $14, $48, $02, $81, $48, $04, $14, $15, $00, $15, $81
	.byte $00, $15, $48, $02, $81, $48, $04, $15, $14, $00, $14, $00, $1b, $81, $1c, $81, $19, $81, $00, $85, $48, $03, $14, $48
	.byte $03, $14, $14, $81, $00, $81, $14, $81, $00, $81
	.byte $41, $38
	.word @song0ref1369
	.byte $15, $81, $17, $81, $18, $81
@song0ref1460:
	.byte $47, $03
@song0ref1462:
	.byte $19, $00, $47, $03, $19, $81, $00, $19, $48, $04, $81, $48, $02, $19, $47, $03, $19, $00, $47, $03, $19, $81, $00, $1c
	.byte $48, $04, $81, $48, $02, $1c, $47, $03, $15, $00, $47, $03, $15, $81, $00, $15, $48, $04, $81, $48, $02, $15, $47, $03
	.byte $14, $00, $47, $03, $14, $81, $00, $14, $48, $04, $81, $48, $02, $14, $47, $03, $15, $81, $00, $47, $03, $15, $00, $15
	.byte $00, $15, $81, $00, $15, $00, $47, $03, $1c, $81, $1b, $81, $47, $03, $1b, $00, $81, $47, $03, $1b, $00, $81, $47, $03
	.byte $14, $00, $47, $03, $14, $85, $00, $81, $47, $03, $14, $00
	.byte $41, $38
	.word @song0ref1460
	.byte $8b, $80, $20, $81, $47, $03, $8e
	.byte $41, $3e
	.word @song0ref1462
	.byte $41, $38
	.word @song0ref1460
	.byte $8b, $80, $20, $81, $8e
	.byte $41, $3e
	.word @song0ref1369
	.byte $41, $32
	.word @song0ref1369
	.byte $45, $87, $42
	.word @song0ch2loop
@song0ch3:
	.byte $46, $06
@song0ch3loop:
@song0ref1605:
	.byte $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $0c, $83
@song0ref1620:
	.byte $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81
	.byte $46, $07, $81, $46, $05, $81
	.byte $41, $0a
	.word @song0ref1620
	.byte $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81
	.byte $41, $09
	.word @song0ref1605
	.byte $46, $06, $8b, $4f, $01, $8e, $1b, $81, $7a, $4f, $01, $80, $16, $00, $1d, $81, $00, $16, $81, $00, $46, $03, $7f, $4f
	.byte $00, $88, $1f, $85, $8a, $19, $81, $19
@song0ref1700:
	.byte $81, $46, $07, $1f, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $86, $1d, $46, $05, $81, $46, $07, $8a, $1f
	.byte $46, $05, $1f, $46, $07, $1f, $46, $05, $1f, $46, $07, $1f, $46, $05, $00, $46, $07, $86, $1d, $46, $05, $81, $46, $07
	.byte $8a, $1f, $46, $05
	.byte $41, $0f
	.word @song0ref1700
	.byte $46, $07, $81, $46, $05, $81, $46, $07, $8a, $1f, $46, $05, $90, $1f, $46, $07, $88, $21, $46, $05, $90, $1f, $46, $07
	.byte $86, $1d, $46, $05, $90, $1f, $46, $07, $8a, $1f, $46, $05, $1f, $46, $07, $1f, $46, $05, $1f, $46, $07, $1f, $46, $05
	.byte $90, $1d, $46, $07, $86, $1d, $46, $05, $90, $1f, $46, $07, $88, $21, $46, $05, $90, $1f, $46, $07, $8a, $1f, $46, $05
	.byte $90, $1f, $46, $07, $88, $21, $46, $05, $90, $1f, $46, $0c, $86, $1d, $46, $07, $8a, $1f, $46, $05, $1f, $46, $07, $1f
	.byte $46, $05, $1f, $46, $07, $1f, $46, $05, $00, $46, $07, $86, $1d, $46, $05, $81, $46, $07, $90, $1f, $46, $05, $1f, $46
	.byte $03, $86, $1d, $85, $90, $1b, $1b, $1b, $1b, $1b, $85, $16, $85, $8a, $1d, $85, $78, $4f, $01, $80, $1a, $81, $8a, $1d
	.byte $81, $80, $17, $85, $16, $00, $81, $4f, $00, $81, $46, $07, $7f
@song0ref1912:
	.byte $86, $1f, $46, $05, $81, $46, $07, $82
@song0ref1920:
	.byte $1f, $46, $05, $81, $46, $07, $88, $1f, $46, $05, $81, $46, $07, $82, $1f, $46, $05, $8a, $1c, $46, $07, $82, $1d, $46
	.byte $05, $81, $46, $07, $1f, $46, $05, $81, $46, $07, $88, $1f, $46, $05, $81, $46, $07, $82, $1f, $46, $05, $81, $46, $07
	.byte $1d, $46, $05, $81, $46, $07
	.byte $41, $10
	.word @song0ref1920
	.byte $46, $07
	.byte $41, $0d
	.word @song0ref1920
	.byte $46, $05, $8a, $1c, $46, $07, $82, $1d, $46, $05, $81, $46, $07
	.byte $41, $0e
	.word @song0ref1920
	.byte $46, $07
	.byte $41, $12
	.word @song0ref1912
	.byte $46, $07
	.byte $41, $10
	.word @song0ref1920
	.byte $46, $07
	.byte $41, $0d
	.word @song0ref1920
	.byte $46, $05, $8a, $1c, $46, $07, $82, $1d, $46, $05, $81, $46, $07, $1f, $46, $05, $81, $46, $07, $88, $1f, $46, $05, $81
	.byte $46, $07, $82, $1f, $46, $05, $8a, $1c, $46, $07, $82, $1d, $46, $05, $81, $46, $07, $88, $22, $46, $05, $22, $46, $07
	.byte $22, $46, $05, $22, $46, $07, $22, $46, $05, $22
@song0ref2071:
	.byte $46, $07, $86, $1f, $46, $05, $81, $46, $07, $82
@song0ref2081:
	.byte $1f, $46, $05, $81, $46, $07, $86, $1f, $46, $05, $81, $46, $07, $82, $1f, $46, $05, $81, $46, $07, $1f, $46, $05, $81
	.byte $46, $07, $1f, $46, $05, $81, $46, $07, $86, $1f, $46, $05, $81, $46, $07, $82, $1f, $46, $05, $81, $46, $07, $1f, $46
	.byte $05, $81, $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $0d
	.word @song0ref2081
	.byte $46, $05, $1f
	.byte $41, $12
	.word @song0ref2071
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2081
	.byte $46, $07
	.byte $41, $0d
	.word @song0ref2081
	.byte $46, $05, $1f, $46, $07, $86, $1f, $46, $05, $81, $46, $07, $45, $46, $05, $81, $46, $07, $76, $98
@song0ref2227:
	.byte $1b, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07
	.byte $1b, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07, $81, $46, $05, $81, $46, $07
	.byte $41, $10
	.word @song0ref2227
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2227
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2227
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2227
	.byte $46, $07
	.byte $41, $10
	.word @song0ref2227
	.byte $46, $07
	.byte $41, $0c
	.word @song0ref2227
	.byte $46, $07, $8d, $42
	.word @song0ch3loop
@song0ch4:
@song0ch4loop:
	.byte $d3, $02, $48, $03, $81, $02, $81, $00, $81, $02, $48, $03, $81, $02, $81, $00, $02, $93
@song0ref2328:
	.byte $02, $81, $00, $85, $02, $02, $02, $02, $02, $81, $00, $85
	.byte $41, $0c
	.word @song0ref2328
	.byte $41, $0c
	.word @song0ref2328
	.byte $02, $81, $00, $83, $02, $02, $02, $02, $02, $81, $00, $85, $9f, $01, $85, $01, $81, $01, $89, $01, $85
@song0ref2367:
	.byte $01, $81, $04, $81, $09, $04, $81, $01, $01, $81, $01, $81, $09, $85, $01, $81, $02, $81, $09, $02, $81
@song0ref2388:
	.byte $01, $01, $81, $01, $81, $09, $81, $01, $81
	.byte $41, $0d
	.word @song0ref2367
	.byte $81, $01, $01, $01, $85, $09, $83
	.byte $41, $09
	.word @song0ref2388
	.byte $41, $1e
	.word @song0ref2367
	.byte $41, $0d
	.word @song0ref2367
	.byte $81, $01, $01, $01, $85, $09, $83, $01, $01, $81, $09, $09, $09, $09, $09
@song0ref2431:
	.byte $09
@song0ref2432:
	.byte $01, $81, $01, $81, $09, $85, $01, $81, $01, $81, $09, $85
	.byte $41, $0b
	.word @song0ref2432
@song0ref2447:
	.byte $83, $01
@song0ref2449:
	.byte $01, $83, $01, $09, $81, $01, $81, $01, $83, $01, $09, $81, $01, $81
	.byte $41, $0e
	.word @song0ref2449
	.byte $41, $0c
	.word @song0ref2432
	.byte $41, $0b
	.word @song0ref2432
	.byte $41, $10
	.word @song0ref2447
	.byte $41, $0d
	.word @song0ref2449
	.byte $41, $0d
	.word @song0ref2431
	.byte $41, $0b
	.word @song0ref2432
	.byte $41, $10
	.word @song0ref2447
	.byte $41, $0e
	.word @song0ref2449
	.byte $41, $0c
	.word @song0ref2432
	.byte $41, $0b
	.word @song0ref2432
	.byte $41, $10
	.word @song0ref2447
	.byte $41, $0d
	.word @song0ref2449
	.byte $09
@song0ref2503:
	.byte $01, $81, $04, $83, $04, $81, $01, $01, $81, $01, $89, $01, $81, $02, $83, $02, $81, $01, $01, $81, $01, $85, $01, $81
	.byte $41, $0a
	.word @song0ref2503
	.byte $85, $01, $01, $01, $8b, $01, $01, $81, $01, $85, $01, $81
	.byte $41, $18
	.word @song0ref2503
	.byte $41, $0a
	.word @song0ref2503
	.byte $85, $01, $01, $09, $8b, $42
	.word @song0ch4loop
