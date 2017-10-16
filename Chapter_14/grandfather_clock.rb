def clock &block
  if Time.new.hour>=12
    (Time.new.hour-12).times do
      block.call
    end
  else
    (Time.new.hour-12).times do
      block.call
    end
  end
end

clock do
  puts "Dong!"
end
