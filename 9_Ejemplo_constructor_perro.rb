=begin
    En el siguiente codigo se explica un constructor
    en el que se crean diferentes variables con sus datos que se asignan
    y tambien se muestran unas funciones para mostrar los datos guardados
=end

class Perro
    def initialize(nombre_perro = 'sin nombre', nombre_dueño = 'no tiene dueño', raza = 'sin raza', edad = '0', color = 'sin color')
        @nombre_perro = nombre_perro
        @nombre_dueño = nombre_dueño
        @raza = raza
        @edad = edad
        @color = color
    end
    def ladrar
        return "guaw guaw"
    end
    def dame_nombres_perro
        return @nombre_perro , @nombre_dueño
    end
    def dame_datos_perro
        return @raza, @edad, @color
    end
end

