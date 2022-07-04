# frozen_string_literal: true

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

describe Card do
  let(:card) { Card.new('Nirav', 'Kanani') } # only initialize when required (lazy-loaded)
  # let!(:card) { Card.new('Nirav', 'Kanani') } # Before each test case initialize same as before block
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 }

  # call before each test case
  # before do
  #   @card = Card.new('Nirav', 'Kanani')
  # end
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Nirav')
    card.rank = 'Raj'
    expect(card.rank).to eq('Raj')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Kanani')
  end

  # If we want to display custom error message
  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Kanani'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end
