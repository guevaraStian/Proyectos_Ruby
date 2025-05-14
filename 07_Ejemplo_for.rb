=begin
    El siguiente codigo se muestra un ejemplo de un ciclo for
    sencillo donde se recorre del 1 al 10 todos sus numeros intermedios
=end

class Ejemplo_for
    def initialize()
    end
    def ejemplofor()
        for i in(1..10)
            print i
            print "\n"
        end
    end    
end 


# Aqui se crea el objeto de la clase Ejemplo_for y new para inicializar
objeto = Ejemplo_for.new()
objeto.ejemplofor
gets()

