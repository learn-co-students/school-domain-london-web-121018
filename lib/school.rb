require "pry"

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(student_grade)
    roster[student_grade]
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def sort
    sorted = {}

    roster.each do |grade, students_a|
      sorted[grade] = students_a.sort
    end
    sorted
   end

end
