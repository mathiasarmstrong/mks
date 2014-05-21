class Car
	def initialize
		@fuel = 10.0
		@distance = 0.0
	end
	
	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end

	def drive(miles)
		if @fuel-(miles/20)>0
			@distance = @distance+miles
			@fuel = @fuel - (miles/20)
		else 
			puts "you will run out of gas if you drive that far"
		end
	end

	def fuel_up
		cost = (10.0-@fuel)*3.50
		@fuel = 10
		puts "Your fill up cost $#{cost}"
	end

end