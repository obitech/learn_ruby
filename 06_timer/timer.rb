class Timer

  def initialize
  	@seconds = 0
  end

  def time_string=(input)
  	input = @seconds
	# creating dummy time slots
	h = "00"
	m = "00"
	s = "00"

	## Under 1 minute entered? Fill into seconds time slot
	if (0..59) === @seconds
		if (0...10) === @seconds
			s = @seconds.to_s
			s.prepend("0")

		else
			s = @seconds.to_s
		end
	## Between 1 minute and 59min59s? 
	elsif (60..3599) === @seconds
		## Fill minute time slot
		m = (@seconds / 60).to_s
		if m.length == 1
			m.prepend("0")
		end	
		## put rest into second time slot
		s = (@seconds % 60).to_s
		if s.length == 1
			s.prepend("0")		
		end
	
	## Between 1 hour and 99h59min59s?	
	elsif (3600..359999) === @seconds
		## Fill hour slot
		h = (@seconds / 3600).to_s
		if h.length == 1
			h.prepend("0")
		end
		## Fill minutes slot
		m = ((@seconds % 3600) / 60).to_s
		if m.length == 1
			m.prepend("0")
		end
		## Fill seconds slot
		s = ((@seconds % 3600) % 60).to_s	
		if s.length == 1
			s.prepend("0")
		end
	
	else
		puts "Please enter a value between 0 and 356400 seconds"

	end

	puts "#{h}" + ":" + "#{m}" + ":" + "#{s}"
  end	

end

=begin
def timer(@seconds) # enter seconds
	# creating dummy time slots
	h = "00"
	m = "00"
	s = "00"

	if (0..59) === @seconds
		if (0...10) === @seconds
			s = @seconds.to_s
			s.prepend("0")

		else
			s = @seconds.to_s
		end

	elsif (60..3599) === @seconds
		m = (@seconds / 60).to_s
		if m.length == 1
			m.prepend("0")
		end	

		s = (@seconds % 60).to_s
		if s.length == 1
			s.prepend("0")		
		end
		
	elsif (3600..359999) === @seconds
		h = (@seconds / 3600).to_s
		if h.length == 1
			h.prepend("0")
		end
		m = ((@seconds % 3600) / 60).to_s
		if m.length == 1
			m.prepend("0")
		end
		
		s = ((@seconds % 3600) % 60).to_s	
		if s.length == 1
			s.prepend("0")
		end
	
	else
		puts "Please enter a value between 0 and 356400 seconds"

	end

	display = h + ":" + m + ":" + s

end


puts "#{timer(3247)}"
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
puts "#{timer(359999)}"
=end

