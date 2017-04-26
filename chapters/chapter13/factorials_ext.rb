class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <=1
      1
    else
      self * (self-1).factorial # Had to change this from factorial(self-1)
    end
  end
end

puts 3.factorial
puts 30.factorial
puts -5.factorial
puts 5.factorial
