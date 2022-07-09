# frozen_string_literal: true

RSpec.shared_examples 'an object with three element' do
  it 'return the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'an object with three element'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'an object with three element'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'an object with three element'
end

class CustomObject
  def length
    3
  end
end

RSpec.describe CustomObject do
  subject { described_class.new }
  include_examples 'an object with three element'
end
