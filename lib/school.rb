# code here!
require 'pry'
class School
  def initialize (name, roster = {})
    @name = name
    @roster = roster
  end

attr_reader :roster


 def add_student(name, grade)
   if self.roster[grade]
     self.roster[grade] << name
   else
   self.roster[grade] = [] << name
end
end

def grade (grade)
  self.roster[grade]
end

def sort
  self.roster.each {|grade, names|
    names.sort!
    }
end
end
#binding.pry
'eoi'
