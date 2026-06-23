require_relative '../lib/par_impar'

input = ''

while input != "s"
    print "Digite um numero: "

    num = gets.chomp.to_i

    resultado = ParImpar.verificar(num)

    puts "o numero #{num} é #{resultado}"
    puts "Deseja sair? (s/n) "
    input = gets.chomp.to_s
end


