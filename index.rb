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

# output

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

# circle(5)

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

# matrix(7)

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

# puts hash.deep_find(:key9)

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

#formatize(str, :camel)
#formatize(str, :underscore)
#formatize(str, :css)


# 6 Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов.


def get_all
  array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

  array.each_index do |inx|
    array[inx].each do |val|
      if val.kind_of?(Integer)
        varrib = []
        varrib << val
        p varrib
      elsif val.kind_of?(String)
        p val.split
      end
    end
  end
end

loop do
  case gets.chomp
  when '1'
    output
  when '2'
    circle(5)
  when '3'
    matrix(7)
  when '4'
    puts hash.deep_find(:key9)
  when '5'
    formatize(str, :camel)
    formatize(str, :underscore)
    formatize(str, :css)
  when '6'
    get_all
  else puts "наберите цифру от 1 до 6"
  end
end
