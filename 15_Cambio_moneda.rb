# Con el siguiente codigo se configura un cambio de moneda
# Primero se crea el json on la tasas de cmabio de cada moneda

TASAS = {
  "USD" => {
    "EUR" => 0.92,
    "COL" => 4.302,
    "JPY" => 153.3
  },
  "EUR" => {
    "USD" => 1.09,
    "COL" => 4.893,
    "JPY" => 166.2
  },
  "COL" => {
    "USD" => 0.00023,
    "EUR" => 0.00020,
    "JPY" => 0.033
  }
}

# Ahora solicitamos la moneda origen, la moneda destino y la cantidad
puts "Conversor de moneda"
print "Moneda de origen (USD, EUR, COL): "
origen = gets.chomp.upcase

print "Moneda de destino (USD, EUR, COL): "
destino = gets.chomp.upcase

print "Cantidad a convertir: "
cantidad = gets.chomp.to_f

# Creamos la funcion de convertir la cual valida si estan los datos y hace el cambio
def convertir(moneda_origen, moneda_destino, cantidad)
  if TASAS[moneda_origen] && TASAS[moneda_origen][moneda_destino]
    tasa = TASAS[moneda_origen][moneda_destino]
    resultado = cantidad * tasa
    puts "#{cantidad} #{moneda_origen} son #{'%.2f' % resultado} #{moneda_destino}"
  else
    puts "No se encontró una tasa de cambio entre #{moneda_origen} y #{moneda_destino}."
  end
end



convertir(origen, destino, cantidad)