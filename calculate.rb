# Define lambdas for area calculations
circle_area = ->(radius) { Math::PI * radius**2 }
rectangle_area = ->(length, width) { length * width }
triangle_area = ->(base, height) { 0.5 * base * height }

# Define a method to interact with the user and perform calculations
def calculate_area
  puts "Choose a shape to calculate the area:"
  puts "1. Circle"
  puts "2. Rectangle"
  puts "3. Triangle"
  print "Enter your choice (1/2/3): "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter the radius of the circle: "
    radius = gets.chomp.to_f
    area = circle_area.call(radius)
    puts "The area of the circle is #{area.round(2)}"
  when 2
    print "Enter the length of the rectangle: "
    length = gets.chomp.to_f
    print "Enter the width of the rectangle: "
    width = gets.chomp.to_f
    area = rectangle_area.call(length, width)
    puts "The area of the rectangle is #{area}"
  when 3
    print "Enter the base of the triangle: "
    base = gets.chomp.to_f
    print "Enter the height of the triangle: "
    height = gets.chomp.to_f
    area = triangle_area.call(base, height)
    puts "The area of the triangle is #{area}"
  else
    puts "Invalid choice!"
  end
end

# Call the method to start the program
calculate_area
