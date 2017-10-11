Dir.chdir "/Users/AntonioBelmardaCosta/Desktop/Projects/learn-to-program/Chapter_11"
file_names = Dir["/Users/AntonioBelmardaCosta/Desktop/Projects/learn-to-program/Chapter_12/*.{txt}"]
puts "What would you like to call this batch?"
batch_name = gets.chomp
   puts
   print "Downloading #{file_names.length} files: "
   file_number = 1
   file_names.each do |name|
     print "."
     new_name ="#{batch_name}#{file_number}"
      if File.exist?(new_name)
        puts
        puts "Please rename your batch"
      else
        File.rename name, new_name
      end
     file_number = file_number + 1
    end
puts
puts "It's finished"
