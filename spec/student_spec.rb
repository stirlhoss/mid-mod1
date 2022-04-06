require 'rspec'
require 'pry'
require './lib/student'

describe 'Student' do
  it 'creates a new instance of the Student class' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_an_instance_of Student
  end

  it 'takes in student info and has methods to report name and age' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq "Morgan"
    expect(student.age).to eq 21
  end
end
