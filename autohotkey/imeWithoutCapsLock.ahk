; When in Japanese IME input mode, press Shift to switch between Hiragana and 
; Latin input

~Shift::
SetFormat, Integer, H
aac1:= % DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
If (aac1 = 0x4110411) { ; Japanese IME
  Send, !``
}
SetFormat, Integer, D

return
