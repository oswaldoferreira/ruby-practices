require "spec_helper"

describe Person do
  context 'validates' do
    let(:person) { Person.new 'Luke' }

    it 'name' do
      expect(person.name).to eq 'Luke'
    end

    it '.has_friend' do
      person.has_friend 'Han'
      person.has_friend 'C3-PO'
      expect(person.friends).to include 'Han', 'C3-PO'
    end

    it '.has_hobbie' do
      person.has_hobbie 'Killing Sith'
      person.has_hobbie 'Cutting Stuff'
      expect(person.hobbies).to include 'Killing Sith', 'Cutting Stuff'
    end
  end

  context '.method_missing override' do
    let(:gandalf) { Person.new 'Gandalf' }
    let(:aragorn) { Person.new 'Aragorn' }
    let(:frodo) { Person.new 'Frodo' }

    it 'on .all_with_friend call' do
      [gandalf, aragorn].map { |p| p.has_friend frodo }
      expect(Person.all_with_friends(frodo)).to eq [gandalf, aragorn]
    end

    it 'on .all_with_hobbies call' do
      [gandalf, aragorn].map { |p| p.has_hobbie 'Killing Orcs' }
      expect(Person.all_with_hobbies('Killing Orcs')).to eq [gandalf, aragorn]
    end

    it 'on .all_with_* error raise' do
      expect { Person.all_with_foo(double) }.to raise_error
      expect { Person.all_with_bar(double) }.to raise_error
    end
  end

  it 'PEOPLE constant contains all Person object' do
    p1 = Person.new 'Skywalker'
    p2 = Person.new 'Vader'
    expect(Person.people).to include p1, p2
  end
end