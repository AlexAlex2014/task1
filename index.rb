# frozen_string_literal: true

require_relative 'task1'
require_relative 'task2'
require_relative 'task3'
require_relative 'task4'
require_relative 'task5'
require_relative 'task6'

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }
str = 'i love ruby'
array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

loop do
  puts 'Enter the number of the task (from 1 to 6)'
  case gets.chomp
  when '1'
    Task1.output
  when '2'
    puts 'Enter the size of the circle (any integer)'
    Task2.circle(gets.to_i)
  when '3'
    puts 'Enter the size of the matrix (any integer)'
    Task3.matrix(gets.to_i)
  when '4'
    puts "Enter the key 'key9' to find out the result "
    puts hash.deep_find(gets.chomp.to_sym)
  when '5'
    puts "Enter the arguments 'camel', 'underscore' and 'css' in rotation"
    Task5.formatize(str, gets.chomp.to_sym)
    Task5.formatize(str, gets.chomp.to_sym)
    Task5.formatize(str, gets.chomp.to_sym)
  when '6'
    puts "Enter the arguments 'String' or 'Integer'"
    arg6 = gets.chomp
    argum = Object.const_get(arg6)
    Task6.get_all(array, argum)
  else puts 'Enter the number from 1 to 6 '
  end
end
