
move_forward = "moving forward"
move_left = "moving left"

(1..3).each do
  puts move_forward
  (1..5).each do
    puts move_left
  end
end


array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end
