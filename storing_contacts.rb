
contacts = []

while true
    puts "\nOptions for what to do:"
    puts "Your options are: add, view contact, delete contact, edit contact, exit:"
    option_prompt = gets.chomp.downcase 

    case option_prompt
    when "add"
        puts "What's your name?"
        name = gets.chomp

        puts "What's your phone?"
        phone = gets.chomp

        puts "What's your email?"
        email = gets.chomp

        # Create a new contact hash here, inside the loop, with the current input values
        new_contact = { name: name, phone: phone, email: email }
        contacts.push(new_contact)

        puts "You've added a contact: #{name}, #{phone}, #{email}"
    when "view contact"
        if contacts.empty?
            puts "Your contact list is empty."
        else
            puts "Here are all your contacts:"
            contacts.each_with_index do |contact, index|
                puts "#{index}: #{contact[:name]}, #{contact[:phone]}, #{contact[:email]}"
            end
        end
    when "delete contact"
        if contacts.empty?
            puts "Your contact list is empty."
        else
            puts "Which contact would you like to delete? Enter the index:"
            contacts.each_with_index { |contact, index| puts "#{index}: #{contact[:name]}" }
            to_delete = gets.chomp.to_i
            if to_delete.between?(0, contacts.length - 1)
                deleted_item = contacts.delete_at(to_delete)
                puts "Successfully deleted: #{deleted_item[:name]}, #{deleted_item[:phone]}, #{deleted_item[:email]}"
            else
                puts "That contact does not exist."
            end
        end
    when "edit contact"
        puts "Edit contact feature not implemented yet."
    when "exit"
        puts "Exiting program."
        break 
    else
        puts "Unrecognized command. Did you mean: add, view contact, delete contact, edit contact, exit?"
    end
end


