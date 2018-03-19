require 'sinatra'
require './lib/sopadeletras.rb'

	def initialize
		@contador = 0
	end



#@listapalabras = ["LENGUAS", "ENCUENTRO", "MARIA"]

get '/' do
	#@contador = 0
@@formaPalabras = SopaDeLetras.new
  erb :control
end

post '/mostrar/:palabra' do
  
	
	listapalabras = ["LENGUAS", "ENCUENTRO", "MARIA"]
	
	contador = @@formaPalabras.incrementarContador()

	if contador < 3 

  @palabra = @@formaPalabras.ObtenerPalabra(listapalabras[contador])

	@palabraoriginal = listapalabras[contador]

    erb :control
	end 
end


post '/recibirPalabra' do
  @palabra_recibida = params["palabra"]

	
@contador = params["contador"].to_i
 
@palabraoriginal = params["palabraoriginal"]

	if @palabra_recibida == @palabraoriginal
   @resultado = "OK"
	else
		@resultado = "NO"
	end
#@resultado = @@formaPalabras.ValidarPalabra(@palabra_recibida)



 erb :control
end


