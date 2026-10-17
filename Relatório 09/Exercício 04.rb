module Depoente
  def depor
    raise NotImplementedError, "#{self.class} deve implementar o método depor"
  end
end

module Detivel
  def ser_detido
    puts "#{nome} foi levado pela Scotland Yard."
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{nome} (testemunha ocular): Vi um homem de casaco escuro saindo do beco por volta da meia-noite."
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def initialize(nome, alibi)
    super(nome)
    @alibi = alibi
  end

  def depor
    puts "#{nome} (suspeito): #{@alibi}"
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "Caso: #{@caso}:"
    @envolvidos.each { |envolvido| envolvido.depor }
  end

  def acionar_scotland_yard
    puts "\nScotland Yard acionada"
    detiveis = @envolvidos.select { |envolvido| envolvido.respond_to?(:ser_detido) }
    detiveis.each { |envolvido| envolvido.ser_detido }
  end
end

#---- MAIN ----#
# Usei IA para preencher os textos dos print e dos objetos, pois nao conheco muito sobre o assunto.
testemunha = TestemunhaOcular.new("Sra. Hudson")
suspeito1  = SuspeitoDoCrime.new("Moriarty", "Eu estava jogando xadrez no clube a noite toda.")
suspeito2  = SuspeitoDoCrime.new("Coronel Moran", "Eu estava em uma caçada no campo, longe de Londres.")

investigacao = Investigacao.new("O Mistério de Baker Street")
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard