require_relative '../lib/par_impar'

input = ''

while input != "sair"
    print "Digite um numero: "

    num = gets.chomp.to_i

    resultado = ParImpar.verificar(num)

    while  resultado == "inválido"
        print "#{num} não é permitido, digite outro numero: "
        num = gets.chomp.to_i
        resultado = ParImpar.verificar(num)
    end

    puts "o numero #{num} é #{resultado}"
    puts "Se quiser sair digite 'sair' "
    input = gets.chomp.to_s
end


