
# while loop program

name = ''

puts "What is your name?"
name = gets.chomp

while name != 'pablo'
    puts "Your name is not Pablo. Please enter your name again:"
    name = gets.chomp
end

puts "Hello, Pablo!"

password = ''

puts "What is your password?"
password = gets.chomp

until password.length == 7
    puts "Your password is too short. Please enter a password with 7 characters:"
    password = gets.chomp
end

puts "Password set successfully!"






# Loop exercises

#1)



j = 1
until j > 10
    j += 1
    puts j
end

counter = 0 
while counter < 10
    counter += 1
    puts "hello world"
end


name = true

while name == false
    puts "Is name true or false?"
    name = gets.chomp.downcase

    if name == "true"
        name = true
    elsif name == "false"
        name = false
    else
        puts "Invalid input. Please enter 'true' or 'false'."
    end
end 

puts "Loop exited. Name is now #{name}."