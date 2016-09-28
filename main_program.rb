system "clear"

def display_menu
puts "*************************************************"
puts "****  Welcome to the Car Rental Application  ****"
puts "*************************************************"
puts "****  Please select from the following menu: ****"
puts "**** 1. Option 1"
puts "**** 2. Option 2"
puts "**** 3. Option 3"
puts "**** 4. Option 4"

option = gets.chomp.to_i
	case option
			when 1 then puts "1"
			when 2 then puts "2"
			when 3 then puts "3"
			when 4 then puts "4"
			else puts "Invalid selection, please choose from menu"
	end
end
display_menu

