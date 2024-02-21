def double_numbers(x)
    double = Proc.new { |x| x * 2 }
    x.collect(&double)
    return double.call(x)
  end
  
  array =  [1,3,4,5,6,7]
  
     

def square(array,proc)
    array.collect(&proc)
end

square_proc = Proc.new {|x|x ** 2}
square(array, square_proc)


def even (array,proc)
    array.select(&proc)
    
end

proc_even = Proc.new { |x| x.even?}

def factorial(array,lambda)
    array.map(&lambda)
end

factorial_lambda = lambda do |x|
    result = 1
    x.times { |i| result *= (i + 1) }
    result
  end

 factorial(array, factorial_lambda)



 def avg_calc(x)
    reduced = x.reduce(0) { |total, num| total + num }
    average =  reduced / x.length.to_f  # Calculate the average correctly
  end

  puts avg_calc(array)  # Output: 3.0
  


  #right way to do it 
  # Define a Proc to calculate the average of an array of numbers
calculate_average = Proc.new do |array|
    total = array.reduce(0) { |sum, num| sum + num }  # Calculate the sum of array elements
    total / array.length.to_f  # Calculate the average
  end
  
  # Example usage:
  numbers = [1, 2, 3, 4, 5]
  puts calculate_average.call(numbers)  # Output: 3.0 (average of 1, 2, 3, 4, and 5)
  

  def find_max(array, proc)
    proc.call(array)
  end
  
  # Define a Proc to find the maximum value in an array
  max_num = Proc.new { |arr| arr.max }
  
  # Define an array
  array = [3, 1, 7, 4, 5]
  
  # Call the method to find the maximum value in the array using the Proc
  max_value = find_max(array, max_num)
  puts max_value  # Output: 7
  

  puts "Enter first argument:"
  arg1 = gets.chomp.to_i  
  puts "Enter second argument:"
  arg2 = gets.chomp.to_i  
  
  def sumi(arg1, arg2, lambda)
      args = [arg1, arg2]
      result = lambda.call(args)
      return result
  end
  
  sum_lambda = lambda {|x| x.reduce(0) { |total, num| total + num }}
    
  puts "Sum of the arguments: #{sumi(arg1, arg2, sum_lambda)}"
  
  
  numbers_array = []

loop do
  puts "Enter a number or type 'exit' to finish:"
  input = gets.chomp
  
  if input.downcase == "exit"
    break
  elsif input.match?(/\A-?\d+\z/)
    numbers_array << input.to_i
    puts "Number added!"
  else
    puts "Invalid input. Please enter a number or type 'exit'."
  end
end

def ifEven(array,lambda)
    array.select(&lambda)
end

even_lambda = lambda {|x| x.even?}

puts "This are the even numbers in your array #{ifEven(numbers_array,even_lambda)}"

puts "Numbers entered: #{numbers_array.sort!}"


