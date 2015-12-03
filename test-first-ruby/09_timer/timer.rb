class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds / 3600
		minutes = (@seconds % 3600) / 60
		secs = @seconds % 60
		huh(hours)+':'+huh(minutes)+':'+huh(secs)
	end
	
	def huh(n)
		if n < 10
			"0" + n.to_s
		else
			n.to_s
		end
	end
end