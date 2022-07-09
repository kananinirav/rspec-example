# frozen_string_literal: true

RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'has two element' do
    expect(subject.size).to eq(2)
    subject.pop(1)
    expect(subject.size).to eq(1)
  end

  it 'is equal to the original array' do
    expect(sally).to eq([1, 2])
  end
end
