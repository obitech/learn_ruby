def one_word(s)
	if s[0] =~ /[aeiou]/
		s << "ay"

	elsif s[0..1] !~ /[aeiou]/
		s << s[0..1] + "ay"
		s.slice!(2..s.length-1)

	elsif s[0] !~ /[aeiou]/
		s << s[0] + "ay"
		s.slice(1..s.length-1)
	
	end	
end

def two_word(s)
	array = []

end

def translate(s)
	if s !~ /[[:blank:]]/
		one_word(s)
	else
		two_word(s)
	end	
end