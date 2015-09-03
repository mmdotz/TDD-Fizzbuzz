class Fizzbuzz    #classes are constants

  def run(max)    #needs to accept argument to pass test
    max.times.map do |n|
      n = n + 1  #the argument passed to fizz, buzz and fizzbuzz
      if n % 15 == 0
        fizzbuzz(n)
       elsif n % 5 == 0
        buzz(n)
       elsif n % 3 == 0
        fizz(n)
      else
        n   #if it doesnt satisfy above, just return the number passed
      end
      #or
      #fizz(buzz(fizzbuzz(n)))  #run fizz, which takes a number argument, argument.times +1 (because it starts at zero)
    end
  end

  def fizz(n)
    return n if n.is_a?(String)
    return 'fizz' if (n % 3).zero?
    return n
  end

  def buzz(n)
    return n if n.is_a?(String)
    return 'buzz' if (n % 5).zero?
    return n
  end

  def fizzbuzz(n)
    return n if n.is_a?(String)
    return 'fizzbuzz' if (n % 15).zero?
    return n
  end

end
