# frozen_string_literal: true

class Car
  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

RSpec.describe 'have_attributes matcher' do
  describe Car.new('Honda', 'red') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Honda')
      expect(subject).to have_attributes(name: 'Honda', color: 'red')
    end

    it { is_expected.to have_attributes(name: 'Honda') }
    it { is_expected.to have_attributes(name: 'Honda', color: 'red') }
  end
end
