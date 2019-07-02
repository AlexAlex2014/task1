# frozen_string_literal: true

# create class Task5
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

# create class Task5
class Task5
  def self.formatize(str, opt)
    case opt
    when :camel then puts str.camel
    when :underscore then puts str.underscore
    when :css then puts str.css
    end
  end
end
