; one-time use script for batch editing metadat for songs in iTunes on windows
^RShift::

loop, 2 {

  ; tab from starting position to song name
  loop, 10 {
    Sleep, 40
    Send, {Tab}
  }

  ; very context-specific -- delete the first character, cut the next two, then
  ; delete the next 9 characters. could probably generalize this in some way
  Send, {Left}
  Sleep, 10
  Send, {Delete}
  Sleep, 40

  ; select next two characters
  Send, {Shift Down}
  Sleep, 40
  Send, {Right}{Right}
  Sleep, 40
  Send, {Shift Up}
  Sleep, 40

  ; cut
  Send, ^x

  ; delete next 9 characters
  loop, 9 {
    Send, {Delete}
    Sleep, 10
  }

  Sleep, 200

  ; tab from song name to track number
  loop, 9 {
    Sleep, 40
    Send, {Tab}
  }
  Sleep, 40

  ; paste track number cut from name
  Send, ^v

  ; set total number of tracks
  Sleep, 40
  Send, {Tab}
  Sleep, 40
  Send, 99

  ; go to next track button
  loop, 11 {
    Sleep, 40
    Send, {Tab}
  }

  ; click 'next track'
  Send, {Enter}

  ; tab to the default position when dialog is opened, for ease of looping 
  Sleep, 40
  Send, {Tab}
}
return
