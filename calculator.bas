REM Author: Eric Schneider (xbony2)
REM Licensed under MIT, 2014.
REM This is coded in Nano Basic; download the app to run it (for iOS, dunno about Android).

11 CLS
INPUT "Operation: 1 for plus, 2 for minus, 3 for times, 4 for divide, 5 for remainder or 6 for exponent",I
IF I = 1 THEN GOTO 1
IF I = 2 THEN GOTO 2
IF I = 3 THEN GOTO 3
IF I = 4 THEN GOTO 4
IF I = 5 THEN GOTO 5
IF I = 6 THEN GOTO 6
PRINT "You put in something incorectly; try again!"
GOTO 11

1 INPUT "Your first number", F
INPUT "Your second number", S
O = F + S
PRINT "The result is: ",O
GOTO 10

2 INPUT "Your first number", F
INPUT "Your second number", S
O = F - S
PRINT "The result is: ",O
GOTO 10

3 INPUT "Your first number", F
INPUT "Your second number", S
O = F * S
PRINT "The result is: ",O
GOTO 10

4 INPUT "Your first number", F
INPUT "Your second number (not 0)", S
IF S = 0 THEN GOTO 12
O = F / S
PRINT "The result is: ",O
GOTO 10

5 INPUT "Your first number", F
INPUT "Your second number (not 0)", S
IF S = 0 THEN GOTO 12
O = F % S
PRINT "The result is: ",O
GOTO 10

REM TODO: Annoy language author for proper support
6 INPUT "Your first number", F
INPUT "Your second number, between 0-4 please!", S
IF S > 4 OR S < 0 THEN GOTO 12
IF S = 0 THEN O = 1
IF S = 1 THEN O = F
IF S = 2 THEN O = F * F
IF S = 3 THEN O = F * F * F
IF S = 4 THEN O = F * F * F * F
PRINT "The result is: ",O
GOTO 10

12 PRINT "The number you entered is invalid"
GOTO 10

10 INPUT "Use again? 1 for yes, 0 for no",U
IF U = 0 THEN END ELSE GOTO 11
