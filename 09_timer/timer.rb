# 09 timer

class Timer
	# Creates reader/writer methods for seconds variable
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end
	
	def time_string
		minutes = (seconds%3600)/60
		hours = seconds/3600
		remaining_seconds = (seconds%3600)%60
		"#{padded(hours)}:#{padded(minutes)}:#{padded(remaining_seconds)}"

		#  String formatting without padded method
		# "%02d:%02d:%02d" % [hours, minutes, remaining_seconds]

	end

	def padded(n)
		"%02d" % n
	end

end




