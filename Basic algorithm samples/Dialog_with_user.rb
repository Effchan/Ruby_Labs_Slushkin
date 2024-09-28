user_name = ENV['USER']
puts "Пивет, #{user_name}! Какой язык программирования ты любишь больше всего?"
lovely_lang_of_user = gets.chomp

if lovely_lang_of_user == "Ruby"
  puts "Подстилка. Напиши что-нибудь на руби"
  elsif lovely_lang_of_user == "C++"
  puts "Руби приятнее. Попробуй написать команду"
else
  puts "Ты не прав. Пиши команду на руби."
end
