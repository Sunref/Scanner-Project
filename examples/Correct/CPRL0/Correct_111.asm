   PROGRAM 8
   LDGADDR 0
   LDCINT 5
   STOREW
   LDGADDR 4
   LDCINT 2
   STOREW
   LDCSTR "      x = "
   PUTSTR
   LDGADDR 0
   LOADW
   PUTINT
   PUTEOL
   LDCSTR "      y = "
   PUTSTR
   LDGADDR 4
   LOADW
   PUTINT
   PUTEOL
   LDCSTR "  x + y = "
   PUTSTR
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   ADD
   PUTINT
   PUTEOL
   LDCSTR "  x - y = "
   PUTSTR
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   SUB
   PUTINT
   PUTEOL
   LDCSTR "    x*y = "
   PUTSTR
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   MUL
   PUTINT
   PUTEOL
   LDCSTR "    x/y = "
   PUTSTR
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   DIV
   PUTINT
   PUTEOL
   LDCSTR "x mod y = "
   PUTSTR
   LDGADDR 0
   LOADW
   LDGADDR 4
   LOADW
   MOD
   PUTINT
   PUTEOL
   HALT
