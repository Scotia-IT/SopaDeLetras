require "./lib/sopadeletras.rb"

describe "sopa de Letras" do

	it "LENGUAS" do
		nr = SopaDeLetras.new
		nr.ObtenerPalabra("LENGUAS").should == "SAGUNEL"
	end

end
