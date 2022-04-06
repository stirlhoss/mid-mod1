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

  it 'gives student a score that is an empty array' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.scores).to eq []
  end
end

describe 'log_scores' do
  it 'takes an argument and puts them into the scores array' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_scores(89)
    student.log_scores(78)

    expect(student.scores).to eq [89, 78]
  end
end

describe 'grade' do
  it 'averages the scores in @scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_scores(89)
    student.log_scores(78)

    expect(student.grade).to eq 83.5
  end
end
