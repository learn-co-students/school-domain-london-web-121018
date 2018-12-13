require 'pry'

class School

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = Hash[ @roster.sort_by { |key, val| key } ]
    @roster.collect do |key, val|
      @roster[key] = val.sort
    end
    @roster
  end

end

# binding.pry
# p "end"
