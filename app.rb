require 'sinatra'
require './lib/juego'

configure do
	@@juego= Juego.new
end
get '/' do
    @mascara=@@juego.get_mascara
     erb :index
end
