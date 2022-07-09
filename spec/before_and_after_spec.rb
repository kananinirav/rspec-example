# frozen_string_literal: true

RSpec.describe 'Spec::BeforeAndAfter' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just random example' do
    expect(4 * 5).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end
