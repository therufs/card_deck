class Card
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def suit
    @suit
  end
  
  def rank
    @rank
  end
  
  def lousy_greater_than?(card) ## this method sucks!
    if self.rank == :A
      false
    else
      true
    end
  end
  
  def greater_than?(card)
    self.value > card.value
  end
  
  def value
    if rank.class == Fixnum
      ## it's a number
    else
      ## turn it into a number
    end
    
    ## then compare them 
    
  end
end
