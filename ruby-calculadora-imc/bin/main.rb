require_relative '../lib/imc'

input = ''
INPUTS = ["s", "n"]

while input != "s"
    puts "Digite seu peso"
    peso = gets.chomp.to_f
    puts "Agora digite sua altura em metros: "
    altura = gets.chomp.to_f

    imc = Imc.calcular(peso, altura)
    faixa_peso = Imc.classificar(imc)

    resultado = "O seu imc é: #{imc.round(1)} e voce está na faixa de #{faixa_peso}"
    puts  resultado
    puts "Deseja sair do programa?"
    input = gets.chomp.downcase
    
    until INPUTS.include?(input)
        puts "escolha uma opção válida"
        puts "Deseja sair do programa? (s/n)"
        input = gets.chomp.downcase
    end
end