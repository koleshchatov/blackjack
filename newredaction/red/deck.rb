# frozen_string_literal: true

require_relative 'card'

class Deck
  attr_reader :deck

  def initialize
    @deck = []
    rank = %i[2 3 4 5 6 7 8 9 10 J Q K A]
    suit = %i[♥ ♦ ♣ ♠]
    rank.each do |r|
      suit.each { |s| @deck << Card.new(r, s) }
    end
    @deck.shuffle!
  end

  def take_card
    @deck.pop
  end
end
