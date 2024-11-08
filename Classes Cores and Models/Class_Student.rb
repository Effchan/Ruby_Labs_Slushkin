require_relative 'C://Users//user//Desktop//Person.rb'

class Student < Person
  attr_reader :telephone, :telegram, :email, :git

  def info
    "ID: #{@id}\nФИО: #{@first_name} #{@second_name} #{@third_name}\nКонтактная информация:\n\tТелефон: #{@telephone}\n\tTelegram: #{@telegram}\n\tEmail: #{@email}\nГит:\n\tGit: #{@git}"
  end

  def set_contacts(contacts = {})
    contacts.each do |key, value|
      instance_variable_set("@#{key}", value) if [:telephone, :telegram, :email, :git].include?(key.to_sym)
    end
  end

  def has_contact_info?
    !@telephone.nil? || !@telegram.nil? || !@email.nil?
  end

  def has_git?
    !@git.nil?
  end

  def contact_info
    return "Тел.: #{@telephone}" if !@telephone.nil?
    return "Telegram: #{@telegram}" if !@telegram.nil?
    return "Email: #{@email}" if !@email.nil?
    ""
  end

  def git_info
    "Git: #{@git}"
  end

  def get_info
    "#{full_name_with_initials}; #{contact_info}; #{git_info}"
  end

  def full_name_with_initials
    "#{last_name} #{first_initial}.#{middle_initial}."
  end

  def first_initial
    @first_name.chr
  end

  def middle_initial
    @second_name.chr
  end

  def last_name
    @third_name
  end
end
