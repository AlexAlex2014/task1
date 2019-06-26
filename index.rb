# 1 Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby"

def output
  30.times do |i|
    if i == 9 || i == 19 || i == 24
      puts "ruby"
    else
      puts "<3 ruby"
    end
  end
end

# 2 Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.

def circle(arg)
  y = arg
  r_in = arg - 0.4
  r_out = arg + 0.4
  while y >= -arg do
    x = -arg
    while x <= r_out do
      if (x*x + y*y >= r_in*r_in)&&(x*x + y*y != r_out*r_out)
        print '*'
      else
        print ' '
      end
      x += 0.5
    end
    print "\n"
    y -= 1
  end
end

# 3 Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.

def matrix(arr)
  mas = Array.new(arr) {Array.new(arr,0)}
  mas.each_index do |inx|
    mas[inx].each_index do |val|
      mas[inx][val] = 1 if inx == val
    end
  end
  puts mas.join('').to_s.scan(/.{1,#{arr}}/)
end

# 4 Написать рекурсивный метод для поиска значения ключа key9 в хеше:

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

class Hash
  def deep_find(key, object=self, found=nil)
    if object.respond_to?(:key?) && object.key?(key)
      return object[key]
    elsif object.is_a? Enumerable
      object.find { |*a| found = deep_find(key, a.last) }
      return found
    end
  end
end

# 5 Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case.
class String
  def camel
    split(' ').map{|e| e.capitalize}.join
  end
  def underscore
    split(' ').join('_')
  end
  def css
    split(' ').join('-')
  end
end
def formatize(str, opt)
  case opt
  when :camel then puts str.camel
  when :underscore then puts str.underscore
  when :css then puts str.css
  end
end
str = 'i love ruby'

# 6 Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов.

array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

def get_all(array, data_type)
  var_int = []
  var_str = []

  array.each_index do |inx|
    array[inx].each do |val|
      if val.kind_of?(Integer)
        var_int << val
      elsif val.kind_of?(Array)
        val.each do |k, v|
          if k.kind_of?(String)
            var_str << k
          end
          if v.kind_of?(Integer)
            var_int << v
          end
        end
      elsif val.kind_of?(String)
        var_str << val
      end
    end
  end

  case data_type
  when 'String' then p var_str
  when 'Integer' then p var_int
  else puts "Enter the arguments 'String' or 'Integer'"
  end
end

loop do
  puts "Enter the number of the task (from 1 to 6)"
  case gets.chomp
  when '1'
    output
  when '2'
    puts "Enter the size of the circle (any integer)"
    arg2 = gets.to_i
    circle(arg2)
  when '3'
    puts "Enter the size of the matrix (any integer)"
    arg3 = gets.to_i
    matrix(arg3)
  when '4'
    puts "Enter the key 'key9' to find out the result "
    arg4 = gets.chomp.to_sym
    puts hash.deep_find(arg4)
  when '5'
    puts "Enter the arguments 'camel', 'underscore' and 'css' in rotation for string conversion"
    arg5_1 = gets.chomp.to_sym
    arg5_2 = gets.chomp.to_sym
    arg5_3 = gets.chomp.to_sym

    formatize(str, arg5_1)
    formatize(str, arg5_2)
    formatize(str, arg5_3)
  when '6'
    puts "Enter the arguments 'String' or 'Integer'"
    arg6 = gets.chomp
    get_all(array, arg6)
  else puts "наберите цифру от 1 до 6"
  end
end
