
# Con este codigo se puede renombrar archivos en Ruby
# Se solicitan las variables para meterlas a la funcion

puts "Por favor, Introduce la ruta :"
Ruta = gets.chomp

puts "Por favor, Introduce el nuevo nombre :"
nombre_base = gets.chomp


def renombrar_archivos(directorio, nuevo_nombre_base)
  contador = 1

  Dir.foreach(directorio) do |archivo|
    next if archivo == '.' || archivo == '..'

    extension = File.extname(archivo)
    nuevo_nombre = "#{nuevo_nombre_base}_#{contador}#{extension}"
    ruta_vieja = File.join(directorio, archivo)
    ruta_nueva = File.join(directorio, nuevo_nombre)
    # Con las funcion rename se hace el cambio de nombre
    File.rename(ruta_vieja, ruta_nueva)
    puts "Renombrado: #{archivo} -> #{nuevo_nombre}"
    contador += 1
  end
end

renombrar_archivos(directorio, nombre_base)


