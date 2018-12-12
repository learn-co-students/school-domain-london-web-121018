# code here!
require 'pry'
class School
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(retrieve)
        @roster[retrieve]
    end

    def sort
        self.roster.each_value {|value| value.sort!}
        
        
    end

end