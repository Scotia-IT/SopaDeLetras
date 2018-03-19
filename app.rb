require 'sinatra'
require './lib/sopadeletras.rb'

	def initialize
		@contador = 0
	end

	listapalabras = ["LENGUAS" , "ENCUENTRO", "AMAOS"  ,  "MARIA"   , "CAMINO"]

  listapistas = [ "Pista: Dialecto, Idiomas,Vocabulario y gramática peculiares de una época", "Pista:  Acto en que se reúnen un conjunto de personas", "Pista: querer, apreciar, estimar", "Pista: Madre de Jesus, nombre de mujer ", "Pista: via por donde se transita"] 

	get '/' do
		#@contador = 0
	@@formaPalabras = SopaDeLetras.new
		@totalpuntos = @@formaPalabras.getScore()
		@msgintento = ""
		erb :control
	end

post '/mostrar/' do

	
	@@formaPalabras.incrementarContador()
	contador = @@formaPalabras.getContador()

	if contador < 5 
			

	  @palabra = @@formaPalabras.ObtenerPalabra(listapalabras[contador])
		@pista = listapistas[contador]
		@palabraoriginal = listapalabras[contador]
	end 

	@totalpuntos = @@formaPalabras.getScore()

	@numerointento = 1;
	@msgintento = "Intento No. " + @numerointento.to_s
	@resultado = ""

  erb :control

end


post '/recibirPalabra' do

#		contador = @@formaPalabras.getContador()
 
	@palabra_recibida = params["palabra"]
 
	@palabraoriginal = params["palabraoriginal"]

	@numerointento = params["numerointento"].to_i
	
	@resultado = @@formaPalabras.ValidarPalabra(@palabra_recibida, @palabraoriginal)
	
	if @resultado == "OK"
		@resultado = "EXITOSO!"
	else
		@resultado = "FALLO!"
		@numerointento = @numerointento + 1
		if @numerointento <= 3
			contador = @@formaPalabras.getContador()
			@palabra = @@formaPalabras.ObtenerPalabra(listapalabras[contador])
			@pista = listapistas[contador]
			@palabraoriginal = listapalabras[contador]
			@msgintento = "Intento No. " + @numerointento.to_s
		end
		
	end

	@totalpuntos = @@formaPalabras.getScore()

 erb :control
end


