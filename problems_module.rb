require "timeout"
module Play

def self.run_game  (queries)
	score=0
	print "Do you want to start the quiz y/n:"
	ch=gets.chomp
	if ch=="y"
	for single_query in queries
	puts ""
	print "What is the value of #{single_query.question} :"
       begin
  	Timeout::timeout 3 do
    	ans = gets.chomp
    	if ans==single_query.answer
	score+=1
	end
  	end
	rescue Timeout::Error
  	ans = nil
	end
	
	end

puts ""
puts "\nYour score is #{score} out #{queries.length} "
end
end
end

