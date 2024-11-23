class Person
  attr_accessor :id, :first_name, :second_name, :third_name

  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value) if respond_to?("#{key}=") && valid_field?(key, value)
    end
  end

  private

  def self.is_valid_first_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def self.is_valid_middle_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def self.is_valid_last_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def valid_field?(field, value)
    case field
    when :telephone
      self.class.is_valid_number?(value)
    when :first_name
      self.class.is_valid_first_name?(value)
    when :second_name
      self.class.is_valid_middle_name?(value)
    when :third_name
      self.class.is_valid_last_name?(value)
    when :telegram
      self.class.is_valid_username?(value)
    when :email
      self.class.is_valid_email?(value)
    when :git
      self.class.is_valid_url?(value)
    else
      true
    end
  end
end
