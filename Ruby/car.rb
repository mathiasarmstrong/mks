class Car
	@@total_car_count = 0
	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize()
		@fuel = 10
		@distance = 0
		@@total_car_count+=1
	end

	def drive(miles)
		if (@fuel - miles/20.0)>=0
			@distance +=miles
			@fuel -= miles/20.0
		else 
			@distance += @fuel * 20.0
			@fuel = 0
			puts "you are out of gas!"
		end
	end

	def fuel_up
		cost = (10.0-@fuel)*3.50
		@fuel = 10
		puts "Your fill up cost $#{cost}"
	end
    @@total_car_count = 0
end
car_a = Car.new()
car_b = Car.new()
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b