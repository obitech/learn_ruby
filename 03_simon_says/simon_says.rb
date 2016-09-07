#write your code here
def echo(arg)
	return arg
end

def shout(arg)
	arg.upcase
end

def repeat(arg, num = 2)
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
	array = word.split(" ")
	array = array.map! {|x| x.capitalize}

	for i in 1..array.length-1 do
		if (array[i] == "The") || (array[i] == "And") || (array[i] == "Or") || (array[i] == "The") || (array[i] == "In") || (array[i] == "Over") || (array[i] == "At") || (array[i] == "To")
 			array[i].downcase!
		end	
	end		

	output = array.join(" ")
	return output
end


