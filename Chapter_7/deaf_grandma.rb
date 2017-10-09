while true
  input=gets.chomp
  break if input=="BYE"
if input!=input.upcase
  puts "HUH?! SPEAK UP, SONNY!"
else
  puts "NOT NOT SINCE "+(1930+rand(21)).to_s+"!"
end
end
