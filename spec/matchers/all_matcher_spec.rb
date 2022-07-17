# frozen_string_literal: true

RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [2, 4, 6].each do |val|
    #   expect(val).to be_even
    # end

    expect([2, 4, 6]).to all(be_even)
    expect([1, 3, 5]).to all(be_odd)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([2, 4, 9]).to all(be < 10)
  end

  describe [2, 4, 6] do
    it { is_expected.to all(be_even) }
    it { is_expected.to all(be > 0) }
  end
end
