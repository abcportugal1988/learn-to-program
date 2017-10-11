def shuffle (unshuffled,shuffled)
  if unshuffled.length<=0
    return shuffled
  else
    shuffled.push(unshuffled[rand(unshuffled.length)])
    unshuffled=unshuffled-shuffled
    shuffle(unshuffled,shuffled)
  end
end

puts shuffle(["a", "C", "D", "b"],[])
