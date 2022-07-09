# frozen_string_literal: true

# subject is automatically assign as a new object same as let(if describe not string)
# An instance of the class under test.
RSpec.describe Hash do
  # let(:my_hash) { {} }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'kanani'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between example' do
    expect(subject.length).to eq(0)
  end
end
