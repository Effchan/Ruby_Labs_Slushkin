# Функция для поиска максимального элемента
def max_num_array(arr)
  return nil if arr.empty?
  
  max = arr[0]
  arr.each do |num|
    max = num if num > max
  end
  max
end

# Функция для поиска минимального элемента
def min_num_array(arr)
  return nil if arr.empty?
  
  min = arr[0]
  arr.each do |num|
    min = num if num < min
  end
  min
end

# Функция для поиска первого положительного числа в массиве
def first_positive_num_array(arr)
  arr.each do |num|
    return num if num > 0
  end
  nil 
end

# Функция с аргументами "номер метода", "путь к файлу" для обработки массива
def choosen_work_with_arr_from_file(method, filepath)
  begin
    File.open(filepath, 'r') do |file|
      # Читаем содержимое файла и разбиваем его на массив
      numbers = file.read.split.map(&:to_i)

      case method_num
      when 1
        result = min_num_array(numbers)
        puts result.nil? ? "Массив пуст." : "Минимальный элемент массива = #{result}"
      when 2
        result = max_num_array(numbers)
        puts result.nil? ? "Массив пуст." : "Максимальный элемент массива = #{result}"
      when 3
        result = first_positive_num_array(numbers)
        puts result.nil? ? "В массиве нет положительных чисел." : "Первый положительный элемент в массиве = #{result}"
      else
        puts "Были введены некорректные данные (номер метода обработки массива)"
      end
    end
  rescue Errno::ENOENT
    puts "Ошибка: файл не найден по указанному пути."
  rescue => e
    puts "Произошла ошибка: #{e.message}"
  end
end

# Проверка наличия аргументов командной строки
if ARGV.length != 2
  puts "Вводите аргументы в форматике: <номер метода> <путь к файлу>"
  exit 1
end

method = ARGV[0].to_i
filepath = ARGV[1]

# Проверка на корректность ввода номера метода
if [1, 2, 3].include?(method_num)
  choosen_work_with_arr_from_file(method_num, filepath)
else
  puts "Некорректный ввод. Пожалуйста, введите номер метода от 1 до 3."
end
