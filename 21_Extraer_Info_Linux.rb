# En este software se mostrata una forma simple de extraer informacion
# De un sistema Linuxs con socket y la libreria de ruby fileutils
require 'fileutils'
require 'socket'
require 'time'

hostname = Socket.gethostname
timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
folder_name = "Info_Linux_#{hostname}_#{timestamp}"

FileUtils.mkdir_p(folder_name)
Dir.chdir(folder_name)

def guardar_salida(comando, archivo)
  output = `#{comando} 2>&1`
  File.write(archivo, output)
end

# Información general del sistema
guardar_salida("uname -a && lsb_release -a", "sistema.txt")

# Información de red
guardar_salida("ip addr && ip route && cat /etc/resolv.conf", "red.txt")
guardar_salida("ss -tunap", "conexiones.txt")

# Información de procesos
guardar_salida("ps aux", "procesos.txt")
guardar_salida("ps aux --sort=-%cpu", "procesos_detallados.txt")

# Información de hardware
guardar_salida("lscpu", "cpu.txt")
guardar_salida("free -h && sudo dmidecode -t memory", "memoria.txt")
guardar_salida("lsblk && df -h", "discos.txt")
guardar_salida("sudo lshw -class disk", "discos_detallado.txt")

# Programas instalados (usar según distribución)
guardar_salida("dpkg -l", "programas.txt")  # Debian/Ubuntu
# guardar_salida("rpm -qa", "programas.txt")  # RedHat/CentOS

# Servicios
guardar_salida("systemctl list-units --type=service", "servicios.txt")
guardar_salida("systemctl list-units --type=service --state=running", "servicios_activos.txt")

# Usuarios
guardar_salida("cat /etc/passwd", "usuarios.txt")

# Variables de entorno
guardar_salida("printenv", "entorno.txt")

# Información del BIOS
guardar_salida("sudo dmidecode -t bios", "bios.txt")

# Últimos eventos del sistema
guardar_salida("journalctl -n 20", "eventos.txt")

# Información del firewall
guardar_salida("sudo ufw status verbose", "firewall.txt")
# Alternativa: guardar_salida("sudo iptables -L", "firewall.txt")

# Actualizaciones disponibles
guardar_salida("apt list --upgradable", "actualizaciones.txt")

puts "(+) Información del sistema guardada en la carpeta #{folder_name}"