require 'minitest/autorun'
require 'minitest/reporters'
require_relative './circular_list_start.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_is_circular_list
    root = Node.new(3)
    node1 = Node.new(1, root)
    Node.insert_node(root, 5)
    Node.insert_node(root, 8)
    Node.insert_node(root, 7)
    Node.insert_node(root, 4)
    Node.insert_node(root, 2)
    circular_list(root)
    assert_equal 2, find_start(node1).data
  end
end