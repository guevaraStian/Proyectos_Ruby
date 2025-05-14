=begin
    El siguiente codigo se muestra un ejemplo de un codicional si o if
    relacionado a una variable que esta en la funcion
=end

class Ejemplo_If
    def initialize()
    end

    def funcion_ejemplo_if()
        edad = 19
        confirmacion = "si"      
        # Esta condicion tiene un and que es para agregar otra condicion 
        if edad < 18 and confirmacion == "si"
            puts "menor de edad"
        else edad > 18
            puts "mayor de edad"
        end
    end  
end

# Aqui se crea el objeto de la clase Ejemplo_If y new para inicializar
objeto = Ejemplo_If.new()
objeto.funcion_ejemplo_if
gets()
