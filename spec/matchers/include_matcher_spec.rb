# frozen_string_literal: true

RSpec.describe 'include matcher' do
  describe 'hello nirav kanani' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hell')
      expect(subject).to include('nir')
      expect(subject).to include('kan')
    end

    it { is_expected.to include('hello') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless or order' do
      expect(subject).to include(10)
      expect(subject).to include(30)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20) }
  end

  describe ({ a: 2, b: 4 }) do
    it 'checks for inclusion in the array, regardless or order' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 2)
    end

    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 4) }
  end
end
