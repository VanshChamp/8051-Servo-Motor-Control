ORG 00H
MAIN:
MOV TMOD, #01H ; Set Timer 0 in Mode 1 (16-bit timer)
CHECK_BUTTONS:
JNB P2.6, ANTCLK ; If P2.6 (Clockwise button) is pressed (logic 0), go to CLKWISE
JNB P2.7, CLKWISE ; If P2.7 (Anti-clockwise button) is pressed (logic 0), go to ANTCLK
LCALL zero_degrees ; Default position (0°)
SJMP CHECK_BUTTONS
CLKWISE:
LCALL ninety_degrees ; Rotate to +90°
SJMP CHECK_BUTTONS
ANTCLK:
LCALL negative_ninety_degrees ; Rotate to -90°
SJMP CHECK_BUTTONS
RET
; -90 = 1ms pulse
negative_ninety_degrees:
MOV TH0, #0FCH ; Load TH0 with FC66H
MOV TL0, #66H
SETB P2.0
SETB TR0
WAIT1:
JNB TF0, WAIT1
CLR P2.0
CLR TF0
CLR TR0
RET
MCI Project Report
P a g e 20 | 21
; 0 = 1.5ms pulse
zero_degrees:
MOV TH0, #0FAH ; Load TH0 with F9A0H
MOV TL0, #0A0H
SETB P2.0
SETB TR0
WAIT2:
JNB TF0, WAIT2
CLR P2.0
CLR TF0
CLR TR0
RET
; +90 = 2ms pulse
ninety_degrees:
MOV TH0, #0F7H ; Load TH0 with F74DH
MOV TL0, #4DH
SETB P2.0
SETB TR0
WAIT3:
JNB TF0, WAIT3
CLR P2.0
CLR TF0
CLR TR0
RET
END
