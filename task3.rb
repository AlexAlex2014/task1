# 3 Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.

class Task3
  def self.matrix(arr)
    mas = Array.new(arr) {Array.new(arr,0)}
    mas.each_index do |inx|
      mas[inx].each_index do |val|
        mas[inx][val] = 1 if inx == val
      end
    end
    puts mas.join('').to_s.scan(/.{1,#{arr}}/)
  end
end
