require "./lib/sopadeletras.rb"

describe "sopa de Letras" do


	it "LENGUAS" do

				nr = SopaDeLetras.new
                nr.ObtenerPalabra("LENGUAS").should =="SAGUNEL"
	end


	it "ENCUENTRO" do
		              nr=SopaDeLetras.new
		              nr.ObtenerPalabra("ENCUENTRO").should =="ORTNEUCNE"

	end


	it "AMAOS" do
		              nr=SopaDeLetras.new
		              nr.ObtenerPalabra("AMAOS").should =="SOAMA"

	end

	it "MARIA" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("MARIA").should =="AIRAM"

	end



	it "CAMINO" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("CAMINO").should =="ONIMAC"

	end


	it "RESURRECCION" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("RESURRECCION").should =="NOICCERRUSER"

	end


	it "ANUNCIO" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("ANUNCIO").should =="OICNUNA"

	end


	it "ALELUYA" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("ALELUYA").should =="AYULELA"

	end


	it "PAZ" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("PAZ").should =="ZAP"

	end

	it "AMIGOS" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("AMIGOS").should =="SOGIMA"

	end



	it "FUEGO" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("FUEGO").should =="OGEUF"

	end


	it "AMANECER" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("AMANECER").should =="RECENAMA"

	end



	it "ALEGRIA" do
		              nr = SopaDeLetras.new
		              nr.ObtenerPalabra("ALEGRIA").should =="AIRGELA"

	end

end
