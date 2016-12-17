require 'sinatra'
require './lib/juego'

configure do
	@@juego= Juego.new
	@@intentos =@@juego.get_intentos
	@pista_habilitada=false
	@pista=""
end

get '/' do
	@@juego= Juego.new
	@@intentos =@@juego.get_intentos
    @mascara=@@juego.get_mascara
	@pista_habilitada=false
	@pista=""
     erb :index
end

post '/actualizar' do
    @letra = params[:letra]
    @@juego.actualizar(@letra)
    @mascara=@@juego.get_mascara
    @resultado = @@juego.get_resultado
	@@intentos =@@juego.get_intentos
	if(@@intentos <= 0)
		@palabra_secreta = @@juego.get_palabra
	end
    erb :index
end

get '/pista' do
	@pista=@@juego.get_pista
	@pista_habilitada=true
     erb :index
end
