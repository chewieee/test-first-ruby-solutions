#_14_array_extensions

class Array

  def sum
    result = 0
    if self.empty?
      0
    else
      self.each {|num| result += num}
    end
    result
  end

  def square
    map { |num| num * num }
  end

  def square!
    map! { |num| num * num }
  end

end
