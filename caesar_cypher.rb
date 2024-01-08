def caesar_cypher(message, shift=13)
	result = ''
	message.each_char do |char|
		base = char.ord < 91 ? 65 : 97

		if char.ord.between?(65, 90) or char.ord.between?(97, 122)
			rotated = (((char.ord - base) + shift) % 26) + base
			result += rotated.chr
		else
		  result += char
		end
	end

	result
end
