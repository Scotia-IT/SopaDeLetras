require 'sinatra'
require './lib/sopadeletras.rb'

contador = 0


get '/' do
    erb :control
end

post '/mostrar/:palabra' do
  @@formaPalabras = SopaDeLetras.new
	
  @palabra = @@formaPalabras.ObtenerPalabra("LENGUAS")
    erb :control
end

