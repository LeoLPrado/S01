class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "Nao sei oq botar aqui"
  end

end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{@nome} (#{@instrumento}) toca #{peca} e conduz a melodia principal."
  end

end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{@nome} (#{@instrumento}) toca #{peca} e acompanha o ritmo do solista."
  end

end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "O regente #{@nome} conduz #{peca}."
    @orquestra.each { |instrumentista| instrumentista.interpretar(peca) }
  end

  def escalacao
    @orquestra.map { |i| "#{i.class}: #{i.nome}" }
  end

end

#---- MAIN ----#
#Usei IA novamente para preencher os nomes dos objetos

solista = Solista.new("Kaori Miyazono", "violino")
acompanhador = Acompanhador.new("Kousei Arima", "piano")
regente = Regente.new("Saito")

regente.convocar(solista)
regente.convocar(acompanhador)

regente.reger("Liebesfreud")

regente.escalacao.each { |texto| puts texto }

base = Instrumentista.new("Tsubaki Sawabe", "flauta")
#base.interpretar("Liebesfreud")