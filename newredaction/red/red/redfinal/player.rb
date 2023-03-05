# frozen_string_literal: true

class Player
  SEVENTEEN = 17
  MAX_POINTS = 21
  attr_reader :name
  attr_accessor :cash

  def initialize(name)
    @cards = []
    @name = name
    @cash = 100
  end

  def add_card(deck)
    @cards << deck.take_card
  end
  
  def count_card
    value_sum = @cards.sum { |card|  Card.all_value[card.rank] }
    value_sum = @cards.sum { |card|  Card.all_value_maxcount[card.rank] } if value_sum > MAX_POINTS
    value_sum
  end

  def show_card
    @cards.each { |card| print "#{card.string} " }
  end

  def no_card
    @cards.clear
  end
end
