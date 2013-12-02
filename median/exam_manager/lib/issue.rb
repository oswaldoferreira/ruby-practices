class Issue
  attr_accessor :question, :right_answer

  def initialize question, right_answer
    @question = question
    @right_answer = right_answer
  end

  def alter_right_answer answer
    self.right_answer = answer
  end
end