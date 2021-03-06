require 'plane'

describe Plane do
  it 'responds to #at_airport?' do
    expect(subject).to respond_to(:at_airport?)
  end

  describe '#at_airport?' do
    it 'returns false after take off' do
      airport = Airport.new(1)
      airport.take_off(subject)
      expect(subject.at_airport?).to eq(false)
    end
  end
end
