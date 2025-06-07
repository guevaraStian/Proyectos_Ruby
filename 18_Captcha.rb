require 'securerandom'

 # Con la siguiente funcion se crea un texto de 6 digitos aleatorios
def generate_captcha
  SecureRandom.hex(3) 
end

captcha = generate_captcha
puts "CAPTCHA: #{captcha}"

puts "Introduce el texto del CAPTCHA:"
input = gets.chomp

if input == captcha
  puts "Correcta la informacion ingresada"
else
  puts "Incorrecta la informacion ingresada"
end






