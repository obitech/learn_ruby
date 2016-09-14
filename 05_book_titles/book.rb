class Book
	def title
		@title 
	end	

	def title=(t)
		stop_words = %w[and the in a of an]
		@title = t.capitalize.split.map { |s| stop_words.include?(s) ? s : s.capitalize  }.join(" ")
	end	
end
