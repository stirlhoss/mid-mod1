require 'rspec'
require 'pry'
require './lib/student'

describe 'Student' do
  it 'creates a new instance of the Student class' do
    student = Student.new({name: "Morgan", age: 21})

    expect student.to be_an_instance_of Student
  end
end
