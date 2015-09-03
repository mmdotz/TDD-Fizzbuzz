require 'minitest/autorun' #use when using libraries
require 'minitest/pride'

require_relative '../lib/fizzbuzz.rb' #use on your own code


class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz_exists    #test existence
    assert(Fizzbuzz)
  end

  def test_run_exists
    fb = Fizzbuzz.new
    assert_respond_to(fb, :run)  #does the fizzbuzz has a method called run
                                 #run would try to run a method called run, :run helps it looks for the method only
                                 #:method is the syntax
  end

  def test_fizz_buzz_fizzbuzz_return_string
    fb = Fizzbuzz.new
    assert_equal('x', fb.fizz('x'))
    assert_equal('xx', fb.buzz('xx'))
    assert_equal('xxx', fb.fizzbuzz('xxx'))
  end


  def test_run_returns_upto_max
    fb = Fizzbuzz.new
    assert_equal([1], fb.run(1)) #try to return an array, depending on the argument, 0 = [], 1 returns [1] etc
    assert_equal([1, 2], fb.run(2))
    assert_equal([1, 2, 'fizz'], fb.run(3))
  end

  def test_fizz_returns_for_div_by_3_numbers
    fb = Fizzbuzz.new
    assert_equal('fizz', fb.fizz(3))
  end

  def test_fizz_returns_given_number
    fb = Fizzbuzz.new
    assert_equal(2, fb.fizz(2))
  end

  def test_buzz_returns_for_div_by_5_numbers
    fb = Fizzbuzz.new
    assert_equal('buzz', fb.buzz(5))
  end

  def test_fizzbuzz_returns_for_div_by_3_or_5_numbers
    fb = Fizzbuzz.new
    assert_equal('fizzbuzz', fb.fizzbuzz(15))
  end

  def test_if_it_works

    fb = Fizzbuzz.new
    assert_equal([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz'], fb.run(15))
  end

end

