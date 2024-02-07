friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
#this is for arrays
friends.each { |x| puts "#{x}" }

#this is for hash
family.each { |x, y| puts "#{x}: #{y}" }