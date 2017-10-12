def roman_to_integer(roman)
  conversion={"m"=>1000, "d"=>500, "c"=>100, "l"=>50, "x"=>10, "v"=>5, "i"=>1}
  arr=roman.to_s.split("")
  int=0
  i=0
    arr.each do |x|
      break if arr[i+1].nil?
      if conversion[arr[i].downcase].nil? || conversion[arr[i+1].downcase].nil?
        return print "Please input correct roman numerals"
      elsif conversion[arr[i].downcase]<conversion[arr[i+1].downcase]
        int-=conversion[arr[i].downcase]
      else
        int+=conversion[arr[i].downcase]
      end
      i+=1
    end
    int+conversion[arr[i].downcase]
end

puts roman_to_integer("mcmxcix")
