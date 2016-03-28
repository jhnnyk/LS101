# Strive Matching # 2
# http://www.codewars.com/kata/56c2578be8b139bd5c001bd8/train/ruby

def match(job, candidates)

  candidates.select do |person|
    # person unless person['desires_equity'] && job['equity_max'] <= 0
    job['locations'].each do |location|
      p location
      p person['desired_locations']
      p person['desired_locations'].include?(location)
    end
  end
end

candidates = [{
  'desires_equity'=>true, 
  'current_location'=>'New York',
  'desired_locations'=>['San Francisco', 'Los Angeles']
}, {
  'desires_equity'=>false, 
  'current_location'=>'San Francisco',
  'desired_locations'=>['Kentucky', 'New Mexico'] 
}]
job1 = { 'equity_max'=>0, 'locations'=>['Los Angeles', 'New York'] }
job2 = { 'equity_max'=>1.2, 'locations'=>['New York', 'Kentucky'] }

p match(job1, candidates)
p match(job2, candidates)
p match(job1, candidates).length # => 0
p match(job2, candidates).length # => 2
