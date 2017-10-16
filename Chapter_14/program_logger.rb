def program_logger (description, &block)
  puts "Beginning #{description}..."
  x=block.call
  puts "#{description} finished returning #{x}"
end

program_logger "outer_block" do
  program_logger "inside_block_1" do
    5
  end
  program_logger "inside_block_2" do
    "I like Thai food"
  end
  "all done"
end
