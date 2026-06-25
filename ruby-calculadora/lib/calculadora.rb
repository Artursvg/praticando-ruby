class Calculadora
    def self.calcular (a, operador, b)
        case operador
        when "+"
            return a + b 
        when "-"
            return a - b
        when "*"
            return a * b 
        when "/"
            return "erro" if b == 0
            return a / b 
        end
    end
end
            
           