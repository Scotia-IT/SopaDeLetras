class SopaDeLetras
	def initialize
		@score = 0
		@contador = -1
	end
	
	def ObtenerPalabra(palabra)
		#diccionario= {"LENGUAJE" => "GEUAJELN"}
		diccionario = {'LENGUAS'=>'SAGUNEL', 'ENCUENTRO'=>'ORTNEUCNE', 'AMAOS'=>'SOAMA', 'MARIA'=>'AIRAM', 'CAMINO'=>'ONIMAC', 'RESURRECCION'=>'NOICCERRUSER', 
'ANUNCIO'=>'OICNUNA', 'ALELUYA'=>'AYULELA', 'PAZ'=>'ZAP', 'CREYENTE'=>'ETNEYERC', 'AMIGOS'=>'SOGIMA', 'FUEGO'=>'OGEUF', 'ALEGRIA'=>'AIRGELA', 'AMANECER'=>'RECENAMA', 
'MUJERES'=>'SEREJUM'}

		return diccionario[palabra] 
	end

	def ValidarPalabra(palabraoriginal, palabraingresada)
 		#encontrada = ObtenerPalabra(palabra)
		#@contador = @contador + 1
		#if encontrada != nil and encontrada.length > 0
		
		if palabraoriginal == palabraingresada
			@score = @score + 1
			return "OK"
		else
			return "NO"
		end
	end
	
	def getContador
		return @contador
	end


	def incrementarContador
		@contador = @contador + 1
		return @contador
	end

	def getScore
		return @score
	end

	#def incrementarScore
		#@score = @score + 1
		#return @score
	#end



end
