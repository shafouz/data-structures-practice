require_relative '../linked_list/linked_list.rb'

  def is_palindrome?(array)
    array = array.join("") if array.respond_to? :join
    return false if array.blank?
    return false if array.length == 1
    array_half = (array.length / 2)
    first_half = 0
    second_half = 0
    if (array.length % 2).zero?
      first_half = array[0, array_half]
      second_half = array[array_half, array.length]
      second_half.reverse!
      (first_half == second_half) ? (return true) : (return false)
    else
      first_half = array[0, array_half]
      second_half = array[array_half+1, array.length]
      second_half.reverse!
      (first_half == second_half) ? (return true) : (return false)
    end
  end
  