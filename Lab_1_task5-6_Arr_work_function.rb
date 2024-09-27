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

puts "\nВведите номер метода для обработки массива: \n1)Поиск минимального элемента \n 2)Поиск максимального элемента \n 3)Поиск первого положительного числа"
method_num = gets.to_i
filepath = "C:\\Users\\user\\Desktop\\array.txt"
choosen_work_with_arr_from_file(method_num, filepath)
