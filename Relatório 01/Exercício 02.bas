Dim PIN As Integer
Dim tentativa As Integer

PIN = 4321
Input "Digite o PIN correto:", tentativa

While tentativa <> PIN
    Print "PIN invalido. Tente novamente."
    Input "Digite o PIN correto:", tentativa
Wend

Print "Transacao autorizada!"

Sleep