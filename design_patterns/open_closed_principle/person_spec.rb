require 'rspec'
require_relative 'person'

describe Person do
  it 'can be initialized with a custom stamina' do
    person = Person.new(stamina: 10)

    expect(person.stamina).to eq 10
  end

  describe '#walk action' do
    let(:walk_action) { double('walk') }
    let!(:person) { Person.new(stamina: 10,
      actions: { walk: walk_action }) }

    it 'has walk action' do
      expect(person.actions[:walk]).to eq walk_action
    end

    it 'do walk action' do
      expect(walk_action).to receive :induce

      person.do :walk, 5
    end
  end
end
