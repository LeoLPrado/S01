class PhoneWave
  def enviar_dmail(mensagem)
    puts "D-Mail: \"#{mensagem}\""
    puts "Mensagem enviada para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Lab Mem ##{membro.numero} - #{membro.nome} foi admitido."
  end

  def experimento(mensagem)
    puts "Membros presentes:"
    @membros.each { |m| puts "Lab Mem ##{m.numero} - #{m.nome}" }
    @phonewave.enviar_dmail(mensagem)
  end
end

#---- MAIN ----#
#Novamente, uso de IA para preencher os objetos

okabe = MembroDoLab.new(1, "Rintaro Okabe")
mayuri = MembroDoLab.new(2, "Mayuri Shiina")

lab = LaboratorioDeGadgets.new
lab.admitir(okabe)
lab.admitir(mayuri)

lab.experimento("Hoje o experimento vai dar certo.")

# Composicao: o PhoneWave é criado dentro do initialize de LaboratorioDeGadgets.
# Ele só existe dentro do laboratório, se o laboratório deixa de existir, o PhoneWave deixa junto.

# Agregacao: os membros (okabe e mayuri) são criados fora do laboratório e só recebidos em admitir(membro).
# O laboratório apenas guarda a referência a eles em @membros. Eles existem independentemente do laboratório e continuam existindo mesmo sem ele.