require 'spec_helper'

describe Garage do
  before(:each) do
    @garage = Garage.new
  end

  it 'is a kind of stacker' do
    expect(@garage).to be_a Stacker
  end

  it 'stacker garage stacks cars' do
    car1, car2, car3 = Car.new, Car.new, Car.new
    @garage.add [car1, car2, car3]
    expect(@garage.stack).to include(car1, car2, car3)
  end

  it 'last in first out' do
    car1, car2, car3 = Car.new, Car.new, Car.new
    @garage.add [car1, car2, car3]
    expect(@garage.remove).to eq car3
    expect(@garage.remove).to eq car2
    expect(@garage.remove).to eq car1
  end

  it 'remove from empty garage returns no car' do
    car1 = Car.new
    @garage.add [car1]
    @garage.remove
    expect(@garage.remove).to eq nil
    expect(@garage.stack).to be_empty
  end
end