# Con el siguiente codigo en ruby se muestra como crear un archivo .txt
# y en la siguiente linea como se le asigna informacion, en este caso texto
File.open('prueba.txt', 'w') do |f2|
f2.puts "Este archivo tiene informacion que se le asigno desde un software ruby!"
rescue Exception => msg
# mostar el mensaje de error generado por el sistema
puts msg
end