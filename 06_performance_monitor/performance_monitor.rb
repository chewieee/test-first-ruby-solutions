# 06 performance_monitor

def measure(arg=1)
	# Captures time at time of method call
	start = Time.now
	# Yields to block which sleeps program N times
	arg.times do
		yield
	end
	# Captures time at end of yield(s)
	stop = Time.now

	elapsed_time = stop - start
	avg_time = elapsed_time / arg
end
