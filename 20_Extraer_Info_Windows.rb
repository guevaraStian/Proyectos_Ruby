# En este software se mostrata una forma simple de extraer informacion
# De un sistema windows con socket y la libreria de ruby fileutils
require 'fileutils'
require 'socket'
require 'time'

hostname = Socket.gethostname
timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
folder_name = "Info_Windows_#{hostname}_#{timestamp}"

FileUtils.mkdir_p(folder_name)
Dir.chdir(folder_name)

def guardar_salida(comando, archivo)
  output = `#{comando}`
  File.write(archivo, output)
end

guardar_salida("systeminfo", "sistema.txt")
guardar_salida("ipconfig /all", "red.txt")
guardar_salida("netstat -anob 2>&1", "conexiones.txt")
guardar_salida("tasklist", "procesos.txt")
guardar_salida('powershell "Get-Process | Sort-Object CPU -Descending"', "procesos_detallados.txt")
guardar_salida("wmic cpu get name,NumberOfCores,NumberOfLogicalProcessors", "cpu.txt")
guardar_salida("wmic memorychip get capacity,manufacturer,speed", "memoria.txt")
guardar_salida("wmic diskdrive get model,size,serialnumber", "discos.txt")
guardar_salida('powershell "Get-PhysicalDisk | Format-Table"', "discos_detallado.txt")
guardar_salida("wmic product get name,version", "programas.txt")
guardar_salida('powershell "Get-WmiObject -Class Win32_Product | Select-Object Name, Version"', "programas_detallado.txt")
guardar_salida("sc query", "servicios.txt")
guardar_salida("powershell \"Get-Service | Where-Object { $_.Status -eq 'Running' }\"", "servicios_activos.txt")
guardar_salida("net user", "usuarios.txt")
guardar_salida("powershell \"Get-LocalUser\"", "usuarios_detallado.txt")
guardar_salida("set", "entorno.txt")
guardar_salida("wmic bios get manufacturer, smbiosbiosversion", "bios.txt")
guardar_salida('powershell "Get-EventLog -LogName System -Newest 20"', "eventos.txt")
guardar_salida("netsh advfirewall show allprofiles", "firewall.txt")
guardar_salida('powershell "Get-HotFix"', "actualizaciones.txt")

puts "(+) Información del sistema guardada en la carpeta #{folder_name}"