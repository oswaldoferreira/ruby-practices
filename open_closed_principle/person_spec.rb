require 'rspec'
require_relative 'person'

describe Person do
  it 'can be initialized with a custom stamina' do
    person = Person.new(stamina: 10)

    expect(person.stamina).to eq 10
  end

  describe '#walk' do
    let!(:person) { Person.new(stamina: 10) }

    it 'when success' do
      expect(person.walk(3)).to eq true
    end

    it 'when fails' do
      expect(person.walk(11)).to eq false
    end
  end

  describe '#run' do
    let!(:person) { Person.new(stamina: 10) }

    it 'when success' do
      expect(person.run(3)).to eq true
    end

    it 'when fails' do
      expect(person.run(11)).to eq false
    end
  end
end
