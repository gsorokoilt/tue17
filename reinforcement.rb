
# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd place. A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.
#
# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'} shows that this voter chose Smudge for first place, Tigger for 2nd, and Simba for 3rd. Smudge would be awarded 3 points, Tigger would be awarded 2 points, and Simba would be awarded 1 point.
#
# Tally up all the votes and determine who won.
@votes = []




ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]



          ballots.each do |ballot_hash|
          ballot_hash.each do |rank,candidate|
          if rank == 1
            3.times do
              @votes << candidate
            end
          elsif rank == 2
            2.times do
            @votes << candidate
          end
          elsif rank == 3
            @votes << candidate
          end
        end
      end

tally ={}

@votes.uniq.each{|e| tally[e]= @votes.count(e)}#look this up!

a = tally.values

max_votes = a.max

tally.each do |candidate,votes|
    if a.max == votes
      p "#{candidate} is the winner!"
    end
end
