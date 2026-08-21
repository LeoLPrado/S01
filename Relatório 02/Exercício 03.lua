print('Digite a quantidades de elementos N:')
local N = tonumber(io.read())
local numbers = {}

for i = 1, N do
    print('Digite o elemento '..i.. ': ')
    local num = tonumber(io.read())
    table.insert(numbers, num)
end

print('Digite o número limite K: ')
local num_limite = tonumber(io.read())

function filtrarMaiores(tabela, limite)
    local new_table = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(new_table, tabela[i])
        end
    end
    return new_table
end

new_table = filtrarMaiores(numbers, num_limite)

print('--- Elementos maiores que ' ..num_limite.. ' ---')

for i = 1, #new_table do
    print(new_table[i])
end