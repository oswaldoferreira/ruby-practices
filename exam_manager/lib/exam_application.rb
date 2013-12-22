class ExamApplication
  attr_accessor :end_hour, :student, :exam

  def initialize end_hour, student, exam
    @end_hour, @student, @exam = end_hour, student, exam
  end

  def assign_grade grade
    @student.grade = grade
  end
end