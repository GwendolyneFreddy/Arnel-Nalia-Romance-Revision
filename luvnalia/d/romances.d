ADD_TRANS_TRIGGER ~AERIEJ~ 10 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 78 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 119 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 124 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 126 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 141 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 197 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 202 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 206 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 207 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~AERIEJ~ 208 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 107 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 157 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 197 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 198 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 200 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 201 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 202 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 203 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 204 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 264 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 276 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 291 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 378 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 437 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 441 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 447 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~JAHEIRAJ~ 528 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~VICONIJ~ 53 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~VICONIJ~ 97 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~VICONIJ~ 106 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~VICONIJ~ 108 ~!Global("NaliaConflict","GLOBAL",1)~

ADD_TRANS_TRIGGER ~VICONIJ~ 136 ~!Global("NaliaConflict","GLOBAL",1)~

APPEND ~AERIEJ~

IF ~Global("NaliaConflict","GLOBAL",1)~ THEN BEGIN NaliaDivorce
  SAY @0
  IF ~~ THEN DO ~IncrementGlobal("NaliaConflict","GLOBAL",1)~ EXTERN ~NALIAJ~ N441
END

IF ~~ THEN BEGIN N226
  SAY @1
  IF ~~ THEN REPLY @2 GOTO N227
  IF ~~ THEN REPLY @3 GOTO N228
END

IF ~~ THEN BEGIN N227
  SAY @4
  IF ~~ THEN EXTERN ~NALIAJ~ N435
END

IF ~~ THEN BEGIN N228
  SAY @5
  IF ~~ THEN REPLY @6 GOTO N227
  IF ~~ THEN REPLY @7 GOTO N229
END

IF ~~ THEN BEGIN N229
  SAY @8
  IF ~~ THEN EXTERN ~NALIAJ~ N436
END

END

APPEND ~JAHEIRAJ~

IF ~Global("NaliaConflict","GLOBAL",1)~ THEN BEGIN JaheirNal539
  SAY @9
  IF ~~ THEN DO ~IncrementGlobal("NaliaConflict","GLOBAL",1)~ EXTERN ~NALIAJ~ N440
END

IF ~~ THEN BEGIN N540
  SAY @10
  IF ~~ THEN REPLY @11 GOTO N541
  IF ~~ THEN REPLY @12 GOTO N542
END

IF ~~ THEN BEGIN N541
  SAY @13
  IF ~~ THEN EXTERN ~NALIAJ~ N435
END

IF ~~ THEN BEGIN N542
  SAY @14
  IF ~~ THEN REPLY @6 GOTO N541
  IF ~~ THEN REPLY @15 GOTO N543
END

IF ~~ THEN BEGIN N543
  SAY @16
  IF ~~ THEN EXTERN ~NALIAJ~ N436
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N440
  SAY @17
  IF ~~ THEN EXTERN ~JAHEIRAJ~ N540
END

IF ~~ THEN BEGIN N441
  SAY @18
  IF ~~ THEN EXTERN ~AERIEJ~ N226
END

IF ~~ THEN BEGIN N434
  SAY @19
  IF ~~ THEN EXTERN ~VICONIJ~ N189
END

IF ~~ THEN BEGIN N435
  SAY @20
  IF ~~ THEN DO ~SetGlobal("NaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN N436
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("NaliaRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NaliaBranch4","GLOBAL",10)
SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ GOTO N437
  IF ~~ THEN REPLY @23 DO ~SetGlobal("NaliaRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NaliaBranch4","GLOBAL",10)
SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ GOTO N438
  IF ~~ THEN REPLY @24 DO ~SetGlobal("NaliaRomanceActive","GLOBAL",2)
RealSetGlobalTimer("NaliaBranch4","GLOBAL",10)
SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ GOTO N439
END

IF ~~ THEN BEGIN N437
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN N438
  SAY @26
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN N439
  SAY @27
  IF ~~ THEN EXIT
END

END

APPEND ~VICONIJ~

IF ~Global("NaliaConflict","GLOBAL",1)~ THEN BEGIN VickyNalia188
  SAY @28
  IF ~~ THEN DO ~IncrementGlobal("NaliaConflict","GLOBAL",1)~ EXTERN ~NALIAJ~ N434
END

IF ~~ THEN BEGIN N189
  SAY @29
  IF ~~ THEN REPLY @30 GOTO N190
  IF ~~ THEN REPLY @31 GOTO N191
END

IF ~~ THEN BEGIN N190
  SAY @32
  IF ~~ THEN EXTERN ~NALIAJ~ N435
END

IF ~~ THEN BEGIN N191
  SAY @33
  IF ~~ THEN REPLY @6 GOTO N190
  IF ~~ THEN REPLY @34 GOTO N192
END

IF ~~ THEN BEGIN N192
  SAY @35
  IF ~~ THEN EXTERN ~NALIAJ~ N436
END

END