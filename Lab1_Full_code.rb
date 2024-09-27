# Функция для подсчета взаимно простых делителей с аргументом
def count_coprime_numbers(number)
  count = 0
  (1...number).each do |i|
    common_divisors = 0
    (2..[i, number].min).each do |j|
      common_divisors += 1 if (i % j).zero? && (number % j).zero?
    end
    count += 1 if common_divisors.zero?
  end
  count
end

# Функция для подсчета суммы цифр аргумента, делимых на 3
def sum_of_digits_divisible_by_3(number)
  sum = 0
  while number.positive?
    digit = number % 10
    sum += digit if (digit % 3).zero?
    number /= 10
  end
  sum
end

#Вложенная функция следующей функции, находящая количество цифр второго аргумента, взаимно простых с первым аргументом
def count_coprime_digits(divisor, number)
  count = 0
  number.digits.each do |digit|
    common_divisors = 0
    (2..[digit, divisor].min).each do |i|
      common_divisors += 1 if (digit % i).zero? && (divisor % i).zero?
    end
    count += 1 if common_divisors.zero?
  end
  count
end

# Функция, возвращающая делитель аргумента с наибольшим количеством взаимно простых чисел среди его цифр
def find_divisor_with_most_coprime_digits(number)
  max_count = 0
  divisor = 1
  (1..number / 2).each do |i|
    if (number % i).zero?
      count = count_coprime_digits(i, number)
      if count > max_count
        max_count = count
        divisor = i
      end
    end
  end
  max_count
end

#Функция для поиска максимального элемента
def max_num_array(arr)
  arr_size = arr.length
  max = arr[0]
  for num_element in 0...arr_size do
    if (arr[num_element] > max) then
      max = arr[num_element]
    end
  end
  max
end

#Функция для поиска минимального элемента
def min_num_array(arr)
  arr_size = arr.length
  min = arr[0]
  for num_element in 0...arr_size do
    if (arr[num_element] < min) then
      max = arr[num_element]
    end
  end
  min
end

#Функция для поиска первого полоэжительного числа в массиве
def first_positive_num_array(arr)
  arr_size = arr.length
  for num_element in 0...arr_size do
    if (arr[num_element] > 0) then
      return arr[num_element]
    end
  end
end

#Функция с аргументами "номер метода", "путь к файлу" для обработки массива
def choosen_work_with_arr_from_file(method, filepath)
  File.open(filepath, 'r') do |file|
    # Читаем содержимое файла и разбиваем его на массив
    numbers = file.read.split.map(&:to_i)
    case method
    when 1
      puts "Минимальный элемент массива = #{min_num_array(numbers)}"
    when 2
      puts "Максимальный элемент массива = #{max_num_array(numbers)}"
    when 3
      puts "Первый положительный элемент в массиве = #{first_positive_num_array(numbers)}"
    else
      puts "Были введены некорректные данные (номер метода обработки массива)"
    end
  end
end

# ............................................................................................

puts 'Hello World!'
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

print "\nВведите число для всяких математических анализов, вам не нужных: "
input_number = gets.to_i

coprime_count = count_coprime_numbers(input_number)
puts "Количество взаимно простых чисел с вашим: #{coprime_count}"

sum = sum_of_digits_divisible_by_3(input_number)
puts "Сумма делителей тройки среди числа цифр вашего.. числа, сорри за тавтологию: #{sum}"

divisor = find_divisor_with_most_coprime_digits(input_number)
puts "Делитель вашего числа, являющийся взаимно простым с наибольшим количеством его цифр: #{divisor}"

puts "\nВведите номер метода для обработки массива: \n1)Поиск минимального элемента \n 2)Поиск максимального элемента \n 3)Поиск первого положительного числа"
method_num = gets.to_i
filepath = "C:\\Users\\user\\Desktop\\array.txt"
choosen_work_with_arr_from_file(method_num, filepath)
