class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    uc = ('A' .. 'Z')
    out = str.split.each do |item|
      if item.length > 4
        p = item.match(/[[:punct:]]/)
        if uc.include? item[0]
          item.replace ('Marklar' + p.to_s)
        else
          item.replace ('marklar' + p.to_s)
        end
      end
    end
    return out.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    number = 0
    sequence = []
    (0..nth).each do |item|
      number = item if item <= 1
      number = sequence[-1] + sequence[-2] if item > 1
      sequence << number
      sum += number if number % 2 == 0
    end
    sum
  end

end
