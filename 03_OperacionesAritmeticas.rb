=begin
    El siguiente codigo esta relacionado a las operaciones aritmeticas
    las mas basicas y tambien se imprimen en pantalla
=end

class OperacionesAritmeticas
    def initialize()
    end
    def Aritmetica()
        x = 3
        y = 7

        suma = x + y
        resta = x - y
        multiplicacion = x * y 
        division = x / y
        exponente = x ** y

        puts "La suma ente las 2 variables es: ",suma
        puts "La resta entre las 2 variables es: ", resta
        puts "La multiplicacion entre las 2 variables es: ", multiplicacion
        puts "La division entre las 2 variables es: ", division
        puts "El numero exponente de estas 2 variables es: ", exponente
    end
    
end

# Aqui se crea el objeto de la clase OperacionesAritmetica y new para inicializar
objeto = OperacionesAritmeticas.new()
objeto.Aritmetica
gets()
