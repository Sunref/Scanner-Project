   PROGRAM 20
L0:
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
   PUTEOL
   LDGADDR 0
   LOADW
   LDCINT 0
   CMP
   BZ L1
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
   LDGADDR 8
   LDGADDR 0
   LOADW
   STOREW
   LDGADDR 12
   LDGADDR 4
   LOADW
   STOREW
   LDGADDR 8
   LOADW
   LDCINT 0
   CMP
   BGE L6
   LDGADDR 8
   LDGADDR 8
   LOADW
   NEG
   STOREW
L6:
L7:
   LDGADDR 12
   LOADW
   LDCINT 0
   CMP
   BGE L10
   LDGADDR 12
   LDGADDR 12
   LOADW
   NEG
   STOREW
L10:
L11:
L12:
   LDGADDR 16
   LDGADDR 8
   LOADW
   STOREW
   LDGADDR 8
   LDGADDR 12
   LOADW
   STOREW
   LDGADDR 12
   LDGADDR 16
   LOADW
   LDGADDR 12
   LOADW
   MOD
   STOREW
   LDGADDR 12
   LOADW
   LDCINT 0
   CMP
   BZ L13
   BR L12
L13:
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
   LDGADDR 8
   LOADW
   PUTINT
   PUTEOL
   PUTEOL
   BR L0
L1:
   LDCSTR "Done."
   PUTSTR
   PUTEOL
   HALT
