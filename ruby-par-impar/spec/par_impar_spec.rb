require_relative '../lib/par_impar'

describe ParImpar do
    it 'deve retornar par se o numero for 2' do
        expect(ParImpar.verificar(2)).to eq('par')
    end
    it 'deve retornar impar se for 3' do
        expect(ParImpar.verificar(3)).to  eq('impar')
    end
    it "deve retornar par se for -2" do
        expect(ParImpar.verificar(-2)).to eq ('par')
    end 
    it "deve retornar par se for 0" do
        expect(ParImpar.verificar(0)).to eq ('par')
    end 
    it "deve retornar impar se for -3" do
        expect(ParImpar.verificar(-3)).to eq ('impar')
    end 
end
    