filename = "test.txt"
test_string="I will never do something stupid again"
File.open filename, "w" do |x|
  x.write test_string
end

read_string=File.read(filename)

puts(read_string==test_string)
