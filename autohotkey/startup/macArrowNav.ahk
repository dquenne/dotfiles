;; Windows keys remap

; Windows key alone does nothing
LWin up::
If (A_PriorKey = "LWin")
    Send, {}
return

; Alt+Space acts as pressing Windows key alone
!Space::
Send, {LWinDown}{LWinUp}
return


;; Alt+arrows to simulate Cmd+arrows

!Right::
Send, {End}
return

!Left::
Send, {Home}
return

+!Right::
Send, +{End}
return

+!Left::
Send, +{Home}
return

!Down::
Send, ^{End}
return

!Up::
Send, ^{Home}
return

+!Down::
Send, +^{End}
return

+!Up::
Send, +^{Home}
return


;; Win+arrows to simulate Alt+arrows

<#Right::
Send, ^{Right}
return

<#Left::
Send, ^{Left}
return

+<#Right::
Send, +^{Right}
return

+<#Left::
Send, +^{Left}
return

<#Up::
Send, !{Up}
return

<#Down::
Send, !{Down}
return

;; Ctrl+Alt+Q to simulate Cmd+Ctrl+Q (lock screen)
^!Q::
DllCall("LockWorkStation")
Sleep, 500
SendMessage,0x112,0xF170,2,,Program Manager
return

;; PrintScreen opens Snip & Capture instead
PrintScreen::
Send, #+s
return

; WIP - this isn't working because of annoying Ctrl+Alt+Shift+Start shortcuty
; ;; Ctrl+Alt+Shift+4 for snip & capture
; ^!+4::
; Send, {PrintScreen}
; return


; Office shortcut is super annoying
#^!Shift::
#^+Alt::
#!+Ctrl::
^!+LWin::
^!+RWin::
Send, {Blind}{vk07}
return

; not perfect - this is actually more like Cmd+Shift+W than Cmd+Q
!q::
Send, !{F4}
return
