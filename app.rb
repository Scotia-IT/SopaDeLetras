require 'sinatra'
require './lib/sopadeletras.rb'

get '/' do
    erb :control
end

post '/mostrar/:palabra' do
  @@formaPalabras = SopaDeLetras.new
  return formaPalabras.ObtenerPalabra(params["palabra"])
end

