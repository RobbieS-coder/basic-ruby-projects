def caesar_cipher(str, shift)
	lower = ('a'..'z').to_a
	upper = ('A'..'Z').to_a
	new_str = ""
	
	str.each_char do |char|
		if lower.include?(char) || upper.include?(char)
			char_num = char.ord
			new_char_num = char_num + shift
			if (lower.index(char) ? lower.index(char) : upper.index(char)) + 1 + shift > 26
				new_char_num -= 26
			end
			new_str += new_char_num.chr
		else
			new_str += char
		end
	end
	
	new_str
end