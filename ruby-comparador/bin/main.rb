require_relative '../lib/comparador'

input = ''

while input != 'n'
    puts 'Bem vindo ao comparador de numeros digite o numero A: '

    num1 = gets.chomp.to_i

    puts 'Agora digite o numero B: '

    num2 = gets.chomp.to_i

    resultado = Comparador.comparar(num1, num2)

    if resultado != 'Os numeros são iguais'
        puts "O maior numero escolhido é #{resultado}"
    else
        puts resultado
    end

    puts "Deseja Comparar mais 2 numeros? (s/n)"
    input = gets.chomp.downcase
    while input != 's' && input != 'n'
        puts "Escolha uma opção válida! (s/n)"
        input = gets.chomp.downcase
    end
end


    