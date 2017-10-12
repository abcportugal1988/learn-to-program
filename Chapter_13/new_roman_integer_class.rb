class Integer
  def new_roman
    if self.between?(0,3000)
      answer=""
      answer+="M"*(self/1000)
        if self%1000>=900
          answer+="C"*((self%1000-800)/100)+"M"
        elsif self%500>=400
          answer+="C"*((self%500-300)/100)+"D"
        else
          answer+="D"*((self%1000)/500)+"C"*((self%500)/100)
        end
        if self%100>=90
          answer+="X"*((self%100-80)/10)+"C"
        elsif self%50>=40
          answer+="X"*((self%50-30)/10)+"L"
        else
          answer+="L"*((self%100)/50)+"X"*((self%50)/10)
        end
        if self%10>=9
          answer+="I"*((self%10-8)/1)+"X"
        elsif self%5>=4
          answer+="I"*((self%5-3)/1)+"V"
        else
          answer+="V"*((self%10)/5)+"I"*((self%5)/1)
        end
    else
      print "Please call this method on a number between 0 and 3000"
    end
  end
end
