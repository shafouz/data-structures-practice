require 'minitest/autorun'
require 'minitest/reporters'
require_relative './binary_tree.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_results
    root = Node.new(5)
    array = []
    Node.push_node(root, 2)
    Node.push_node(root, 8)
    Node.push_node(root, 1)
    Node.push_node(root, 3)
    Node.in_order_traversal(root, array)
    assert_equal [1, 2, 3, 5, 8], array
  end

  def test_results_2
    root = Node.new(1)
    array = []
    Node.push_node(root, 2)
    Node.push_node(root, 3)
    Node.push_node(root, 4)
    Node.push_node(root, 5)
    Node.in_order_traversal(root, array)
    assert_equal [1, 2, 3, 4, 5], array
  end
end