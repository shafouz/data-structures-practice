# frozen_string_literal: true

# :nodoc
class Main < StandardError; end
# :nodoc
class Main
  def self.fizzbuzz(int)
    error = [0, '', nil]
    raise ArgumentError, 'bad argument' if error.include? int

    array = []
    (1..int).each do |i|
      array[i - 1] = if (i % 3).zero? && (i % 5).zero?
                       'FizzBuzz'
                     elsif (i % 5).zero?
                       'Buzz'
                     elsif (i % 3).zero?
                       'Fizz'
                     else
                       i.to_s
                     end
    end
    array
  end
end
