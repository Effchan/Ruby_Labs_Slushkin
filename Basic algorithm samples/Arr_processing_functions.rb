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
  nil # Возвращаем nil, если положительных чисел нет
end

# Функция с аргументами "номер метода", "путь к файлу" для обработки массива
def choosen_work_with_arr_from_file(method, filepath)
  begin
    File.open(filepath, 'r') do |file|
      # Читаем содержимое файла и разбиваем его на массив
      numbers = file.read.split.map(&:to_i)

      case method
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

puts "\nВведите номер метода для обработки массива: \n1) Поиск минимального элемента \n2) Поиск максимального элемента \n3) Поиск первого положительного числа"
method_num = gets.to_i

# Проверка на корректность ввода номера метода
if [1, 2, 3].include?(method_num)
  filepath = "C:\\Users\\user\\Desktop\\array.txt"
  choosen_work_with_arr_from_file(method_num, filepath)
else
  puts "Некорректный ввод. Пожалуйста, введите номер метода от 1 до 3."
end
