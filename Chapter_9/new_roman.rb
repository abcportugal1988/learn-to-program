def new_roman(num)
  if num.between?(0,3000)
    answer=""
    answer+="M"*(num/1000)
      if num%1000>=900
        answer+="C"*((num%1000-800)/100)+"M"
      elsif num%500>=400
        answer+="C"*((num%500-300)/100)+"D"
      else
        answer+="D"*((num%1000)/500)+"C"*((num%500)/100)
      end
      if num%100>=90
        answer+="X"*((num%100-80)/10)+"C"
      elsif num%50>=40
        answer+="X"*((num%50-30)/10)+"L"
      else
        answer+="L"*((num%100)/50)+"X"*((num%50)/10)
      end
      if num%10>=9
        answer+="I"*((num%10-8)/1)+"X"
      elsif num%5>=4
        answer+="I"*((num%5-3)/1)+"V"
      else
        answer+="V"*((num%10)/5)+"I"*((num%5)/1)
      end
  else
    print "Please enter a number between 0 and 3000"
  end
end

puts new_roman(11)
puts new_roman(44)
puts new_roman(66)
puts new_roman(99)
puts new_roman(131)
puts new_roman(144)
puts new_roman(186)
puts new_roman(199)
puts new_roman(211)
puts new_roman(244)
puts new_roman(266)
