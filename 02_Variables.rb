=begin
    En este codigo se muestran formas de guardar informacion
    en variables y retornarlas como respuesta
    unos en texto y 2 numericos que interactuan en la respuesta
=end
# Se escribe la clase PublicacionNota que tiene 2 funciones
# La primera calcular nota que tiene formas de guardar una variable


$ejemplo_texto = "Variable global"

class PublicacionNota
    def initialize()
        @ejemplo_texto = "Soy una variable de instancia"
        $ejemplo_texto = "La variable global fue modificada"
    end
    def CalculaNota()
        nombre = "hola, como te llamas?"

        numero1 = 3
        numero2 = 9.3
        puts nombre, numero1 + numero2
    end

# Este segunda funcion enseña como cambiar una variable de numero a texto y de texto a numero
    def Ejemplos_variables()
        textoconnum = "1.7"
        textoconnum = textoconnum.to_f
        numero3 = 9
        numero3 = numero3.to_s
        puts textoconnum, numero3

    end

# Esta tercera funcion enseña como hay variables globales, variables de instancia y variables locales
    def Ejemplos_texto()
        ejemplotexto = "es variable local"
        puts ejemplotexto
        puts @ejemplo_texto
        puts $ejemplo_texto
        
    end
end

# Aqui se crea el objeto de la clase CalcularNota y new para inicializar
objeto = PublicacionNota.new()
objeto.CalculaNota
objeto.Ejemplos_variables
objeto.Ejemplos_texto
gets()
