require_relative 'C://Users//user//Desktop//s1.rb'

student1 = Student.new(first_name: 'Олег', second_name: 'Олегович', third_name: 'Воевода', id: 1, telephone: '+7(918)123-45-67')
student2 = Student.new(first_name: 'Александр', second_name: 'Павлович', third_name: 'Сыров', id: 2, email: 'cheeser211@gmail.com')

puts student1.info
puts "\n"
puts student2.info
