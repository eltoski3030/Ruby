
class User
    attr_accessor :name, :password, :email
    @@login_counter = 0
    
    def initialize(name = nil, password = nil, email = nil)
        @name = name
        @password = password
        @email = email
        @@login_counter += 1
    end
    
    def prompt_for_user_info
        puts "What's your name?"
        @name = gets.chomp
        puts "What's your password?"
        @password = gets.chomp
        puts "What's your email?"
        @email = gets.chomp
    end
    
    def self.show_login_counter
        puts "Number logged in: #{@@login_counter}"
    end
end

accounts = []
tasks = []

puts "Welcome to task_manager"
puts "------------------------"
puts "New User? Yes or No" 
add_user = gets.chomp.downcase

if add_user == "yes"
  puts "What's your name?"
  name = gets.chomp
  puts "What's your password?"
  password = gets.chomp
  puts "What's your email?"
  email = gets.chomp
  
  newUser = User.new(name, password, email)
  accounts.push(newUser)
  User.show_login_counter
elsif add_user == "no"
  puts "Proceeding without adding new user."
else
  puts "Input should be 'yes' or 'no'"
end

puts "Enter Username and Password to login:"
print "Username: "
username_input = gets.chomp
print "Password: "
password_input = gets.chomp

authenticated_user = accounts.find { |account| account.name == username_input && account.password == password_input }

if authenticated_user
    puts "Successfully logged in!"
    
    action = nil
    while action != "exit"
      puts "What would you like to do? (add task / delete task / view tasks / exit)"
      action = gets.chomp.downcase
  
      case action
      when "add task"
        puts "Enter a new task:"
        tasks << gets.chomp
        puts "Task added."
      when "delete task"
        if tasks.empty?
          puts "No tasks to delete."
        else
          puts "Which task number to delete?"
          tasks.each_with_index { |task, index| puts "#{index + 1}. #{task}" }
          task_number = gets.to_i
          tasks.delete_at(task_number - 1)
          puts "Task deleted."
        end
      when "view tasks"
        if tasks.empty?
          puts "No tasks to view."
        else
          puts "Here are your tasks:"
          tasks.each_with_index { |task, index| puts "#{index + 1}. #{task}" }
        end
      when "exit"
        puts "Exiting task manager."
      else
        puts "Invalid action."
      end
    end
  else
    puts "Username or Password incorrect."
  end


