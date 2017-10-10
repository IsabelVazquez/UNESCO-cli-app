require_relative "../lib/scraper.rb"

def list_options
  Scraper.make_sites
  Site.all.each.with_index(1) do |site, i|
    puts "#{i}. #{site.title}"
  end
end

def menu
  puts "Enter the site number you would like more info on or type exit:"
  input = nil
  while input != "exit"
    input = gets.strip
    if input.to_i > 0
      site = Site.all[input.to_i - 1]
      puts "#{site.title}"
      puts "#{site.description}"
    else
      puts "Type an integer or exit please."
    end
  end
end
