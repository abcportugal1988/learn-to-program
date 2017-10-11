def alphabetize(unsorted,sorted)
  if unsorted.length<=0
    return sorted
  else
    smallest=unsorted.pop
    still_unsorted=[]
    unsorted.each do |x|
      if x<smallest
        still_unsorted.push(smallest)
        smallest=x
      else
        still_unsorted.push(x)
      end
    end
    sorted.push(smallest)
    alphabetize(still_unsorted,sorted)
  end
end

puts alphabetize(["a", "c", "d", "b"],[])
