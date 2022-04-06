require 'rspec'
require 'pry'
require './lib/student'
require './lib/course'

describe 'Course' do
  it 'creates a course new course that takes 2 arguments' do
    course = Course.new("Calculus", 2)

    expect(course).to be_an_instance_of Course
  end

  it 'has methods that return the name of the course and the capacity' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq "Calculus"
    expect(course.capacity).to eq 2
  end

  it ' has a method that returns a list of students in the class' do
    course = Course.new("Calculus", 2)

    expect(course.students).to eq []
  end

end

describe 'Full?' do
  it 'has a method that returns a boolean if the course is full' do
    course = Course.new("Calculus", 2)

    expect(course.full?).to eq false
  end
end

describe 'enroll' do
  it 'takes in a student as a argument and adds them to the course' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)

    expect(course.students).to eq [student1, student2]
  end
end
