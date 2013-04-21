class Deck 
  # attr_accessible :title, :body
  @deck = nil
  
  def initialize
    @deck = Card.all
  end
  def shuffle 
    @deck = @deck.shuffle
  end

  def deal(amount)
    @deck.pop(amount)   
  end

  def new 
    @deck = Card.all
  end

  def examine
    @deck.map {|card| card.description}
  end

  def amount
    @deck.count
  end

end
