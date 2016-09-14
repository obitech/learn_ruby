def translate(str)
	letters = ("a".."z").to_a
	vowels = %w[a e i o u]
	consonants = letters - vowels

	str.gsub(/\w+/) do |word|
		idx = word.index(/[aeiou]/)
		qu_idx = word.index(/qu/)

		if vowels.include?(word.downcase[0])
			word + "ay"

		elsif word[0..1] == "qu"
			word[2, word.length-1] + "quay"

		elsif word[1..2] == "qu"
			word[3, word.length-1] + word[0] + "quay"	
			
		else
			word[idx, word.length-idx] + word[0, idx] + "ay"
			
		end	
	end
	
end