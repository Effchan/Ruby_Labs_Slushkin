class Student
  attr_accessor :id, :first_name, :second_name, :third_name, :telephone, :telegram, :email, :git

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value) if respond_to?(key) && valid_field?(key, value)
    end
  end

  private

  def valid_field?(field, value)
    case field
    when :telephone
      /\+7\(\d{3}\) \d{3}-\d{2}-\d{2}/ === value
    else
      true
    end
  end

  def info
    "ID: #{@id}\nФИО: #{@first_name} #{@second_name} #{@third_name}\nКонтактная информация:\n\tТелефон: #{@telephone}\n\tTelegram: #{@telegram}\n\tEmail: #{@email}\n\tGit: #{@git}"
  end
end
