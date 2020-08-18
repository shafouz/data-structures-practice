require 'minitest/autorun'
require 'minitest/reporters'
require_relative './binary_tree.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_results
    array = [10, 5, 3, 2, 8, 4, 15, 12, 20, 30]
    root = Node.new(Node.median(array))
    array.each {|i| Node.push_node(root, i)}
    assert_equal 20, Node.find_second_highest(root)
  end

  def test_results2
    array = [5, 3, 7, 9]
    root = Node.new(10)
    array.each {|i| Node.push_node(root, i)}
    assert_equal 9, Node.find_second_highest(root)
  end
end
