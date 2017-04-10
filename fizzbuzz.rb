puts "FizzBuzz"

(1..100).to_a.each do |next_number|
 
 output_value = ""
 
 if next_number % 3 == 0
  output_value = output_value + "Fizz"
 end
 
 if next_number % 5 == 0
  output_value = output_value + "Buzz"
 end
 
 if output_value == ""
  output_value = next_number
 end
 
 puts output_value
 
end

 
 