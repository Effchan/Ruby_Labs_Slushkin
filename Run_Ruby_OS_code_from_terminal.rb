user_name = ENV['USER']
puts "Пивет, #{user_name}! Какой язык программирования ты любишь больше всего?"
lovely_lang_of_user = gets.chomp

if lovely_lang_of_user == "Ruby"
  puts "Подстилка. Напиши что-нибудь на руби"
else
  puts "Ты не прав. Пиши команду на руби."
end
ruby_command = gets.chomp

# Запрашиваем команду ОС
puts 'И теперь напиши любую команду для ОС:'
os_command = gets.chomp

puts 'Результат твоей команды на руби:'
# Выполняем команду Ruby
begin
  result = eval(ruby_command)
  puts result
rescue StandardError => e
  puts "С командой руби чё-т не то: ' #{e.message}"
end

# Выполняем команду ОС
puts 'Результат твоей команды для ОС:'
system(os_command)
