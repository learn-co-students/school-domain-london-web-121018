# code here!
require 'pry'
class School

attr_reader :roster


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
        @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
  end
end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort = {}
    @roster.each do |grade , student|
      sort[grade] = student.sort
  end
  sort
end

end
