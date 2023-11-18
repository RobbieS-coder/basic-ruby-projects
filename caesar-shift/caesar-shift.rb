def caesar_cipher(str, shift)
	lower = ('a'..'z').to_a
	upper = ('A'..'Z').to_a
	newStr = ""
	
	str.each_char do |char|
		if lower.include?(char) || upper.include?(char)
			charNum = char.ord
			newCharNum = charNum + shift
			if (lower.index(char) ? lower.index(char) : upper.index(char)) + 1 + shift > 26
				newCharNum -= 26
			end
			newStr += newCharNum.chr
		else
			newStr += char
		end
	end
	return newStr
end