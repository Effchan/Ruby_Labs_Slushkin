require_relative 'C://Users//user//Desktop//s1.rb'

class Student_short < Student
  attr_reader :id, :name_and_initials, :contact, :git

  def name_and_initials=(value)
    @name_and_initials = value if value === /\A[A-ZА-я][a-zа-я]*\z/
  end

  def initialize(args)
    @id = args[:id]
    @name_and_initials = args[:name_and_initials]
    @contact = args[:contact] if valid_field?(email, args[contact]) || valid_field?(telegram, args[contact]) || valid_field?(telephone, args[contact])
    @git = args[:git] if valid_field?(git, args[:git])
  end

  def self.short_constructor(id, string)
    data = string.split('; ')
    new(id: id, name_and_initials: data[0], contact: data[1], git: data[2])
  end

  def short_validate
    !@contact.nil? || has_git?
  end

  private_class_method :new
end
