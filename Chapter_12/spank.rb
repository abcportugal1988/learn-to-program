puts "In which year were you born?"
year=gets.chomp
puts "In which month were you born"
month=gets.chomp
puts "In which day were you born"
day=gets.chomp
birthday = Time.local(year,month,day)
age=Time.now-birthday
puts "SPANK!"*(age/60/60/24/365)
