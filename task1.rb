# frozen_string_literal: true

# create class Task1
class Task1
  def self.output
    30.times do |i|
      if i == 9 || i == 19 || i == 24
        puts 'ruby'
      else
        puts '<3 ruby'
      end
    end
  end
end
