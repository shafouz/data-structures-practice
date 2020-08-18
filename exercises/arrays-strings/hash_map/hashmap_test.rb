# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative './hashmap.rb'
Minitest::Reporters.use!

# nodoc
class MainTest < Minitest::Test
  def setup
    @hash = {}
  end

  def teardown
    @hash.clear
  end

  def test_get_on_empty_hash
    assert_nil Main.get(@hash, 0)
  end

  def test_set_on_empty_hash
    Main.set(@hash, 0, 'foo')
    assert_equal 'foo', Main.get(@hash, 0)
    Main.set(@hash, 1, 'bar')
    assert_equal 'bar', Main.get(@hash, 1)
  end

  def test_set_on_nonempty_index
    Main.set(@hash, 1, 'foo')
    assert_equal 'foo', Main.get(@hash, 1)
    Main.set(@hash, 1, 'bar')
    assert_equal 'bar', Main.get(@hash, 1)
  end

  def test_remove_on_nonempty_key
    Main.set(@hash, 1, 'foo')
    assert_equal 'foo', Main.get(@hash, 1)
    Main.remove(@hash, 1)
    assert_nil Main.get(@hash, 1)
  end
end
