   PROGRAM 4
   BR L2
L0:
   PROC 0
   LDLADDR -4
   LOADW
   LDLADDR -4
   LOADW
   LOADW
   LDCINT 3
   ADD
   STOREW
   RET 4
L1:
   PROC 0
   LDLADDR -4
   LOADW
   LDLADDR -4
   LOADW
   LOADW
   LDCINT 5
   ADD
   STOREW
   LDLADDR -4
   LOADW
   CALL L0
   RET 4
L2:
   LDGADDR 0
   LDCINT 7
   STOREW
   LDGADDR 0
   CALL L1
   LDCSTR "x = "
   PUTSTR
   LDGADDR 0
   LOADW
   PUTINT
   PUTEOL
   HALT
