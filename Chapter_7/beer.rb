num=99
while true
puts num.to_s+" bottles of beer on the wall, "+num.to_s+" bottles of beer.
Take one down and pass it around, "+(num-1).to_s+" bottles of beer on the wall."
num=num-1
break if num==2
end
while num==2
  puts num.to_s+" bottles of beer on the wall, "+num.to_s+" bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall."
  num=num-1
end
while num==1
  puts num.to_s+" bottle of beer on the wall, "+num.to_s+" bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
  num=num-1
end
while num==0
  puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  num=num-1
end
