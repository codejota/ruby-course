class Pessoa
  def initialize
    puts "Digite um Nome"
    @nome = gets.chomp
  end

  def gritar(texto = "Grrrhhhhh!")
    "#{@nome} está Gritando... #{texto}"
  end

  def agradecer(texto = "Obrigado!")
    texto
  end
end

obj1 = Pessoa.new

result = obj1.gritar
puts result

puts obj1.agradecer
