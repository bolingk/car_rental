require_relative "person"
require_relative "vehicle"

@parking_lot = []
@customers = []
@message = ""

def display_menu clear_menu
  if clear_menu == "yes"
	system "clear"
  end
  puts "*************************************************"
  puts "****  Welcome to the Car Rental Application  ****"
  puts "*************************************************"
  puts "****  Please select from the following menu: ****"
  puts "**** 1. Add a Vehicle"
  puts "**** 2. Print Inventory"
  puts "**** 3. Add a Customer"
  puts "**** 4. Print Customer List"
  puts "**** 9. Exit Application"
  puts ""
  status_message(@message)
  @message = ""

  option = gets.chomp.to_i

    case option
			when 1 then add_a_vehicle
			when 2 then print_vehicles
			when 3 then add_a_customer
			when 4 then puts "4"
			when 9 then exit_application
			else 
				@message = "Invalid selection"
				display_menu("yes")
	end
end

def status_message message
	puts "******************  #{@message}  *********************"
end

def add_a_vehicle
	print "Year (eg. 2012):"
	year = gets.chomp
	print "Make (eg. Toyota):"
	make = gets.chomp
	print "Model (eg. 4Runner):"
	model = gets.chomp

	vehicle = Vehicle.new(year, make, model)
	@parking_lot.push(vehicle)

	@message = "Added a vehicle"

	display_menu("yes")
end

def print_vehicles
	puts "The vehicles on you lot are:"
	@parking_lot.each do |car|
		puts "#{car.year} #{car.make} #{car.model}"
 	end
 	display_menu("no")
end

def add_a_customer
	print "Enter Customer Name:"
	name = gets.chomp
	print "Enter Age:"
	age = gets.chomp
	print "Enter Customer hometown:"
	hometown = gets.chomp

	person = Person.new(name, age, hometown)
	@customers.push(person)

	@message = "Added a Customer"

	display_menu("yes")
end

def print_customers
	puts "Your current customers are:"
	@customers.each do |customer|
		puts "#{customer.name} who is #{customer.age}, and from #{customer.hometown}"
 	end
 	display_menu("no")
end

def exit_application
	puts "*************************************************"
	puts "*****************  Good Bye!  *******************"
	puts "*************************************************"
end

display_menu("yes")








