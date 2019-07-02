# frozen_string_literal: true

# create class Task6
class Task6
  def self.get_all(array, data_type)
    p array.flatten.map { |val| val if val.is_a?(data_type) }.compact
  end
end
