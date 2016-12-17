require 'sinatra'
require './lib/juego'

configure do
	@@juego= Juego.new
	@@intentos =@@juego.get_intentos
	@pista_habilitada=false
	@pista=""
	@@palabra_secreta = @@juego.get_palabra
end

get '/' do
	palabra = params[:palabra]
	puts "leyendo #{palabra}"
	@@juego= Juego.new
	@@juego.set_palabra(palabra || "DESARROLLO")
	@@intentos =@@juego.get_intentos
	@@palabra_secreta = @@juego.get_palabra
    @mascara=@@juego.get_mascara
	@pista_habilitada=false
	@pista=""
     erb :index
end

post '/actualizar' do
    @letra = params[:letra]
    @@palabra_secreta = @@juego.get_palabra
    @@juego.actualizar(@letra)
    @mascara=@@juego.get_mascara
    @resultado = @@juego.get_resultado
	@@intentos =@@juego.get_intentos
	erb :index
end

get '/pista' do
	@pista=@@juego.get_pista
	@pista_habilitada=true
	@mascara=@@juego.get_mascara
	@@intentos =@@juego.get_intentos
     erb :index
end
