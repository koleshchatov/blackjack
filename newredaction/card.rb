# frozen_string_literal: true

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def string
    "#{rank}#{suit}"
  end
end
