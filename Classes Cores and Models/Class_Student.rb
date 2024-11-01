class Student
  attr_accessor :id, :first_name, :second_name, :third_name, :telephone, :telegram, :email, :git

  def initialize(first_name, second_name, third_name, id: nil, telephone: nil, telegram: nil, email: nil, git: nil)
    @id = id
    @first_name = first_name
    @second_name = second_name
    @third_name = third_name
    @telephone = telephone
    @telegram = telegram
    @email = email
    @git = git
  end

  def info
    "ID: #{@id}\nФИО: #{@first_name} #{@second_name} #{@third_name}\nКонтактная информация:\n\tТелефон: #{@telephone}\n\tTelegram: #{@telegram}\n\tEmail: #{@email}\n\tGit: #{@git}"
  end
end
