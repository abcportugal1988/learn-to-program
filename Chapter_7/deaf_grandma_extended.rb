i=0
while true
  input=gets.chomp
  if input!=input.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    i=0
  elsif input=="BYE"
    puts "NOT NOT SINCE "+(1930+rand(21)).to_s+"!"
    i+=1
  else
    puts "NOT NOT SINCE "+(1930+rand(21)).to_s+"!"
    i=0
  end
  break if i==3
end
