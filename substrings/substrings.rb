def substrings(str, dictionary)
	results = {}
	lower_str = str.downcase

	dictionary.each do |word|
		matches = lower_str.scan(word).length
		results[word] = matches unless matches == 0
	end

	results
end