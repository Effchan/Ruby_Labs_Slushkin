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
student.set_contacts(telegram: '@PetrP', git: 'https://github.com/ppetrov', email: 'petr0kozak@gmail.com')
puts student.info
puts "Прошел валидацию" if student.validate
puts "Студент имеет контактную информацию: #{student.has_contact_info?}"
puts "Студент имеет Git: #{student.has_git?}"
puts "Контактная информация студента: #{student.contact_info}"
puts "Git студента: #{student.git_info}"
puts "Краткая информация о студенте: \n#{student.get_info}"

# Создаем объект класса Student_short
student_short = Student_short.short_constructor(3, "Агарагаров С.С.; Тел.: +7(999)888-77-66; Git: https://github.com/SidorovSS")
puts "\nИнформация о студенте из Student_short:"
puts "Имеет контакт или гит" if student_short.validate
puts "ID: #{student_short.id}, Имя и инициалы: #{student_short.name_and_initials}, Контакт: #{student_short.contact}, #{student_short.git}"
puts "Прошел валидацию" if student_short.short_validate
