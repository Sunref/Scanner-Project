   PROGRAM 24
   BR L14
L0:
   PROC 0
   LDLADDR -4
   LOADW
   LDLADDR -4
   LOADW
   LOADW
   LDCINT 1
   ADD
   STOREW
   RET 4
L1:
   PROC 4
   LDLADDR 8
   LDCINT 0
   STOREW
L2:
   LDLADDR 8
   LOADW
   LDCINT 5
   CMP
   BGE L3
   LDLADDR -20
   LDLADDR 8
   LOADW
   LDCINT 4
   MUL
   ADD
   LOADW
   PUTINT
   LDCSTR "  "
   PUTSTR
   LDLADDR 8
   LDLADDR 8
   LOADW
   LDCINT 1
   ADD
   STOREW
   BR L2
L3:
   PUTEOL
   RET 20
L14:
   LDGADDR 0
   LDCINT 0
   STOREW
L6:
   LDGADDR 0
   LOADW
   LDCINT 5
   CMP
   BGE L7
   LDGADDR 4
   LDGADDR 0
   LOADW
   LDCINT 4
   MUL
   ADD
   LDCINT 2
   LDGADDR 0
   LOADW
   MUL
   STOREW
   LDGADDR 0
   LDGADDR 0
   LOADW
   LDCINT 1
   ADD
   STOREW
   BR L6
L7:
   LDCSTR "initial array:"
   PUTSTR
   PUTEOL
   LDGADDR 4
   LOAD 20
   CALL L1
   LDGADDR 0
   LDCINT 0
   STOREW
L10:
   LDGADDR 0
   LOADW
   LDCINT 5
   CMP
   BGE L11
   LDGADDR 4
   LDGADDR 0
   LOADW
   LDCINT 4
   MUL
   ADD
   CALL L0
   LDGADDR 0
   LDGADDR 0
   LOADW
   LDCINT 1
   ADD
   STOREW
   BR L10
L11:
   LDCSTR "incremented array:"
   PUTSTR
   PUTEOL
   LDGADDR 4
   LOAD 20
   CALL L1
   HALT
