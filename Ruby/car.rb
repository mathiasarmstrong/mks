class Car
	attr_accessor :roof_status
	@@total_car_count = 0
	@@car_color={}
	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color="blue")
		@fuel = 10
		@distance = 0
		@@total_car_count+=1
		@color = color
		@convertible = convertible
		if @@car_color[color]==nil 
			@@car_color[color]=1
		else
			@@car_color[color]+=1
		end
		
	end

	def color=(color)
		@@car_color[@color]-=1
		@color=color
		@@car_color[@color]+=1
	end
	
	def most_popular_color
		popular = 0
		@@car_color.each{|key, value| value>popular ? popular=key : nil;}
		return popular
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



class Convertible < Car
	def initialize(color="blue")
		super(color)
		@roof_status = "closed"
	end
	def top_down
		@roof_status = "open"	
	end

	def close_top
		@roof_status = "closed"	
	end
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