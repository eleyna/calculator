def calculator(calc)
  case calc
    when "addition"
      x, y = get_two_numbers
      add(x, y)
    when "subtraction"
      x, y = get_two_numbers
      sub(x, y)
    when "multiplication"
      x, y = get_two_numbers
      mult(x, y)
    when "division"
      x, y = get_two_numbers
      div(x, y)
    else
      "You did not enter a calculation"
  end
end

def add(num_1, num_2)
  return num_1 + num_2
end

def sub(num_1, num_2)
  return num_1 - num_2
end

def mult(num_1, num_2)
  return num_1 * num_2
end

def div(num_1, num_2)
  while (num_2 == 0)
    puts "\nCannot divide by 0. Please enter another number:"
    num_2 = gets.chomp.to_f
  end
  return num_1 / num_2
end

def get_two_numbers
  puts "\nPlease enter the first number:"
  first = gets.chomp.to_f
  puts "\nPlease enter the second number:"
  second = gets.chomp.to_f
  return first, second
end

def get_three_numbers
  puts "\nPlease enter the first number:"
  first = gets.chomp.to_f
  puts "\nPlease enter the second number:"
  second = gets.chomp.to_f
  puts "\nPlease enter the third number:"
  third = get.chomp.to_f
  return first, second, third
end

########________MAIN________########
puts "\nWould you like to perform a calculation? (yes/no)"
answer = gets.chomp

while (answer == "yes")
  puts "\nWhat type of calculation would you like to perform?"
  puts "(addition, subtraction, multiplication, division)"
  calc = gets.chomp
  puts "\nYour result is: " + calculator(calc).to_s
  puts "\nWould you like to perform another calculation? (yes/no)\n"
  answer = gets.chomp
end










