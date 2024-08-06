#Requires AutoHotkey v2.0
#SingleInstance Force

;testo in clipboard
;lo strasforma nel formato per il file javascript
;sovrascrive il file js

A_Clipboard := A_Clipboard

strA := "" 
strB := ""
strC := ""

Loop parse, A_Clipboard, "`n", "`r"
{
    ;ok MsgBox "Color number " A_Index " is " A_LoopField
    
    strA := "strCSV_Incoming +='" A_LoopField "' + '\n';" . "`r`n"
    strB := strB strA     
}



strC := "let strCSV_Incoming = '';" . "`r`n" . "`r`n" . strB

;A_Clipboard := strC

FileDelete "archivio.js"

sleep 1000

FileAppend strC , "archivio.js"
