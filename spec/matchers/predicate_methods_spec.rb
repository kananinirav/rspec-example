# frozen_string_literal: true

RSpec.describe 'predicate methods and predicate matchers.rb' do
  it 'can be tested with Ruby methods' do
    result = 10 / 5
    expect(result.even?).to eq(true)
  end

  # it's batter and short way for predicate check
  it 'can be tested with predicates matchers' do
    expect(10 / 5).to be_even
    expect(7).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 10 do
    it { is_expected.not_to be_zero }
  end
end
