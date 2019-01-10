class Gigasecond
		@@day_sec = 60*60*24
		@@hour_sec = 60*60
		@@min_sec = 60

	def self.increment(seconds)

		while @tot <= 10**9-seconds do
			@ins_time += seconds
			@tot += seconds	
		end
	
	end
	def self.from(time)
		@tot=0
		@ins_time=time
		self.increment(@@day_sec)
		self.increment(@@hour_sec)
		self.increment(@@min_sec)
		self.increment(1)
		time = @ins_time
	end


end

module BookKeeping
     VERSION = 6 # Where the version number matches the one in the test.
   end