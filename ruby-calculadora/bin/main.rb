require_relative '../lib/calculadora'

input = ''

input_opcoes = ["s", "n"]


OPERADORES = {
    1 => "+",
    2 => "-",
    3 => "*",
    4 => "/"
}

puts "Bem vindo a calculadora, primeiro escolha qual operação deseja realizar pelo numero: "
# loop com flag
while input !=  "s"

    puts "1) Soma \t2) Subtração \n\n3) Multiplicação \t4) Divisão "
    operador = gets.chomp.to_i

    #validacao para inputs inválidos
    until OPERADORES.key?(operador)
        puts "Escolha inválida digite novamente"
        puts "1) Soma \t2) Subtração \n3) Multiplicação \t4) Divisão "
        operador = gets.chomp.to_i
    end

    operador_simbolo = OPERADORES[operador]

    puts  "Escolha 2 numeros para realizar a operação"
    num1 = gets.chomp.to_i
    num2 = gets.chomp.to_i

    resultado = Calculadora.calcular(num1, operador_simbolo, num2)
    if resultado  == "erro"
        puts "não é possivel dividir por 0"
    else
        puts "o resultado da sua operação é: #{resultado}"
    end
    puts "Deseja sair do programa? (s/n)"
    input = gets.chomp.downcase
    
    until input_opcoes.include?(input)
        puts "Escolha inválida, digite novamente"
        puts "Deseja sair do programa? (s/n)"
        input = gets.chomp.downcase
    end
end