require 'pry'

# code here!
class School
  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster.merge!(grade => [name])
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end

end