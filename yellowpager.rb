def numbers_for_string(input_string)
 
 if input_string.length > 10
  puts "FALSE"
 end
 
 mappings = [{letter: ["A", "B", "C"], number: "2"},
             {letter: ["D", "E", "F"], number: "3"},
             {letter: ["G", "H", "I"], number: "4"},
             {letter: ["J", "K", "L"], number: "5"},
             {letter: ["M", "N", "O"], number: "6"},
             {letter: ["P", "Q", "R", "S"], number: "7"},
             {letter: ["T", "U", "V"], number: "8"},
             {letter: ["W", "X", "Y", "Z"], number: "9"},]
             
 output_result = ""
 input_string.split("").each do |input_char|
  input_char = input_char.upcase
  output_num = ""
  
  mappings.each do |next_mapping|
   if next_mapping[:letter].include?(input_char)
    output_num = next_mapping[:number]
   end
  end
  
  output_result += output_num
 
 end
 
 
 return output_result
 
end

puts "Yellow Pager!"

test_strings = ["helloworld", "Amazing Way", "Lighthouse"]

test_strings.each do |some_string|
 puts "Start: #{some_string}"
 result_number = numbers_for_string(some_string)
 puts "Finish: #{result_number}"
end
