require 'rspec'
require 'pry'
require './lib/student'
require './lib/course'

describe 'Course' do
  it 'creates a course new course that takes 2 arguments' do
    course = Course.new("Calculus", 2)

    expect(course).to be_an_instance_of Course
  end
end
