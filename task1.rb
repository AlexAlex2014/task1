# 1 Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby"

class Task1
  def self.output
    30.times do |i|
      if i == 9 || i == 19 || i == 24
        puts "ruby"
      else
        puts "<3 ruby"
      end
    end
  end
end
