require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

sentence = ARGV
command = sentence.shift

case command
when "list" then puts Task.all
when "add" then Task.create!(sentence.join(" "))
when "delete" then Task.destroy(task_id)
when "complete" then Task.complete(task_id)
else raise ArgumentError, "Please select list, add, delete, or complete"
end

