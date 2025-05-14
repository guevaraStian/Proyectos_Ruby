=begin
    El siguiente codigo se muestra un ejemplo de un codicional si o if
    relacionado a una variable que esta en la funcion
=end

class Ejemplo_sentencias

    def initialize()
    end

    def sentencias_unless()
        bloqueado = "Juan"
        unless bloqueado != "Juan"
            print "No puede entrar a la fiesta"
        end       
    end  
    def sentencia_case_1()
        edad = 45
        case edad
            # Dependiendo la cifra de edad que ingrese muestra en pantalla una respuesta
            when 0..11 then print "es niño"
            when 12..17 then print "es adolecente"
            when 18..29 then print "es joven"
            when 30..59 then print "es adulto"
            when 60..150 then print "es adulto mayor"
            else print "error en la variable"
        end
    end

    def sentencia_case_2()
        sustantivo = "google"
        respuesta = case sustantivo
            # Cada case when es un ejemplo de la respuesta que da cuando se ingresa ese dato
            when 19..150, "dxvtuts" then "Comunidades de tutoriales"
            when "facebook", "google" then "Empresas lideres de internet"
            when "chrome", "firefox" then "Navegadores de verdad"
            else "sustantivo desconocido"
        end
        print respuesta     
    end

    def If_anidado()
        # Se ingresa un dato, numerico en est caso 
        i=3
        # Se valida si es una variable positiva o negativa
        if i > 0
            print "La variable es positiva"
        elsif i < 0
            print "la variable es negativa" 
            # Se realiza el if anidado, respetando los espacios del codigo 
            if i < -10
                print "la variable es menor a 10"                        
            end
        else
            print "la variable es 0"
        end
    end
end 


# Aqui se crea el objeto de la clase Ejemplo_If y new para inicializar
objeto = Ejemplo_sentencias.new()
objeto.sentencias_unless
objeto.sentencia_case_1
objeto.sentencia_case_2
objeto.If_anidado
gets()

