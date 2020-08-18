require 'minitest/autorun'
require 'minitest/reporters'
require_relative './binary_tree.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_results
    array = [3, 8, 2, 4, 6, 12, 1, 7, 10, 15, 9]
    root = Node.new(5)
    array.each {|i| Node.push_node(root, i)}
    assert_equal 5, Node.get_next(root)
    assert_equal 6, Node.get_next()
    assert_equal 9, Node.get_next()
  end
end
