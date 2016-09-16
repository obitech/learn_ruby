class Timer
  def seconds
  	@seconds = 0 
  end


end

def timer(input) # enter seconds
	# creating dummy time slots
	h = "00"
	m = "00"
	s = "00"

	if (0..59) === input
		if (0...10) === input
			s = input.to_s
			s.prepend("0")

		else
			s = input.to_s

		end

	elsif (60..3599) === input
		m = (input / 60).to_s
		if m.length == 1
			m.prepend("0")
		end	

		s = (input % 60).to_s
		if s.length == 1
			s.prepend("0")		
		end
		
	elsif (3600..356518)
		h = (input/3600).to_s
		if h.length == 1
			h.prepend("0")
		end
=begin  CHANGE THIS PART !!
		m = ((input - 3600) % 60).to_s
		if m.length == 1
			m.prepend("0")
		end
		
		s = ((input / 60) % 60).to_s	
		if s.length == 1
			s.prepend("0")
		end
=end		
	else
		puts "Please enter a value between 0 and 356400 seconds"

	end

	display = h + ":" + m + ":" + s

end

puts "#{timer(3598)}"
puts "#{timer(3599)}"
puts "#{timer(3600)}"
puts "#{timer(3601)} should be 01:00:01" 
puts "#{timer(7200)}" 
puts "#{timer(7262)} should be 02:01:02"
puts "#{timer(7263)}"
puts "#{timer(8000)}"
puts "#{timer(356517)}"
puts "#{timer(300000)}"


