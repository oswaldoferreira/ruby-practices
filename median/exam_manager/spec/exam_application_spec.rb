require 'spec_helper'

describe ExamApplication do
  before(:each) do
    @registration_date = Date.new 2013, 03, 25
    @date = Date.new 2013, 03, 14

    @start_hour = DateTime.now.hour - 2
    @end_hour = DateTime.now

    @student = Student.new(registration='123456789', name='Oswaldo',
      registration_date=@registration_date)

    @exam = Exam.new(date=@date, reference='ref1', discipline=1,
      start_hour=@start_hour)

    @issue1 = Issue.new(question='Who was Nikola Tesla?', 
      right_answer='A')
    @issue2 = Issue.new(question='Who was the Rails Framework creator?', 
      right_answer='C')
    @issue3 = Issue.new(question='Whats the perimeter of planet earth in km?', 
      right_answer='A')
    @exam.include_issues [@issue1, @issue2, @issue3]

    @exam_application = ExamApplication.new(end_hour = @end_hour,
      student = @student,
      exam = @exam)
  end

  it 'validate grade assign' do
    @exam_application.assign_grade 9
    expect(@exam_application.student.grade).to eq 9
  end
end