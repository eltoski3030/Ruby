# Booleans 
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly
puts "One is less than two!" if 1 < 2
puts "I'm not writing code!" unless true

#Ternary example
print true ? "true" : "false"
puts 1 < 2 ? "One is less than two!" : "One is not less than two."
# case 

case language
    when "JS" then puts "Websites!"
    when "Python" then puts "Science!"
    when "Ruby" then puts "Web apps!"
    else puts "I don't know!"
end

#Conditional Assignment
#locks a variable with value (instead of nil)
favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

#Methods 

def multiple_of_three(n)
    n % 3 == 0 ? "True" : "False"
    #no need for return
 end


#Ruby does this via short-circuit evaluation.
 def a
    puts "A was evaluated!"
    return true
  end
  
  def b
    puts "B was also evaluated!"
    return true
  end
  
  puts a || b
  puts "------"
  puts a && b


  #loops

  5.times { puts "Odelay!" }
#puts "Odelay!"
  my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |num| puts num unless num % 2 !=0 }

#.upto and .downto
"L".upto("P") { |letter| puts letter }

#.respond_to? takes a symbol and returns true if an object can receive that method and false
age = 26

age.respond_to?(:next) #prints true

#push = << 

alphabet = ["a", "b", "c"]
alphabet << "d" 

caption = "A giraffe surrounded by "
caption << "weezards!"

#String Interpolation

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end