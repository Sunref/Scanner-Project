   BR L5
L0:
   PROC 0
   LDLADDR -8
   LOADW
   LDLADDR -4
   LOADW
   CMP
   BL L3
   LDLADDR -12
   LDLADDR -8
   LOADW
   STOREW
   RET 8
   BR L4
L3:
   LDLADDR -12
   LDLADDR -4
   LOADW
   STOREW
   RET 8
L4:
L5:
   LDCSTR "max(51, 3) = "
   PUTSTR
   ALLOC 4
   LDCINT 51
   LDCINT 3
   CALL L0
   PUTINT
   PUTEOL
   LDCSTR "max(9, 9) = "
   PUTSTR
   ALLOC 4
   LDCINT 9
   LDCINT 9
   CALL L0
   PUTINT
   PUTEOL
   LDCSTR "max(-1, 7) = "
   PUTSTR
   ALLOC 4
   LDCINT 1
   NEG
   LDCINT 7
   CALL L0
   PUTINT
   PUTEOL
   LDCSTR "max(-1, -5) = "
   PUTSTR
   ALLOC 4
   LDCINT 1
   NEG
   LDCINT 5
   NEG
   CALL L0
   PUTINT
   PUTEOL
   HALT
