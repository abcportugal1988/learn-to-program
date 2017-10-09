puts "What is your starting year?"
start_year=gets.chomp
puts "What is your ending year?"
end_year=gets.chomp
if end_year.to_i<start_year.to_i
  puts "Your start year is larger than your ending year. Please try to re-enter the years by re-running the program."
else
  while start_year.to_i<=end_year.to_i
    if start_year.to_i%4==0
      if start_year.to_i%100!=0 || start_year.to_i%400==0
        puts start_year
      end
    end
    start_year=start_year.to_i+1
  end
end
