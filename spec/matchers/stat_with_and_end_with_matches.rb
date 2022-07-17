# frozen_string_literal: true

RSpec.describe 'start_with and end_with matches' do
  describe 'nirav_kanani' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('nirav')
      expect(subject).to end_with('kanani')
    end

    it { is_expected.to start_with('nirav') }
    it { is_expected.to end_with('kanani') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for element at beginning or end of the array' do
      expect(subject).to start_with([:a])
      expect(subject).to start_with(%i[a b])
      expect(subject).to end_with([:d])
      expect(subject).to end_with(%i[c d])
    end

    it { is_expected.to start_with([:a]) }
    it { is_expected.to start_with(%i[a b]) }
    it { is_expected.to end_with([:d]) }
  end
end
