class Array
  def my_rotate(a=1)
    array = self
    counter = 0

    if a > 1
      until counter == a
        array.push(array[0])
        array.shift
        counter += 1
      end
    elsif a < 1
      until counter == a
        array.unshift(array[-1])
        array.pop
        counter -= 1
      end
    end
    return array
  end
end
