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

  def my_select
    filtered_array = []
    my_each do |element|
      filtered_array << element if yield(element) == true
    end
    filtered_array
  end

  def my_all?
    my_each do |element|
      return false unless yield(element) == true
    end
    true
  end

  def my_any?
    my_each do |element|
      return true if yield(element)
    end
    false
  end

  def my_none?
    my_each do |element|
      puts yield(element)
      return false if yield(element) == true
    end
    true
  end

  def my_count
    case block_given?
    in true
      count = 0
      my_each do |element|
        count += 1 if yield(element)
      end
      count
    else length
    end
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
