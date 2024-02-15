my_hash = {
  "Monday" => "Sunny and 64 degrees",
  "Tuesday" => "Cloudy with a chance of rain",
  "Wednesday" => "75 and pleasant!"
  }


  my_hash.each do |key,value| 
  puts `#{key} : #{value}`
  end