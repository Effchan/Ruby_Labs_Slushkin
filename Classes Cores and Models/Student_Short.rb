require_relative 'C://Users//user//Desktop//s1.rb'

class Student_short < Student
  attr_reader :id, :name_and_initials, :contact, :git

  def initialize(args)
    @id = args[:id]
    @name_and_initials = args[:name_and_initials]
    @contact = args[:contact]
    @git = args[:git]
  end

  def self.short_constructor(id, string)
    data = string.split('; ')
    new(id: id, name_and_initials: data[0], contact: data[1], git: data[2])
  end

  private_class_method :new
end
