require 'spec_helper'

describe Issue do
  before(:each) do
    @issue = Issue.new(question='Tell me who was Nikola Tesla?', right_answer='A')
  end

  it 'validates question' do
    expect(@issue.question).to eq('Tell me who was Nikola Tesla?')
  end

  it 'validates right aswer' do
    expect(@issue.right_answer).to eq('A')
  end

  it 'alter right aswer' do
    @issue.alter_right_answer 'C'
    expect(@issue.right_answer).to eq('C')
  end
end