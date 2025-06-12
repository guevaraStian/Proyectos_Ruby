# En este software se mostrata una forma simple de hacer un
# Acceso automatico por medio de ssh y la libreria de ruby net-ssh
require 'net/ssh'

# Se ingresan los datos de la conexion
Server_conectar = "paginaweb.com"
Usuario_ssh = "tu_usuario"
Contrasena = "tu_contraseña"

# Se realiza la funcion start de ssh con los datos de conextion
Net::SSH.start(Server_conectar, Usuario_ssh, password: Contrasena) do |ssh|
  puts "Conectado a #{Server_conectar}"

  # Se valida el tiempo de conectividad en el disposivo victima
  salida1 = ssh.exec!("uptime")
  puts "Salida del comando 'uptime' con tiempo de conectividad :"
  puts salida1

  # Se imprime en consola de la victima un listar de archivos
  salida2 = ssh.exec!("ls -l")
  puts "Contenido del directorio remoto:"
  puts salida2
end