class Student
  attr_accessor :id, :first_name, :second_name, :third_name, :telephone, :telegram, :email, :git

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value) if respond_to?(key) && valid_field?(key, value)
    end
  end

  def info
    "ID: #{@id}\nФИО: #{@first_name} #{@second_name} #{@third_name}\nКонтактная информация:\n\tТелефон: #{@telephone}\n\tTelegram: #{@telegram}\n\tEmail: #{@email}\n\tGit: #{@git}"
  end

  private

  def is_valid_number?(value)
    /\+7\(\d{3}\)\d{3}-\d{2}-\d{2}/ === value
  end

  def is_valid_username?(value)
    /^[a-zA-Z0-9_]+$/ === value
  end

  def is_valid_email?(value)
    /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]{2,})\z/ === value
  end

  def is_valid_url?(value)
    /^(https?:\/\/)?((github|bitbucket)\.org)(:[^\/\s]+)?(\/[^\s]+)$/ === value
  end

  def is_valid_first_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def is_valid_middle_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def is_valid_last_name?(value)
    /\A[A-ZА-я][a-zа-я]*\z/ === value
  end

  def valid_field?(field, value)
    case field
    when :telephone
      is_valid_number?(value)
    when :first_name
      is_valid_first_name?(value)
    when :second_name
      is_valid_middle_name?(value)
    when :third_name
      is_valid_last_name?(value)
    when :telegram
      is_valid_username?(value)
    when :email
      is_valid_email?(value)
    when :git
      is_valid_url?(value)
    else
      true
    end
  end
end
