def multiple(arg)
	count = 0
	nums=[]
	while count<=arg
		count+=1
		if count%3==0
			nums<<count
		elsif count%5==0
			nums<<count
		end

	end
	if nums.inject(:+)!=0
		puts (nums.inject(:+).to_s+" is the sum")
	else
		puts "please put in a number"
	end		
end
multiple(1000)