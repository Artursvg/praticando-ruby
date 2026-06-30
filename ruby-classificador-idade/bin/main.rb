require_relative '../lib/classificador_idade'

INPUTS = [
    "s",
    "n"
]

input = ''

while input != "s"
    puts "digite sua idade: "
    num = gets.chomp.to_i
    resultado = Classificador.classificar(num)
    puts "De acordo com sua idade voce é um/a #{resultado}"
    puts "Deseja sair do programa? (s/n)"
    input = gets.chomp.downcase

    until INPUTS.include?(input)
        puts "escolha uma opção válida"
        puts "Deseja sair do programa? (s/n)"
        input = gets.chomp.downcase
    end
end     
