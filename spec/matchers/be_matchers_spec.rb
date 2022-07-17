# frozen_string_literal: true

# falsy values --- false, nil
# truthy values --- everything else

RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect(5).to be_truthy
    expect([3, 4]).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falseness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    hash = { a: 5 }
    expect(hash[:b]).to be_nil
    expect(hash[:b]).to be(nil)

    expect({}.empty?).to be(true)
    expect({}).to be_empty
  end
end
