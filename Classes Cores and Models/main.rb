require_relative 'C://Users//user//Desktop//s1.rb'
require_relative 'C://Users//user//Desktop//StudentShort.rb'
require_relative 'C://Users//user//Desktop//Person.rb'

# Создаем объект класса Person
person = Person.new(id: 1, first_name: 'Олег', second_name: 'Олегович', third_name: 'Воевода')
puts "Информация о персоне:"
puts "ID: #{person.id}, ФИО: #{person.first_name} #{person.second_name} #{person.third_name}"

# Создаем объект класса Student
student = Student.new(id: 2, first_name: 'Сергей', second_name: 'Петрович', third_name: 'Наскальный', telephone: '+7(900)111-22-33', email: 'petr0kozak@gmail.com', git: 'https://github.com/prost_petrovich')
puts "\nИнформация о студенте:"
puts student.info
student.set_contacts(telegram: '@PetrP', git: 'https://github.com/ppetrov')
puts student.info
puts "Студент имеет контактную информацию: #{student.has_contact_info?}"
puts "Студент имеет Git: #{student.has_git?}"
puts "Контактная информация студента: #{student.contact_info}"
puts "Git студента: #{student.git_info}"
puts "Краткая информация о студенте: \n#{student.get_info}"

# Создаем объект класса Student_short
student_short = Student_short.short_constructor(3, "Сидоров С.С.; Тел.: +7(999)888-77-66; Git: https://github.com/SidorovSS")
puts "\nИнформация о студенте из Student_short:"
puts "ID: #{student_short.id}, Имя и инициалы: #{student_short.name_and_initials}, Контакт: #{student_short.contact}, Git: #{student_short.git}"

