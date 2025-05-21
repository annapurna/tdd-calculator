class Calculator

  def add(numbers)
    return 0 if numbers.empty?
    sum = numbers.split(/\,|\\n|\;/).map(&:to_i).sum
    return sum
  end 

end
