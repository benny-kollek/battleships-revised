require 'ship'

describe Ship do
  it 'has a default length of 2' do
    expect(subject.length).to eq 2
  end

  it 'can be initialized with a custom length' do
    ship = Ship.new 4
    expect(ship.length).to eq 4
  end

  it 'is sunk after being hit appropriate number of times' do
    subject.hit
    expect(subject.hit).to eq 'SUNK!'
    expect(subject).to be_sunk
  end
end
