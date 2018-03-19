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


	def incrementarContador
		@contador = @contador + 1
		return @contador
	end

	def incrementarScore
		@score = @score + 1
		return @score
	end

	def ValidarPalabra(palabra)
 		encontrada = ObtenerPalabra(palabra)
		if encontrada != nil and encontrada.length > 0
			return "OK"
		else
			return "NO"
		end
	end

end
