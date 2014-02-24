File.open('hello_from_ruby.txt', 'a+') do |file| 
  # ask user for command 
  puts "What you want to do with this poor file? (save / read / introspect)"
  command = gets.chomp.downcase
  if command == "save"
    # if user wants to save stuff to file, we first ask what to save and then
    # write it to the file
    puts "Enter stuff"
    file.puts gets.chomp
  elsif command == "read"
    # if user wants to read, we just read each line of the file and print it to screen
    puts file.readlines
  elsif command == "introspect"
    # introspect opens the file with the program itself and streams it to the screen line by line
    File.open($0, 'r') { |prog| puts prog.readlines }
  end
end
