   PROGRAM 12
   LDGADDR 0
   LDCINT 1
   STOREW
   LDGADDR 0
   LOADW
   PUTINT
   LDCSTR "    "
   PUTSTR
   LDGADDR 4
   LDCINT 1
   STOREW
   LDGADDR 8
   LDCINT 2
   STOREW
   LDGADDR 4
   LOADW
   LDCINT 1
   CMP
   BZ L0
   LDCB 1
   BR L1
L0:
   LDCB 0
L1:
   BZ L4
   LDCB 1
   BR L5
L4:
   LDGADDR 8
   LOADW
   LDCINT 2
   CMP
   BZ L2
   LDCB 1
   BR L3
L2:
   LDCB 0
L3:
L5:
   BZ L6
   LDCSTR "ERROR"
   PUTSTR
   PUTEOL
   BR L7
L6:
   LDGADDR 8
   LOADW
   PUTINT
   PUTEOL
L7:
   HALT
