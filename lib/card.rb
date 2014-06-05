require 'pry'

class Card
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

#  attr_reader :suit, :card     ## or something 

  def suit
    @suit
  end
  
  def rank
    @rank
  end
  
  def lousy_greater_than?(_card) ## this method sucks!
    if self.rank == :A
      false
    else
      true
    end
  end
  
  def greater_than?(card)
#    binding.pry
    self.value > card.value
  end
  
  def value
    if rank.class != Fixnum
      ## turn it into a number
      if rank == :A
        ## do magic eventually, but for now
        points = 1
      elsif rank == :K
        points = 13
      elsif rank == :Q
        points = 12
      else points = 11
      end
    else
      points = rank
    end
    points
  end
end
