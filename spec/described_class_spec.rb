# frozen_string_literal: true

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# described_class is a default set as describe class ( RSpec.describe Person )
# if we have complex test case and if we change name of class then we need to change all occurrences
# so we use described_class class then no need to change in all file only change in RSpec.describe NewClassName
# dynamically references the class being tested (the one passed as an argument to the top-level describe method).
# The advantage is that, if the class name changes, the rest of the spec does not have to change.
RSpec.describe Person do
  subject { described_class.new('Nirav') }
  let(:kanani) { described_class.new('Kanani') }

  it 'represent great person' do
    expect(subject.name).to eq('Nirav')
    expect(kanani.name).to eq('Kanani')
  end
end
