require 'pry'

class Exam
  attr_accessor :date, :reference, :discipline, :start_hour, :issues

  def initialize date, reference, discipline, start_hour
    @date = date
    @reference = reference
    @discipline = discipline
    @start_hour = start_hour
    @issues = []
    @exams = []
  end

  def self.consult_exam discipline
    exams = ObjectSpace.each_object(self)
    exams.select { |e| e.reference.start_with? discipline }
  end

  def include_issues issues
    issues.each { |issue| @issues << issue if issue.class.eql? Issue }
  end
end