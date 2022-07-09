# frozen_string_literal: true

RSpec.describe Hash do
  # you can give alias name to subject like below
  # default subject is Hash object.
  subject(:initial_hash) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(initial_hash.length).to eq(2) # alias name
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(initial_hash.length).to eq(2)
    end
  end
end
