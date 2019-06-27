# 5 Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case.

class String
  def camel
    split(' ').map(&:capitalize).join
  end
  def underscore
    split(' ').join('_')
  end
  def css
    split(' ').join('-')
  end
end

class Task5
  def self.formatize(str, opt)
    case opt
    when :camel then puts str.camel
    when :underscore then puts str.underscore
    when :css then puts str.css
    end
  end
end
