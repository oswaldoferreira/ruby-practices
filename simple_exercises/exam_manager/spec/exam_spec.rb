require 'spec_helper'
require 'date'

describe Exam do
  before(:each) do
    @date = Date.new 2013, 03, 25
    @start_hour = DateTime.now

    @exam = Exam.new(date=@date, reference='ref1', discipline=1,
      start_hour=@start_hour)
    @exam2 = Exam.new(date=@date, reference='ref2', discipline=2,
      start_hour=@start_hour)
  end

  it 'validates date' do
    expect(@exam.date).to eq(@date)
  end

  it 'validates reference' do
    expect(@exam.reference).to eq('ref1')
  end

  it 'validates discipline' do
    expect(@exam.discipline).to eq(1)
  end

  it 'validates starting hour' do
    expect(@exam.start_hour).to eq(@start_hour)
  end

  it 'new exam has 0 questions' do
    expect(@exam.issues).to be_empty
  end

  it 'add questions to exam' do
    @issue2 = Issue.new(question='Whats the perimeter of planet earth in km?',
      right_answer='Z')
    @exam.include_issues [@issue, @issue2]
    expect(@exam.issues).to_not be_empty
  end

  it 'consult exam by reference' do
    expect(Exam.consult_exam('ref2').first.reference).to eq(@exam2.reference)
  end
end