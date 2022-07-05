# frozen_string_literal: true

RSpec.describe 'Spec::NestedHook' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'is just random example' do
    expect(4 * 5).to eq(20)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'is just random example' do
      expect(4 * 5).to eq(20)
    end

    it 'is just another random example' do
      expect(4 * 5).to eq(20)
    end
  end
end
