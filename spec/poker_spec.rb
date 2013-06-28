require 'rspec'
require 'poker'

describe Card do
  let(:card) {Card.new([2,'S'])}

  describe '#value' do
    it 'shows value of card' do
      expect(card.value).to eq([2,'S'])
    end 
  end

end

describe Deck do
  let(:deck) {Deck.new}

  describe '#all' do
    it 'deck size equals 52' do
      expect(deck.all.length).to eq(52)
    end 
  end


  describe '#draw' do
    context 'drawing three cards' do
      it 'draws number of cards' do
        drawn_cards = deck.draw(3)
        expect(drawn_cards.length).to eq(3)
      end

      it 'draws cards on top of deck' do
        top_cards = deck.all[0...3]
        drawn_cards = deck.draw(3)
        expect(top_cards).to eq(drawn_cards)
      end

      it 'removes cards from deck' do
        top_cards = deck.all[0...3]
        drawn_cards = deck.draw(3)
        expect(deck.all.any? { |x| drawn_cards.include?(x) }).to be_false
      end
    end
  end
end

describe Hand do
  let(:deck) { double("deck")}
  let(:hand) {Hand.new(deck.draw(5))}

  describe '#initialize' do
    deck.draw()
    it 'creates 5 cards in hand'

  describe '#value' do
    it 'shows value of card' do
      expect(card.value).to eq([2,'S'])
    end 
  end

end
