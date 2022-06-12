require "csv"
require "./problems_module.rb"
class Questions
attr_accessor :question,:answer

def initialize(question, answer)
@question=question
@answer=answer
end

end  # class ends here

file="Problems.csv"
data = CSV.read(file)
print "Do you want to rename Problems.csv file yes or no ?"
choice=gets.chomp
if choice=="yes" 
print "Enter new name of file : "
file_name=gets.chomp
File.rename(file, file_name)	
end


array = Array.new

(0..data.length-1).each_with_index do |index|
 array[index] = Questions.new(data[index][0],data[index][1])
end



Play::run_game (array)


