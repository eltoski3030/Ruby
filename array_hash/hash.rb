# creating a new hash 

 # capitalizw hash(Hash) 
 the_hash =Hash.new
 the_hash ['one'] = 1
 the_hash ['two'] = 2 
 
 
 puts the_hash
 
 puts  the_hash['one']



# Array
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

# new hash classic way
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
#this is for arrays
friends.each { |x| puts "#{x}" }

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each {|x| puts x}

#this is for hash
family.each { |x, y| puts "#{x}: #{y}" }

# or can be done this way to for hash 

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |key| key.each { |value| puts value }}


secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  # without brackets itteration 
secret_identities.each do |hero, name| 
  puts "#{hero}: #{name}"
end

# //////////
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |person, order| 
  puts order
end

puts "Another way to iterate throught a hash"
lunch_order.each {|key,value|puts value}