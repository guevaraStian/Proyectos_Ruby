=begin
    El siguiente codigo se muestra un ejemplo de un ciclo while
    sencillo donde se recorre del 1 a otro numero todos sus numeros intermedios
=end

class Ejemplos_while
    def initialize()
    end
    def ejemplo_while_1()
        i=0
        while i < 5 do
            print i
            i += 1
        end
    end
    
    def ejemplo_while_2()
        j = 3
        begin
            print j
            j += 1
        end while j < 5
    end   
    
    def ejemplo_while_3()
        k = 3
        until k > 5 do
            print k
            k += 1
        end
    end  

    def ejemplo_while_4()
        l = 5
        begin
            print l
            l += 1
        end until l < 5
    end   
end 


# Aqui se crea el objeto de la clase Ejemplo_for y new para inicializar
objeto = Ejemplos_while.new()
objeto.ejemplo_while_1
objeto.ejemplo_while_2
objeto.ejemplo_while_3
gets()

