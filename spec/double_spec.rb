# frozen_string_literal: true

# double will create dummy object
RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double("Mr. Nirav", fall_off_ladder: 'Test', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Test')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr. Nirav")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Test')
    # expect(stuntman.fall_off_ladder).to eq('Test')

    stuntman = double('Mr. Nirav')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Test', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Test')
    expect(stuntman.light_on_fire).to eq(true)
  end

  it 'Database Connection' do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    # allow(db).to receive_messages(connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
  end

  it 'File System' do
    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end
