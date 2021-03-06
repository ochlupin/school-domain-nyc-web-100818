class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
    @roster[grade] ||= []
    @roster[grade].push(student_name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade,students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
