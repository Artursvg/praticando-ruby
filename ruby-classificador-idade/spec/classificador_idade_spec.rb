require_relative '../lib/classificador_idade'

describe Classificador do
    it "deve retornar crianca pequena se idade <=5" do
        expect(Classificador.classificar(4)).to eq("criança pequena")
    end
    it "deve retornar crianca se idade >= 6 <= 10" do
        expect(Classificador.classificar(7)).to eq("criança")
    end
    it "deve retornar pré-adolescente se idade >= 11 <= 14" do
        expect(Classificador.classificar(13)).to eq("pré-adolescente")
    end
    it "deve retornar adolescente se idade >= 15 <= 17" do
        expect(Classificador.classificar(15)).to eq("adolescente")
    end
    it "deve retornar adulto se idade >= 18 <= 59" do
        expect(Classificador.classificar(25)).to eq("adulto")
    end
    it "deve retornar idoso se idade > 59" do
        expect(Classificador.classificar(75)).to eq("idoso")
    end
end