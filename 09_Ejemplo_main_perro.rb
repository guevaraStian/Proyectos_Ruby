=begin
    Se muestra una forma de importar datos de un archivo exterior
    y luego se muestran unos ejemplos de puts donde se muestra en
    pantalla los datos ingresados
=end

require_relative '9_Ejemplo_constructor_perro.rb'
dog = Perro.new('firulais', 'sebas','chihuaha', '3', 'rojo'   )
dogdos = Perro.new('boby')

puts dog.ladrar
puts dog.dame_nombres_perro
puts dog.dame_datos_perro
puts dogdos.dame_nombres_perro
gets()





