# En el siguiente codigo se muestra un gestor de tareas secillo
# tiene almacenamiento en momeria y no en disco duro
require 'json'


# Creamos la clase task de las tareas
class task
  attr_accessor :id, :titulo_tarea, :completada_tarea

  # Se inicalizan las funciones de crear variables
  def initialize(id, titulo_tarea, completada_tarea = false)
    @id = id
    @titulo_tarea = titulo_tarea
    @completada_tarea = completada_tarea
  end

  def to_h
    { id: @id, titulo_tarea: @titulo_tarea, completada_tarea: @completada_tarea }
  end
end

class taskdesicion
  FILE = 'tarea.json'

  def initialize
    @tarea = load_tarea
  end

  # En el siguiente codigo se muestra como leer el json y ver que tareas hay en el creadas

  def load_tarea
    if File.exist?(FILE)
      JSON.parse(File.read(FILE), symbolize_names: true).map do |data|
        task.new(data[:id], data[:titulo_tarea], data[:completada_tarea])
      end
    else
      []
    end
  end

  # Esta funcion es la que ayuda a crear la tarea escribiendola en el json
  def save_tarea
    File.write(FILE, JSON.pretty_generate(@tarea.map(&:to_h)))
  end

  def list_tarea
    puts "\n Lista de tareas:"
    @tarea.each do |task|
      status = task.completada_tarea ? "✅" : "❌"
      puts "#{task.id}. [#{status}] #{task.titulo_tarea}"
    end
  end

  # Esta opcion sive para crear tareas
  def add_task(titulo_tarea)
    id = @tarea.empty? ? 1 : @tarea.map(&:id).max + 1
    @tarea << Task.new(id, titulo_tarea)
    save_tarea
    puts "La tarea se agrego sin problema : #{titulo_tarea}"
  end

  def complete_task(id)
    task = @tarea.find { |t| t.id == id }
    if task
      task.completada_tarea = true
      save_tarea
      puts "La tarea completada: #{task.titulo_tarea}"
    else
      puts "La tarea no encontrada con ID #{id}"
    end
  end
end

# En el siguiente codigo se muestra el menu en donde se elige 
# Que hacer con el gestor de tareas

desicion = Taskdesicion.new

loop do
  puts "\n--- Gestor de Tareas ---"
  puts "1. Ver tareas"
  puts "2. Agregar tarea"
  puts "3. Marcar tarea como completada"
  puts "4. Salir"
  print "Por favor, elige una opción: "
  choice = gets.chomp

  case choice
  when "1"
    desicion.list_tarea
  when "2"
    print "Ingresa el título de la tarea: "
    titulo_tarea = gets.chomp
    desicion.add_task(titulo_tarea)
  when "3"
    print "ID de la tarea a completar: "
    id = gets.chomp.to_i
    desicion.complete_task(id)
  when "4"
    puts "Saliendo..."
    break
  else
    puts "Opción inválida"
  end
end