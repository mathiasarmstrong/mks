class RaceCar
	attr_accessor :speed, :name, :distance 
	def initialize(name1)
		@name = name1
	end
end
class RaceTrack
	attr_accessor :time, :race_cars, :order, :race_start
	def initialize
		@race_cars = []
		@race_start = false
		@order={}

	end
	def add_car(car)
		if @race_start 
			return "you cannot add a car the race has started"
		else
			@race_cars<<car
		end
	end

	def start
		if @race_start
			puts "The race has already started"
		else
			@race_start = true
			@race_cars.each{|arg|arg.speed = 60+rand(20)}
			@time=0
		end
	end
	def end
		race_start=false
	end

	def check
		if @race_start
			@time=@time+1
			
			case @time
			when 1
				@race_cars.each{|arg|arg.distance = @time*arg.speed}
				@race_cars.each{|arg|arg.speed = arg.speed+rand(20)}
			when 2
				@race_cars.each{|arg|arg.distance = arg.distance + arg.speed}
				@race_cars.each{|arg|arg.speed = arg.speed+rand(20)}
			when 3
				@race_cars.each{|arg|arg.distance = arg.distance + arg.speed}
				@race_cars.each{|arg|arg.speed = arg.speed+rand(20)}
			when 4
				@race_cars.each{|arg|arg.distance = arg.distance + arg.speed}
				@race_cars.each{|arg|arg.speed = arg.speed+rand(20)}

			when 5
				race_cars.each{|arg| order[arg.name] = arg.distance}
				order.sort
				order.each_with_index{|key, index| puts "#{index+1} place : #{key[0]} with #{key[1]} miles" }
			else
				puts "the race is over"
			end

		else
			puts "the race has not yet started"
		end
	end
end