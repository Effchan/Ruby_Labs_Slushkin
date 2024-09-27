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

print "\nВведите число для всяких математических анализов, вам не нужных: "
input_number = gets.to_i

coprime_count = count_coprime_numbers(input_number)
puts "Количество взаимно простых чисел с вашим: #{coprime_count}"

sum = sum_of_digits_divisible_by_3(input_number)
puts "Сумма делителей тройки среди числа цифр вашего.. числа, сорри за тавтологию: #{sum}"

divisor = find_divisor_with_most_coprime_digits(input_number)
puts "Делитель вашего числа, являющийся взаимно простым с наибольшим количеством его цифр: #{divisor}"
