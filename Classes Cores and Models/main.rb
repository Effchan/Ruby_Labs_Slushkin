require_relative 'C://Users//user//Desktop//s1.rb'

student1 = Student.new(first_name: 'Олег', second_name: 'Олегович', third_name: 'Воевода', id: 1, telephone: '+7(918)123-45-67', git: 'http://github.org/VoeCode')
student2 = Student.new(first_name: 'Александр', second_name: 'Павлович', third_name: 'Сыров', id: 2, email: 'cheeser211@gmail.com')

puts student1.info
puts "\n"
puts student2.info

puts "student #{student1.first_name()} #{student1.second_name()} #{student1.third_name()} has contact info: " + student1.has_contact_info?.to_s
puts "student has git: " + student1.has_git?.to_s


student1.set_contacts({ telegram: '@oleg_voevoda', git: 'http://github.org/VoeCode'})

puts student1.info

puts "student #{student1.first_name()} #{student1.second_name()} #{student1.third_name()} has contact info: " + student1.has_contact_info?.to_s
puts "student #{student1.first_name()} #{student1.second_name()} #{student1.third_name()} has git: " + student1.has_git?.to_s
