def hello(name)
	puts "Welcome to learning how to code #{name}"
end

hello('rob')
hello('jane')
hello('pete')

def hello(name, age)
	puts "Welcome #{name}, #{age} is definitely not too old to learn how to code."
	
end

hello("rob",30)
hello("steve",72)
hello("jenny",55)

# Arguments

def buy(product)
	puts "Here is your #{product}, thank you"
end

buy("milk")
# buy() # no argument given, error raised

def buy(product, quantity = 1)
	puts "Here is #{quantity} #{product}, thank you"
	
end

buy("milk")
buy("milk", 5)

def buy(product)

end

def buy product

end

# Return values

def monthly_payment(salary_per_annum)
	return salary_per_annum / 12
end

puts "If the salary is £30,000 per year,"
puts "the monthly payment will be #{monthly_payment(30000)}"



