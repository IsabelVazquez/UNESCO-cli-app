def list_options
  puts <<-DOC
    1. option 1
    2. option 2
    3. option 3
    4. option 4
  DOC
end

def menu
  puts "Enter number of item you would like more info on or exit"
  input = nil
  while input != "exit"
    input = gets.strip
    case input
    when "1"
      puts "more info on 1"
    when "2"
      puts "more info on 2"
    when "3"
      puts "more info on 3"
    when "4"
      puts "more info on 4"
    end
  end
end
