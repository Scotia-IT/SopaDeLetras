require 'sinatra'
require './lib/sopadeletras.rb'

contador = 0


get '/' do
    erb :control
end

post '/mostrar/:palabra' do
  @@formaPalabras = SopaDeLetras.new
	
  @palabra = @@formaPalabras.ObtenerPalabra(params["palabra"])
    erb :control
end


post '/recibirPalabra' do
  @palabra_recibida = params["palabra"]
	@@formaPalabras = SopaDeLetras.new

	@resultado = @@formaPalabras.validarPalabra(@palabra_recibida)
end
