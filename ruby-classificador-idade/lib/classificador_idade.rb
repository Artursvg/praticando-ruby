class Classificador
    def self.classificar(num)
        case num
        when 0..5
            return "criança pequena"
        when 6..10
            return "criança"
        when 11..14
            return "pré-adolescente"
        when 15..17
            return "adolescente"
        when 18..59
            return "adulto"
        else 
            return "idoso"
        end      
    end
end