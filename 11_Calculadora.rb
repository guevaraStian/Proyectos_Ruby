def mostrar_menu
  puts "Calculadora en Ruby"
  puts "Selecciona una operación:"
  puts "1. Sumar"
  puts "2. Restar"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Salir"
end

def pedir_numeros
  print "Por favor ingrese el primer numero : "
  num1 = gets.chomp.to_f
  print "Por favor ingrese el segundo número: "
  num2 = gets.chomp.to_f
  return num1, num2
end

loop do
  mostrar_menu
  print "Por favor escoja la opcion de la calculadora: "
  opcion = gets.chomp.to_i

  case opcion
  when 1
    num1, num2 = pedir_numeros
    puts "El resultado de la suma es: #{num1 + num2}"
  when 2
    num1, num2 = pedir_numeros
    puts "El resultado de la resta es: #{num1 - num2}"
  when 3
    num1, num2 = pedir_numeros
    puts "El resultado de la multiplicacion es: #{num1 * num2}"
  when 4
    num1, num2 = pedir_numeros
    if num2 == 0
      puts "No se puede dividir entre cero."
    else
      puts "El resultado de la division es: #{num1 / num2}"
    end
  when 5
    puts "Usted decidio salir de la calculadora..."
    break
  else
    puts "La opcion que dio no es valida"
  end

  puts "\n"  # Salto de línea para mejorar legibilidad
end