require 'minitest/autorun'
require 'minitest/reporters'
require_relative './binary_tree.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_results
    array = [0, 1, 2, 4, 5, 6]
    root = Node.new(Node.median(array))
    array.each {|i| Node.push_node(root, i)}
    assert_equal 3, Node.tree_height(root)
  end

  def test_results_2
    array = [0, 1, 2, 3, 4, 5, 6, 7]
    root = Node.new(Node.median(array))
    array.each {|i| Node.push_node(root, i)}
    assert_equal 4, Node.tree_height(root)
  end
end