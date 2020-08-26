require 'minitest/autorun'
require 'minitest/reporters'
require_relative './delete_mid.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_delete_mid
    root = Node.new(5)
    node1 = Node.new(1, root)
    node2 = Node.new(2, node1)
    node3 = Node.new(10, node2)
    delete_mid_node(node2)
    assert_equal [10, 1, 5], Node.return_data(node3) 
  end
end