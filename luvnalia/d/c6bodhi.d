ADD_TRANS_TRIGGER ~C6BODHI~ 21 ~!Global("NaliaVampire","GLOBAL",2)~

EXTEND_BOTTOM ~C6BODHI~ 21
  IF ~Global("NaliaVampire","GLOBAL",2)~ THEN GOTO ValNal
END

APPEND ~C6BODHI~

IF ~~ THEN BEGIN ValNal
  SAY @0
   IF ~Global("NaliaVampire","GLOBAL",2)~ THEN REPLY @1 GOTO N29
   IF ~Global("NaliaVampire","GLOBAL",2)~ THEN REPLY @2 GOTO N29
   IF ~Global("NaliaVampire","GLOBAL",2)~ THEN REPLY @3 GOTO N29
   IF ~Global("NaliaVampire","GLOBAL",2)~ THEN REPLY @4 GOTO N30
END

IF ~~ THEN BEGIN N29
  SAY @5
  IF ~~ THEN JOURNAL @6 EXTERN ~VAMPNAL~ 0
END

IF ~~ THEN BEGIN N30
  SAY @7
  IF ~~ THEN GOTO N29
END

END