   PROGRAM 8
   BR L14
L0:
   PROC 0
   LDLADDR -4
   LOADW
   LDCINT 0
   CMP
   BL L3
   LDLADDR -8
   LDLADDR -4
   LOADW
   STOREW
   RET 4
   BR L4
L3:
   LDLADDR -8
   LDLADDR -4
   LOADW
   NEG
   STOREW
   RET 4
L4:
L5:
   PROC 4
   LDLADDR -8
   ALLOC 4
   LDLADDR -8
   LOADW
   CALL L0
   STOREW
   LDLADDR -4
   ALLOC 4
   LDLADDR -4
   LOADW
   CALL L0
   STOREW
L6:
   LDLADDR -4
   LOADW
   LDCINT 0
   CMP
   BZ L7
   LDLADDR 8
   LDLADDR -8
   LOADW
   STOREW
   LDLADDR -8
   LDLADDR -4
   LOADW
   STOREW
   LDLADDR -4
   LDLADDR 8
   LOADW
   LDLADDR -4
   LOADW
   MOD
   STOREW
   BR L6
L7:
   LDLADDR -12
   LDLADDR -8
   LOADW
   STOREW
   RET 8
L14:
L10:
   LDCSTR "Enter value for a (0 to exit):  "
   PUTSTR
   LDGADDR 0
   GETINT
   STOREW
   LDCSTR "a = "
   PUTSTR
   LDGADDR 0
   LOADW
   PUTINT
   PUTEOL
   LDGADDR 0
   LOADW
   LDCINT 0
   CMP
   BZ L11
   LDCSTR "Enter value for b:  "
   PUTSTR
   LDGADDR 4
   GETINT
   STOREW
   LDCSTR "b = "
   PUTSTR
   LDGADDR 4
   LOADW
   PUTINT
   PUTEOL
   PUTEOL
   LDCSTR "GCD("
   PUTSTR
   LDGADDR 0
   LOADW
   PUTINT
   LDCSTR ", "
   PUTSTR
   LDGADDR 4
   LOADW
   PUTINT
   LDCSTR ") = "
   PUTSTR
   ALLOC 4
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   CALL L5
   PUTINT
   PUTEOL
   PUTEOL
   BR L10
L11:
   LDCSTR "Done."
   PUTSTR
   PUTEOL
   HALT
