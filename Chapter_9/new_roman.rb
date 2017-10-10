def new_roman(num)
  if num.between?(0,3000)
    answer=""
    answer+="M"*(num/1000)
      if num%1000>800
        answer+="C"*((num%1000-800)/100)+"M"
      elsif num%500>300
        answer+="C"*((num%500-300)/100)+"D"
      else
        answer+="D"*((num%1000)/500)+"C"*((num%500)/100)
      end
      if num%100>80
        answer+="X"*((num%100-80)/10)+"C"
      elsif num%50>30
        answer+="X"*((num%500-300)/100)+"L"
      else
        answer+="L"*((num%100)/50)+"X"*((num%50)/10)
      end
      if num%10>8
        answer+="I"*((num%10-8)/1)+"X"
      elsif num%5>3
        answer+="I"*((num%500-300)/100)+"V"
      else
        answer+="V"*((num%10)/5)+"I"*((num%5)/1)
      end
  else
    print "Please enter a number between 0 and 3000"
  end
end
