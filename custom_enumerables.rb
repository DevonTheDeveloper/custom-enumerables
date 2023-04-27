# frozen_string_literal: true

module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0

    length.times do
      yield(self[index], index)
      index += 1
    end
    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    index = 0

    length.times do
      yield(self[index])
      index += 1
    end
    self
  end
end
