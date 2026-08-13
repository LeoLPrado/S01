Dim peso As Single
Dim qtd_ingerida As Integer
Dim qtd_ideal As Single

Input "Qual seu peso ?", peso
Input "Quantos mls de agua voce ingeriu hoje ?", qtd_ingerida

qtd_ideal = peso * 35

If qtd_ingerida >= qtd_ideal Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End if

Sleep