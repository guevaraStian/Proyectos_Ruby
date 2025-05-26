require 'tracer'

# Activar el tracing 
# gem install trace
Tracer.on

# Método que hace ping a una dirección
def hacer_ping(direccion)
  puts "Haciendo ping a #{direccion}..."
  resultado = `ping -c 4 #{direccion}` # En Windows usa: `ping -n 4 #{direccion}`
  puts resultado
end

# Llamada al método
hacer_ping("google.com")

# Desactivar el tracing
Tracer.off

