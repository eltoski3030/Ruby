# Hash 1: Simple key-value pairs
hash1 = { name: "Alice", age: 30, city: "New York" }

# Hash 2: Mixed data types
hash2 = { "id" => 1, status: :active, scores: [88, 92, 95] }

# Hash 3: Nested hash
hash3 = { product: "Laptop", specs: { processor: "Intel i7", ram: "16GB", storage: "512GB SSD" } }

# Hash 4: Using symbols and strings interchangeably
hash4 = { "brand" => "Nike", :model => "Air Max", "price" => 199.99 }

# Hash 5: Hash with array of hashes
hash5 = { users: [{ name: "John", age: 22 }, { name: "Sarah", age: 28 }] }


# Array 1: Simple list of names
array1 = ["Alice", "Bob", "Charlie", "Diana"]

# Array 2: Mixed data types
array2 = [42, "banana", :symbol, [1, 2, 3]]

# Array 3: Array of hashes
array3 = [{ id: 1, name: "T-shirt", price: 25.0 }, { id: 2, name: "Jeans", price: 50.0 }]

# Array 4: Nested arrays
array4 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Array 5: Random stuff
array5 = ["Ruby", 3.14, { key: "value" }, [:a, :b, :c], nil]

hash1.each_with_index  {|k,v| puts "#{k} : #{v}"}

puts (0...10).select(&:even?)

# [0, 2, 4, 6, 8]

twoArrays = array1.push(array2)
puts "--------------"
puts twoArrays[3]
puts "--------------"

