# frozen_string_literal: true

RSpec.describe 'not to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(3)
    expect('Hello').not_to eq('hello')
    expect([1, 2]).not_to eq([1, 2, 3])
    expect(10).not_to be_odd
    expect([1, 2, 3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect('Philadelphia').not_to start_with('car')
    expect('Philadelphia').not_to end_with('city')

    expect(5).not_to respond_to(:length)

    expect(%i[a b c]).not_to include(:d)

    expect { 11 / 3 }.not_to raise_error
  end
end
