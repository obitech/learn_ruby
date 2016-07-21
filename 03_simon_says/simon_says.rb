#write your code here
def echo(arg)
	return arg
end

def shout(arg)
	arg.upcase
end

def repeat(arg, num = 2)
	space = " "
	output = "#{arg}"
	if num <= 2
		output = arg + " " + arg
	else	
		(1...num).each do
			output <<  (" " + arg)
		end
	end	
	return output
end

def start_of_word(word, pos)
	string = word[0, pos]
	return string
end

def first_word(word)
	output = word.split(" ")
	return output[0].to_s
end

def titleize(word)
	# little_word = ["and", "to", "over", "at", "in", "the"]
	array = word.split(" ")
	array = array.map! {|x| x.capitalize}
	output = array.join(" ")
	return output
end	





















