require 'sinatra'
require './lib/sopadeletras.rb'

	def initialize
		#@contador = 0
	end

@@formaPalabras = SopaDeLetras.new

#@listapalabras = ["LENGUAS", "ENCUENTRO", "MARIA"]

get '/' do
	@contador = 0
  erb :control
end

post '/mostrar/:palabra' do
  
	
	listapalabras = ["LENGUAS", "ENCUENTRO", "MARIA"]

	@contador = params["contador"].to_i
	
	if @contador < 3 
  @palabra = @@formaPalabras.ObtenerPalabra(listapalabras[@contador])
	@contador	= @contador	+ 1
    erb :control
	end 
end





