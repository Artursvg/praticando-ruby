require_relative '../lib/calculadora'

describe Calculadora do
    it 'deve somar a b quando operador for "+" "  ' do
        expect(Calculadora.calcular(20, '+', 5)).to eq(25)
    end
    it 'deve subtrair a b quando operador for "-"' do
        expect(Calculadora.calcular(20, '-', 5)).to eq(15)
    end
    it 'deve multiplicar a b quando operador for "*"' do
        expect(Calculadora.calcular(20, '*', 5)).to eq(100)
    end
    it 'deve dividir a b quando operador for "/"' do
        expect(Calculadora.calcular(20, '/', 5)).to eq(4)
    end
    it 'deve retornar erro se dividir por 0' do
        expect(Calculadora.calcular(20, '/', 0)).to eq("erro")
    end

end