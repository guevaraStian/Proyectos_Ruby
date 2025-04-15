=begin
    En el siguiente codigo se explica diferentes formas de
    crear un arreglo o lista y recorrerlo o mostrar en 
    pantalla una parte del arreglo
=end

class Ejemplos_arreglos
    def initialize()
    end
    def Ejemplo_Basico_Arreglos()
        arreglo = [1,2,3].push("Nuevo valor")
        print arreglo[2]
        print arreglo[-1]
    end    
    def Ejemplo_2_Arreglos()
        ejemplo = [1,2,3,4,5,6]
        for i in ejemplo
            puts i
        end
    end    
    def Ejemplo_3_Arreglos()
        ejemplo2 = [9,8,7,6]
        ejemplo2.each do |i|
            puts i
        end
    end 
    def Ejemplo_4_Arreglos()
        ejemplo3 = [1.1, 2.2, 3.3, 4.4]
        otro = ejemplo3.delete_if{|numero| numero % 2 == 0}
        for i in otro
            puts i
        end
    end 

    def Ejemplo_diccionario()
        cursos = {'ruby' => 'pag_web'=>15, 'html5'=> 25}
        indice = cursos.keys
        for i in indices
            puts i
        end
    end 

end 


# Aqui se crea el objeto de la clase Ejemplos_arreglos y new para inicializar
objeto = Ejemplos_arreglos.new()
objeto.Ejemplo_Basico_Arreglos
objeto.Ejemplo_2_Arreglos
ojeto.Ejemplo_3_Arreglos
objeto.Ejemplo_4_Arreglos
objeto.Ejemplo_diccionario
gets()
