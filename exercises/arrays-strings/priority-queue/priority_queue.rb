# frozen_string_literal: true

# main
class Main
  def self.permutation(str1, str2)
    return false if str1.nil? || str2.nil?
    return true if str1.chars.sort == str2.chars.sort

    false
  end
end
