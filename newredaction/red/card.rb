# frozen_string_literal: true

class Card
  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = value
  end

  def string
    "#{rank}#{suit}"
  end
end
