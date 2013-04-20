class Table
  # attr_accessible :title, :body
  @hands = nil
  @deck = nil
  @number_of_players = nil
  def initialize(number_of_players,starting_hand_amount)
    @number_of_players = number_of_players
    @deck = Deck.new
    @deck.shuffle
    @hands = Array.new
    @number_of_players.times do 
      @hands.push Hand.new(starting_hand_amount,@deck)
    end
  end

  def player_play(player,card_index)
    @hands[player] = card.allhand[player].play(card_index)
  end

  def player_show_hand(player)
    @hands[player].show_hand
  end

  def player_show_discards(player)
    @hands[player].list_discards
  end

  def players
    @number_of_players
  end
end
