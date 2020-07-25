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
