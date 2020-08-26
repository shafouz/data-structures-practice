require 'minitest/autorun'
require 'minitest/reporters'
require_relative './partition.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def setup
    @array = []
  end

  def test_partition_general
    root_node = Node.new(12)
    Node.insert_node(root_node, 10)
    Node.insert_node(root_node, 1)
    Node.insert_node(root_node, 10)
    Node.insert_node(root_node, 8)
    Node.insert_node(root_node, 7)
    Node.insert_node(root_node, 3)
    Node.insert_node(root_node, 4)
    root_node = list_partition(root_node, 10)
    Node.return_data(root_node, @array)
    assert_equal [1, 8, 7, 3, 4, 10, 10, 12], @array
  end

  def test_partition_right_empty
    root_node = Node.new(10)
    Node.insert_node(root_node, 8)
    Node.insert_node(root_node, 2)
    Node.insert_node(root_node, 4)
    Node.insert_node(root_node, 1)
    root_node = list_partition(root_node, 10)
    Node.return_data(root_node, @array)
    assert_equal [8, 2, 4, 1, 10], @array
  end

  def test_partition_left_empty
    root_node = Node.new(10)
    Node.insert_node(root_node, 3)
    Node.insert_node(root_node, 2)
    Node.insert_node(root_node, 4)
    Node.insert_node(root_node, 1)
    root_node = list_partition(root_node, 2)
    Node.return_data(root_node, @array)
    assert_equal [1, 2, 4, 3, 10], @array
  end

  def teardown
    root_node = nil
  end
end