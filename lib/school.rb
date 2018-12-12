# code here!

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(s_name,grade)
    if self.roster[grade]
       self.roster[grade] << s_name
    else
      self.roster[grade] = []
      self.roster[grade] << s_name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each {|grade,students| students.sort!}
  end
end

# school.add_student("Zach Morris", 9)
# school.roster
# => {9 => ["Zach Morris"]}
