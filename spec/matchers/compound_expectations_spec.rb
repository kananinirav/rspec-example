# frozen_string_literal: true

RSpec.describe 25 do
  it 'can test for multiple matches' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe 'Nirav' do
  it 'support multiple matchers on a single line' do
    expect(subject).to start_with('Nir').and end_with('av')
  end

  it { is_expected.to start_with('Nir') and end_with('av') }
end

RSpec.describe %i[india japan usa] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:india).or eq(:japan).or eq(:usa)
  end
end
