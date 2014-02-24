
#a. salary 30000, deposit 50000, property_value 200000
#b. salary 30000, deposit 50000, property_value 300000
#c. salary 50000, deposit 40000, property_value 200000
#d. salary 80000, deposit 100000, property_value 500000
#e. salary 35000, deposit 60000, property_value 300000
#f. salary 25000, deposit 30000, property_value 150000

def header
	puts "Morgage Calculator"
  	puts "-----------------------"
end	

def customer_input
  	puts "What is your salary"
  	salary = gets.to_i
  	puts "What is your depoit amount"
  	deposit = gets.chomp.to_i
  	puts "What is the value of the property"
  	property_value = gets.chomp.to_i

  	[salary, deposit, property_value]
end


def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = property_value < 650000 ? 0.05 : 0.2 # 5% if less than 650000, 20% if more than 65,000
  max_multiplier = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && 
  (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75)
end

def print_answer(answer)
	if answer
		puts "You may purchase a mortgage"
	else 
		puts "You do not qualify for a mortgage"
	end
end


	salary, deposit, property_value = customer_input
	answer = provide_mortgage?(salary, deposit, property_value)
	print_answer(answer)

