# En este software de 2 archivos se logra una forma sencilla
# De crear un dashboard de manera facil, primero
# gem install sinatra


require 'sinatra'

# Variable global para contar visitas
$visitas = 0

get '/' do
  $visitas += 1
  @visitas = $visitas
  @usuarios_activos = 123  # valor ficticio
  @ventas_hoy = 321       # valor ficticio

  erb :dashboard
end