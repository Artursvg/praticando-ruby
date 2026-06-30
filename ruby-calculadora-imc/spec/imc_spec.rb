require_relative '../lib/imc'

describe Imc do
    it "deve retornar erro se altura = 0" do
        expect(Imc.calcular(0, 1.70)).to eq("Peso/Altura não pode ser menor ou igual a 0")
    end
    it "deve retornar erro se peso = 0" do
        expect(Imc.calcular(70, 0)).to eq("Peso/Altura não pode ser menor ou igual a 0")
    end
    it "deve retornar 22,8" do
        expect(Imc.calcular(70, 1.75)).to eq(22.857142857142858)
    end
    it "deve retornar Abaixo do peso" do
        expect(Imc.classificar(18.49)).to eq("Abaixo do peso")
    end
    it "deve retornar Abaixo do peso" do
        expect(Imc.classificar(18.5)).to eq("Peso normal")
    end
    it "deve retornar sobrepeso" do 
        expect(Imc.classificar(25)).to eq("Sobrepeso")
    end
    it "deve retornar Obesidade grau I" do
        expect(Imc.classificar(30)).to eq("Obesidade grau I")
    end
    it "deve retornar Obesidade grau II" do 
        expect(Imc.classificar(35)).to eq("Obesidade grau II")
    end
    it "deve retornar Obesidade grau III" do
        expect(Imc.classificar(50)).to eq("Obesidade grau III")
    end 
end