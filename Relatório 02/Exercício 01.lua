print('Digite o valor do expoente inicial')
local M = tonumber(io.read())
print('Digite o valor do expoente final, onde N>=M')
local N = tonumber(io.read())
print('Digite o valor da base')
local B = tonumber(io.read())

function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        print(base.. ' ^ ' ..i .. ' = ' .. base ^ i)
    end
end

gerarTabelaPotencias(M, N, B)