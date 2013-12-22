require 'spec_helper'

describe Student do
  before(:each) do
    @registration_date = Date.new 2013, 03, 25
    @student = Student.new(registration='123456789', name='Oswaldo',
      registration_date=@registration_date)
  end

  it 'registration default status is false' do
    expect(@student.registered).to eq(false)
  end

  it 'register method trully registers student' do
    @student.register
    expect(@student.registered).to eq(true)
  end

  it 'validates presence of registration' do
    expect(@student.registration).to eq('123456789')
  end

  it 'validates presence of name' do
    expect(@student.name).to eq('Oswaldo')
  end

  it 'validates presence of registration date' do
    expect(@student.registration_date).to eq(@registration_date)
  end
end