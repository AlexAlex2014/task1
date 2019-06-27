# 6 Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов.

class Task6
  def self.get_all(array, data_type)

    p array.flatten.map { |val| val if val.is_a?(data_type) }.compact

    # var_int = []
    # var_str = []
    #
    # array.each_index do |inx|
    #   array[inx].each do |val|
    #     if val.kind_of?(Integer)
    #       var_int << val
    #     elsif val.kind_of?(Array)
    #       val.each do |k, v|
    #         if k.kind_of?(String)
    #           var_str << k
    #         end
    #         if v.kind_of?(Integer)
    #           var_int << v
    #         end
    #       end
    #     elsif val.kind_of?(String)
    #       var_str << val
    #     end
    #   end
    # end
    #
    # case data_type
    # when 'String' then p var_str
    # when 'Integer' then p var_int
    # else puts "Enter the arguments 'String' or 'Integer'"
    # end
  end
end
