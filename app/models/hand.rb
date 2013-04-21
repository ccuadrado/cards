class Hand
  @cards_in_hand = Array.new
  @@deck = nil
  @discards = nil

  def initialize(base_hand_amount,deck)
    @@deck = deck
    @cards_in_hand = @@deck.deal(base_hand_amount)
    @discards = Array.new
  end

  def show_hand 
    @cards_in_hand.map { |card| card.description } 
  end

  def play(index)
    @discards.push @cards_in_hand.delete_at(index)
  end
  
  def list_discards
    @discards.map { |card| card.description }
  end

  def draw
    @cards_in_hand.push @@deck.deal(1)
  end
  
end


