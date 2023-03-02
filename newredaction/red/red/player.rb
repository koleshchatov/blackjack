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
    value_sum = 0
    carts_sum = -> { @cards.each { |card| value_sum += Card.all_value[card.rank] } }
    carts_sum.call
    if value_sum > MAX_POINTS
      value_sum = 0
      carts_sum = -> { @cards.each { |card| value_sum += Card.all_value_MAX[card.rank] } }
      carts_sum.call
    end
    value_sum
  end

  def show_card
    @cards.each { |card| print "#{card.string} " }
  end

  def no_card
    @cards.clear
  end
end
