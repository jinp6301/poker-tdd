class Card

  attr_accessor :value

  def initialize(value)
    @value = value

  end
end

class Deck

  CARD_NUMBERS = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  CARD_SUITS = ['S','H','C','D']

  attr_accessor :all

  def initialize

    @all = []

    CARD_NUMBERS.each do |number|
      CARD_SUITS.each do |suit|
        @all << Card.new([number, suit])
      end
    end

    @all.shuffle!

  end

  def draw(number)
    drawn_cards = []
    i = 0

    until i == number
     drawn_cards << @all.shift
     i += 1
    end

    drawn_cards
  end


end


class Hand

  attr_accessor :current_hand

  def initialize(deck)
    :current_hand = deck.draw(5)
  end

end

deck = Deck.new

p deck.all