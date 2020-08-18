# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative './fizzbuzz.rb'
Minitest::Reporters.use!

# nodoc
class MainTest < Minitest::Test
  def test_results
    assert_raises(ArgumentError, 'bad argument') { Main.fizzbuzz(0) }
    assert_raises(ArgumentError, 'bad argument') { Main.fizzbuzz(nil) }
    assert_raises(ArgumentError, 'bad argument') { Main.fizzbuzz('') }
    assert_equal %w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11
                    Fizz 13 14 FizzBuzz], Main.fizzbuzz(15)
  end
end
