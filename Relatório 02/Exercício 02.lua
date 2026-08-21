print('Digite a quantidades de elementos N:')
local N = tonumber(io.read())
local numbers = {}

for i = 1, N do
    print('Digite o elemento '..i.. ': ')
    local num = tonumber(io.read())
    table.insert(numbers, num)
end

print('Digite o número X a ser buscado: ')
local num_buscado = tonumber(io.read())

local contador_repeticao = 0
for i = 1, #numbers do
    if numbers[i] == num_buscado then
        contador_repeticao = contador_repeticao + 1
    end
end

print('O número '.. num_buscado.. ' aparece ' ..contador_repeticao.. ' vezes na tabela.')