# frozen_string_literal: true

# create class Task2
class Task2
  def self.qwerty?(x11, y11, r_in1)
    x11 * x11 + y11 * y11 >= r_in1 * r_in1
  end

  def self.asdfg?(x22, y22, r_out2)
    x22 * x22 + y22 * y22 != r_out2 * r_out2
  end

  def self.circle(arg)
    y = arg
    r_in = arg - 0.4
    r_out = arg + 0.4
    while y >= -arg
      x = -arg
      while x <= r_out
        if qwerty?(x, y, r_in) && asdfg?(x, y, r_out)
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
end
