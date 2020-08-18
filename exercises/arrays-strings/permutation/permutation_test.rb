# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative './permutation.rb'
Minitest::Reporters.use!

# nodoc
class MainTest < Minitest::Test
  def test_results
    assert_equal false, Main.permutation('foo', nil)
    assert_equal false, Main.permutation('foo', '')
    assert_equal false, Main.permutation('bin', 'Nib')
    assert_equal true, Main.permutation('cat', 'act')
    assert_equal true, Main.permutation('ca t', 'a ct')
  end
end
