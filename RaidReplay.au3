#include <Constants.au3>
#include <MsgBoxConstants.au3>

; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
;
; Script Function:
;   Switch on RSL Windows, send R key to replay
;
; Var
Const $vSleep = 500
Const $vTitle = "Raid: Shadow Legends"
Local $vNbRun, $vNbSec

; Mainr
Local $vNbRun = InputBox("Question", "How many run?", "", "")
Local $vNbSec = InputBox("Question", "How many delay?", "", "")

For  $i =  $vNbRun To 1 Step -1
   WinActivate ($vTitle)
   Sleep($vNbSec * 1000)
   Send("{rrrr}")
Next
MsgBox($MB_SYSTEMMODAL, "", "End of farm")
; Finished!
