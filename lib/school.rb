# code here!
class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster[@grade]
      @roster[@grade] << @name
    else
      @roster[@grade] = [@name] 
    end
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each {|year,name| name.sort!}
  end

end
