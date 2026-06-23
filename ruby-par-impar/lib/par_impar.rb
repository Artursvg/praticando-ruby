class ParImpar
    def self.verificar(num)
        if num <= 0
            return 'inválido'
        elsif num.even?
            return 'par'
        else
            return 'impar'
        end 
    end
end
