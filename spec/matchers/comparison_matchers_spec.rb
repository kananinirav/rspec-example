# frozen_string_literal: true

RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in ruby operators ' do
    expect(10).to be > 5
    expect(10).to be < 15

    expect(1).to be >= -1
    expect(1).to be >= 1

    expect(30).to be <= 100
    expect(30).to be <= 30
  end

  # set subject as a 100 same as Object.new
  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 500 }
    it { is_expected.to be <= 100 }
    it { is_expected.to be < 105 }
  end
end
