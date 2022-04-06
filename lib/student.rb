require 'pry'

class Student
  attr_reader :scores

  def initialize(student_info)
    @student_info = student_info
    @scores = []
  end

  def name
    @student_info[:name]
  end

  def age
    @student_info[:age]
  end

  def log_scores(score)
    @scores << score
  end

  def grade
    avg = (@scores.sum.to_f / @scores.length.to_f)
  end
end
