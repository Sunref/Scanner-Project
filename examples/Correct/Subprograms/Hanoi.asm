   PROGRAM 4
   BR L5
L0:
   PROC 0
   LDLADDR -10
   LOADW
   LDCINT 0
   CMP
   BLE L3
   LDLADDR -10
   LOADW
   LDCINT 1
   SUB
   LDLADDR -6
   LOAD2B
   LDLADDR -2
   LOAD2B
   LDLADDR -4
   LOAD2B
   CALL L0
   LDCSTR "Move a disk from "
   PUTSTR
   LDLADDR -6
   LOAD2B
   PUTCH
   LDCSTR " to "
   PUTSTR
   LDLADDR -4
   LOAD2B
   PUTCH
   PUTEOL
   LDLADDR -10
   LOADW
   LDCINT 1
   SUB
   LDLADDR -2
   LOAD2B
   LDLADDR -4
   LOAD2B
   LDLADDR -6
   LOAD2B
   CALL L0
L3:
L4:
   RET 10
L5:
   LDCSTR "Enter number of disks to be moved:  "
   PUTSTR
   LDGADDR 0
   GETINT
   STOREW
   LDGADDR 0
   LOADW
   LDCCH 'A'
   LDCCH 'B'
   LDCCH 'C'
   CALL L0
   HALT
