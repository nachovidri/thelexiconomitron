class Lexiconomitron

	def eat_t words
		words.tr('t','')
	end

	def shazam words
		words.each do |word|
			word.reverse!
		end
		return eat_t(words[0]), eat_t(words[-1])
	end

	def oompa_loompa words
		words2 = []
		i = 0
		words.select! {|word| word.length <= 3}
		words.map {|word| eat_t(word)}
	end


end