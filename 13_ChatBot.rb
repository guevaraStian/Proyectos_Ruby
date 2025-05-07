# Chatbot sencillo en Ruby con respuestas predefinidas

def chatbot
  respuestas = {
    "hola" => "¡Hola! ¿Cómo estás?",
    "como estas" => "Estoy bien gracias",
    "adios" => "chao",    
    "que puedes hacer" => "Puedo responder preguntas simples. ¡Inténtalo!",
    "gracias" => "¡De nada!",
    "quien eres" => "Soy un chatbot hecho en Ruby",
    "de que temas sabes" => "De muchos, pregunta",
  }

  puts "Este es el chatbot si deseas slir escribe salir"
  
  loop do
    print "- Tú: "
    entrada = gets.chomp.downcase
    break if entrada == "salir"
    respuesta = respuestas[entrada] || "Disculpa, no lo se"
    puts "- Bot: #{respuesta}"
  end
end

# Inicia el chatbot
chatbot