class Array
  def my_rotate(arg=1)
    direction = arg.abs == arg ? "left" : "right"
    result = self
    arg.abs.times { result = Rotate.shift_one(result, direction) }
    result
  end
end

class Rotate
  def self.shift_one(array, direction)
    adjustment = direction == "left" ? 1 : -1
    array.map.with_index do |element, i|
      index = i + adjustment
      new_element = array[index]
      if new_element.nil?
        if direction == "left"
          new_element = array[0]
        else
          new_element = array[-1]
        end
      end
      element = new_element
    end
  end
end

