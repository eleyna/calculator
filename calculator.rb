PI = 3.14159265359

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
    when "sphere volume"
      x = get_one_number
      volume_of_sphere(x)
    when "area"
      x, y = get_two_numbers
      area(x, y)
    when "volume"
      x, y, z = get_three_numbers
      volume(x, y, z)
    when "circle area"
      x = get_one_number
      area_of_circle(x)
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

def volume_of_sphere(radius)
  return (4/3.0 * PI * (radius**3))
end

def area_of_circle(radius)
  return (PI * radius**2)
end

def area(width, length)
  return width * length
end

def volume(width, length, height)
  return width * length * height
end

def div(num_1, num_2)
  while (num_2 == 0)
    puts "\nCannot divide by 0. Please enter another number:"
    num_2 = gets.chomp.to_f
  end
  return num_1 / num_2
end

def get_one_number
  puts "\nPlease enter the number:"
  return gets.chomp.to_f
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
  third = gets.chomp.to_f
  return first, second, third
end

########________MAIN________########
puts "\nWould you like to perform a calculation? (yes/no)"
answer = gets.chomp

while (answer == "yes")
  puts "\nWhat type of calculation would you like to perform?"
  puts "(addition, subtraction, multiplication, division, " +
       "sphere volume, area, volume, circle area)"
  calc = gets.chomp
  puts "\nYour result is: " + calculator(calc).to_s
  puts "\nWould you like to perform another calculation? (yes/no)\n"
  answer = gets.chomp
end










