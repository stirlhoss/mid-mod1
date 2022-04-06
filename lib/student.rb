require 'pry'

class Student

  def initialize(student_info)
    @student_info = student_info
  end

  def name
    @student_info[:name]
  end

  def age
    @student_info[:age]
  end
end
