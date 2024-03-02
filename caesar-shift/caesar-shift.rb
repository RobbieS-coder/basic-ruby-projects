def caesar_cipher(str, shift)
	lower = ('a'..'z').to_a
	upper = ('A'..'Z').to_a
	new_str = ""

	str.each_char do |char|
		if lower.include?(char)
			new_char_num = (char.ord - 'a'.ord + shift) % 26 + 'a'.ord
			new_str += new_char_num.chr
		elsif upper.include?(char)
			new_char_num = (char.ord - 'A'.ord + shift) % 26 + 'A'.ord
			new_str += new_char_num.chr
		else
			new_str += char
		end
	end

	new_str
end