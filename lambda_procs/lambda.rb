crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y<"M"}
second_half = lambda { |x,y| y>"M"}
a_to_m = crew.select(&first_half)
n_to_z = crew.select(&second_half)  

puts n_to_z
puts a_to_m

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = lambda {|n| n < 100}

underAges = ages.select(&under_100)

puts underAges