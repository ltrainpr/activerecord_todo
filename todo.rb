require_relative 'config/application'


# puts "Put your application code in #{File.expand_path(__FILE__)}"

sentence = ARGV
command = sentence.shift

case command
when "list" then puts Task.all
when "add" then Task.create!(description: sentence.join(" "))
when "delete" then Task.destroy(sentence.first)
when "complete" then Task.find(sentence.first).complete!
else raise ArgumentError, "Please select list, add, delete, or complete"
end

