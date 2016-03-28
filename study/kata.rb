# Strive Matching # 2
# http://www.codewars.com/kata/56c2578be8b139bd5c001bd8/train/ruby

# def match(job, candidates)

#   candidates.select do |person|
#     # person unless person['desires_equity'] && job['equity_max'] <= 0
#     job['locations'].each do |location|
#       p location
#       p person['desired_locations']
#       p person['desired_locations'].include?(location)
#     end
#   end
# end

# candidates = [{
#   'desires_equity'=>true, 
#   'current_location'=>'New York',
#   'desired_locations'=>['San Francisco', 'Los Angeles']
# }, {
#   'desires_equity'=>false, 
#   'current_location'=>'San Francisco',
#   'desired_locations'=>['Kentucky', 'New Mexico'] 
# }]
# job1 = { 'equity_max'=>0, 'locations'=>['Los Angeles', 'New York'] }
# job2 = { 'equity_max'=>1.2, 'locations'=>['New York', 'Kentucky'] }

# p match(job1, candidates)
# p match(job2, candidates)
# p match(job1, candidates).length # => 0
# p match(job2, candidates).length # => 2


# ------------------
# Remove the time
# http://www.codewars.com/kata/56b0ff16d4aa33e5bb00008e/train
def shorten_to_date(long_date)
  # long_date[0..(long_date.index(",") - 1)]
  long_date.split(",").first
end

p shorten_to_date("Monday February 2, 8pm") # => "Monday February 2"
p shorten_to_date("Tuesday May 29, 8pm") # => "Tuesday May 29"
p shorten_to_date("Wed September 1, 3am") # => "Wed September 1"
p shorten_to_date("Friday May 2, 9am") # => "Friday May 2"
p shorten_to_date("Tuesday January 29, 10pm") # => "Tuesday January 29"
