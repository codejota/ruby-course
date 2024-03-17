class Pessoa
  attr_accessor :nome
  attr_accessor :idade

  # def nome=(nome)
  #   @nome = nome
  # end

  # def nome
  #   @nome 
  # end

  # def idade=(idade)
  #   @idade = idade
  # end

  # def idade
  #   @idade
  # end

  def gritar(texto = "Grrrhhhhh!")
    "Gritando... #{texto}"
  end

  def agradecer(texto = "Obrigado!")
    texto
  end
end

#######################
pessoa = Pessoa.new
puts "Digite seu nome: "
pessoa.nome = gets.chomp
puts "Digite sua idade: "
pessoa.idade = gets.chomp.to_i
puts "Seu nome é #{pessoa.nome} e você tem #{pessoa.idade} anos"



pessoa1 = Pessoa.new
pessoa1.nome = "junior ribeiro"
pessoa1.idade = 28

pessoa2 = Pessoa.new
pessoa2.nome = "Nah"
pessoa2.idade = 29

puts pessoa.nome
puts pessoa.idade

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade


