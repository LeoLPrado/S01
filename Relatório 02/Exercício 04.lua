function calcularMedia(a, b)
    return ((a+b) / 2)
end

function encontrarMaior(a, b)
    if a > b then 
        return a
    else 
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    local dif = a - b
    if dif < 0 then
        return dif * -1
    else
        return dif
    end
end

function analisarNumeros(n1, n2, operacao)
    if operacao == 'media' then
        return calcularMedia(n1, n2)
    elseif operacao == 'maior' then
        return encontrarMaior(n1, n2)
    elseif operacao == 'diferenca' then
        return calcularDiferencaAbsoluta(n1, n2)
    else
        return 'Operação inválida!'
    end
end

print('Digite o primeiro número: ')
local a = tonumber(io.read())
print('Digite o segundo número: ')
local b = tonumber(io.read())

print('Digite a operação: "media" - "maior" - "diferenca" = ')
local op = io.read()

local result = analisarNumeros(a, b, op)
print(result)