# frozen_string_literal: true

# create class Task4
class Hash
  def deep_find(key, object = self, found = nil)
    if object.respond_to?(:key?) && object.key?(key)
      object[key]
    elsif object.is_a? Enumerable
      object.find { |*a| found = deep_find(key, a.last) }
      found
    end
  end
end
