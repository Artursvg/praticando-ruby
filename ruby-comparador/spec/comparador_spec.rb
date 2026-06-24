require_relative '../lib/comparador'

describe Comparador do
    it 'se A > B deve retornar que A é maior' do
        expect(Comparador.comparar(10, 7)).to eq(10)
    end
    it 'se A < B deve retornar que B é maior' do
        expect(Comparador.comparar(10,20)).to eq(20)
    end
    it 'se A = B deve retornar iguais' do
        expect(Comparador.comparar(10,10)).to eq("Os numeros são iguais")
    end 
end
