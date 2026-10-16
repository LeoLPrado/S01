class CoquetelAfterlife
    attr_reader :nome
  
    def initialize(nome, preco)
      @nome = nome
      @_preco = preco
    end
  
    def preco
      @_preco
    end
  
    def preco=(valor)
      if valor >= 5 && valor <= 200
        @_preco = valor
      else
        puts "Preço inválido!"
      end
    end

    def ficha
        "Nome do drink: #{@nome} | Preço: #{@_preco}"
    end

end

class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda

    def initialize(nome, preco, lenda)
        super(nome, preco)
        @lenda = lenda
    end

    def ficha
        "#{super} | Lenda homenageada: #{@lenda}"
    end
end
#---- MAIN ----#

#Usei IA para preencher o nome dos objetos, pois nao conheco o jogo
array_coquetel = []

array_coquetel << CoquetelAfterlife.new("Blue Lagoon", 25)
array_coquetel << DrinkDeLenda.new("Dry Martini", 45, "James Bond")
array_coquetel << DrinkDeLenda.new("Old Fashioned", 60, "Don Draper")

array_coquetel.each { |coquetel| puts coquetel.ficha }

lenda = array_coquetel[1]
lenda.preco = 500
lenda.preco = 80

puts lenda.ficha

#lenda.nome = "Negroni"