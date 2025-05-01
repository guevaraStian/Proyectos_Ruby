# Con este software se puede crear contraseñas aleatoriamente en este caso de a 12 caracteres
# Se programa la funcion crear contraseña
def crear_contraseña(longitud = 8)
  caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+'
  contraseña = ''
  longitud.times do
    contraseña += caracteres[rand(caracteres.length)]
  end
  return contraseña
end

# Ejemplo de uso
puts "La contraseña que se creo fue : #{crear_contraseña}"