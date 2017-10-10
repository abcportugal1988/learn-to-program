puts "Please tell me which words you would like to sort."
arr=[]
while true
  input=gets.chomp
  break if input == ""
  arr.push(input)
end
arr.sort!
puts arr
