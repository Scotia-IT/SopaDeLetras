require "./lib/sopadeletras.rb"

describe "sopa de Letras" do

	it "LENGUAJE" do
		nr = SopaDeLetras.new
		nr.ObtenerPalabra("LENGUAJE").should == "GEUAJELN"
	end

end
