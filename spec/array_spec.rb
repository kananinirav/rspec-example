# frozen_string_literal: true

RSpec.describe Array do
  let(:my_arr) { [] }

  it 'should start off empty arrays' do
    expect(subject.length).to eq(0)
    subject << 'first_element'
    expect(subject.length).to eq(1)
  end
end
