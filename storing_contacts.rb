contacts = []

add_contact = 'add'
view_contact = 'view contact'
delete_contact = 'delete contact'
edit_contact = 'edit contact'
quit = "exit"

while true
    puts "\nOptions for what to do"
    puts "Your options are: add, view contact, delete contact, edit contact, exit:"
    option_prompt = gets.chomp.downcase 

    case option_prompt
    when "add"
        puts "What is the contact's name?"
        new_contact = gets.chomp
        contacts.push(new_contact)
        puts "Successfully added #{new_contact}."
    when "view contact"
        if contacts.empty?
            puts "Your contact list is empty."
        else
            puts "Here are all your contacts: \n#{contacts.join("\n")}"
        end
    when "delete contact"
        if contacts.empty?
            puts "Your contact list is empty."
        else
            puts "Which contact would you like to delete? Enter the index:"
            contacts.each_with_index { |contact, index| puts "#{index}: #{contact}" }
            to_delete = gets.chomp.to_i
            if to_delete.between?(0, contacts.length - 1)
                deleted_item = contacts.delete_at(to_delete)
                puts "Successfully deleted #{deleted_item}."
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