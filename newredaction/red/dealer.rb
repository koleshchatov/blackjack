# frozen_string_literal: true

require_relative 'player'

class Dealer < Player
  def add_card(deck)
    2.times { @cards << deck.take_card } 
    @cards << deck.take_card if count_card < SEVENTEEN
  end
end
