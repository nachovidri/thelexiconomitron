require "spec_helper"
require_relative "../thelexiconomitron.rb"



describe "The Lexiconomitron" do
	
	before :each do
		@lexiconomitron = Lexiconomitron.new
	end

	it "returns a word when the input is a word" do
		expect(@lexiconomitron.eat_t("his")).to eq("his")
	end
	
	it "returns a string without ts when the input is a string" do
		expect(@lexiconomitron.eat_t("this word")).to eq("his word")
	end

	# it "returns an string with the letters reversed" do
	# 	expect(@lexiconomitron.shazam("this")).to eq("siht")
	# end

	it "returns an array with the letters reversed within de word" do
		expect(@lexiconomitron.shazam(["his", "is"])).to eq(["sih", "si"])
	end

	it "returns an array with the first and the last words with the letters reversed within de word" do
		expect(@lexiconomitron.shazam(["this", "is", "a", "boring", "test"])).to eq(["sih", "se"])
	end

	it "returns an array with only the words with less than 3 letters" do
		expect(@lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
	end

end