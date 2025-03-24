=begin
    En este codigo se muestran 2 formas de hola mundo
    una desde el principio del codigo y otra con un objet
    Primero se descarga y se instala ruby en el computador
    luego se crea el proyecto y cuando quiera ejecutar 
    el software es con el siguiente codigo
    ruby nombre_archivo.rb
    ruby HolaMundo.rb
=end


puts "hola mundo en consola desde el principio del programa"
gets()

#Se escribe la clase hola mundo
class HolaMundo
    def initialize()
    end
    def saluda()
        puts "Hola mundo desde una objeto llamado saluda"
    end
end

# Aqui se crea el objeto de la clase hola mundo
objeto = HolaMundo.new()
objeto.saluda
gets()


