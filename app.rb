require 'sinatra'
require './lib/juego'

configure do
	@@juego= Juego.new
	@@intentos =@@juego.get_intentos
end
get '/' do
    @mascara=@@juego.get_mascara
     erb :index
end
post '/actualizar' do
    @letra = params[:letra]
    @@juego.actualizar(@letra)
    @mascara=@@juego.get_mascara
    @resultado = @@juego.get_resultado
	@@intentos =@@juego.get_intentos
    erb :index
end
