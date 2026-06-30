class Imc
    def self.calcular(peso, altura) 
        #Validações
        return "Peso/Altura não pode ser menor ou igual a 0" if peso <= 0 || altura <= 0 
        imc = peso.to_f / (altura ** 2)     
    end
    def self.classificar(imc)
        case imc
        when 1..18.49 then "Abaixo do peso"
        when 18.5..24.9 then "Peso normal"
        when 25..29.9 then "Sobrepeso"
        when 30..34.9 then "Obesidade grau I"
        when 35..39.9 then "Obesidade grau II"
        else 
            return "Obesidade grau III"
        end 
    end
end