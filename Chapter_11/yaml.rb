require "yaml"
test_array=["Antonio","Bernardo","Cristovao","Diogo"]
test_array_2=[["Evan","Eva"],["Finn","Fiona"],["George","Gwen"],[1,"1"],[true,"true"]]
test_string=test_array.to_yaml

filename="names.txt"

File.open filename, "w" do |f|
  f.write test_string
end

read_string=File.read filename

read_array=YAML:: load read_string

puts(read_string==test_string)
puts(read_array==test_array)

test_string_2=test_array_2.to_yaml

puts test_string_2

new_array=YAML:: load test_string_2

puts new_array==test_array_2
