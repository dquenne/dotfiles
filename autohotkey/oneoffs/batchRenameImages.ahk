; one-time script for adding 1's before numbers in filenames of images pulled
; from an iPhone to maintain order after collapsing all the folders
^RShift::

loop, 305 { ; how many images to rename

  Send, {Left}{Right}{Right}{Right}{Right}{Delete}1 ; 0, 1, or whatever else
  Send, {Tab}

}
return
