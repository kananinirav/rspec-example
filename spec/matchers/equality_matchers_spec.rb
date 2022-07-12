# frozen_string_literal: true

RSpec.describe 'equality matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  # eq match only value
  describe 'eq matcher' do
    it 'tests for value ignore type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  # eql match value with datatype
  describe 'eql matcher' do
    it 'tests for value, including same data type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  # if we want to check both object identity(object id) must be same then we can use equal
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    it 'cares about identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      # expect(c).to equal(d) # it will fail because two object has different identity
      expect(c).to equal(e)
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
