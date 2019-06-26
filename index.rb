require_relative 'task1'
require_relative 'task2'
require_relative 'task3'
require_relative 'task4'
require_relative 'task5'
require_relative 'task6'

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
str = 'i love ruby'
array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

loop do
  puts "Enter the number of the task (from 1 to 6)"
  case gets.chomp
  when '1'
    Task1.output
  when '2'
    puts "Enter the size of the circle (any integer)"
    arg2 = gets.to_i
    Task2.circle(arg2)
  when '3'
    puts "Enter the size of the matrix (any integer)"
    arg3 = gets.to_i
    Task3.matrix(arg3)
  when '4'
    puts "Enter the key 'key9' to find out the result "
    arg4 = gets.chomp.to_sym
    puts hash.deep_find(arg4)
  when '5'
    puts "Enter the arguments 'camel', 'underscore' and 'css' in rotation for string conversion"
    arg5_1 = gets.chomp.to_sym
    arg5_2 = gets.chomp.to_sym
    arg5_3 = gets.chomp.to_sym

    Task5.formatize(str, arg5_1)
    Task5.formatize(str, arg5_2)
    Task5.formatize(str, arg5_3)
  when '6'
    puts "Enter the arguments 'String' or 'Integer'"
    arg6 = gets.chomp
    Task6.get_all(array, arg6)
  else puts "Enter the number from 1 to 6 "
  end
end
