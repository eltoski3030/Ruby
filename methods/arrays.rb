system("clear")

puts "\n === Creating Arrays"
puts "\n"

list = [1,2,3,4,5]
list2 = Array.new

puts "list = #{list}"
puts "list2 = #{list2}"

list3 = Array.new(5)
list4 = Array.new(5) { |i| i+1 }

puts "list3 = #{list3}"
puts "list4 = #{list4}"

