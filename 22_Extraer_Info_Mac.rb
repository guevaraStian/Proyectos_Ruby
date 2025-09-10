# En este software se mostrata una forma simple de extraer informacion
# De un sistema MAC con socket y la libreria de ruby fileutils
require 'fileutils'
require 'socket'
require 'time'

hostname = Socket.gethostname
timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
folder_name = "Info_macOS_#{hostname}_#{timestamp}"

FileUtils.mkdir_p(folder_name)
Dir.chdir(folder_name)

def guardar_salida(comando, archivo)
  output = `#{comando} 2>&1`
  File.write(archivo, output)
end

# Información general del sistema
guardar_salida("system_profiler SPSoftwareDataType", "sistema.txt")

# Información de red
guardar_salida("ifconfig && netstat -nr && scutil --dns", "red.txt")
guardar_salida("netstat -anv", "conexiones.txt")

# Información de procesos
guardar_salida("ps aux", "procesos.txt")
guardar_salida("ps aux | sort -nrk 3,3", "procesos_detallados.txt")

# Información de hardware
guardar_salida("sysctl -n machdep.cpu.brand_string", "cpu.txt")
guardar_salida("vm_stat && sysctl hw.memsize", "memoria.txt")
guardar_salida("diskutil list && df -h", "discos.txt")
guardar_salida("diskutil info -all", "discos_detallado.txt")

# Programas instalados
guardar_salida("ls /Applications", "programas.txt")
guardar_salida("system_profiler SPApplicationsDataType", "programas_detallado.txt")

# Servicios
guardar_salida("launchctl list", "servicios.txt")
guardar_salida("launchctl list | grep -v '^-'", "servicios_activos.txt")

# Usuarios
guardar_salida("dscl . list /Users", "usuarios.txt")
guardar_salida("id $(whoami)", "usuarios_detallado.txt")

# Variables de entorno
guardar_salida("printenv", "entorno.txt")

# Información del BIOS
guardar_salida("system_profiler SPHardwareDataType", "bios.txt")

# Eventos recientes del sistema
guardar_salida("log show --predicate 'eventType == logEvent' --last 1h", "eventos.txt")

# Información de firewall
guardar_salida("defaults read /Library/Preferences/com.apple.alf globalstate", "firewall.txt")

# Actualizaciones
guardar_salida("softwareupdate --list", "actualizaciones.txt")

puts "(+) Información del sistema guardada en la carpeta #{folder_name}"