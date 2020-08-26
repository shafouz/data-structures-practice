require 'minitest/autorun'
require 'minitest/reporters'
require_relative './linked_list.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_insert_node_to_front
    root = Node.new(4)
    Node.insert_node(root, 1)
    assert_equal 1, root.data
    Node.insert_node(root, 2)
    assert_equal 2, root.data
    Node.insert_node(root, 3)
    assert_equal 3, root.data
  end

  def test_append_node
    root = Node.new(1)
    Node.append_node(root, 5)
    assert_equal 5, root.succ.data
    Node.append_node(root, 4)
    assert_equal 4, root.succ.succ.data
    Node.append_node(root, 3)
    assert_equal 3, root.succ.succ.succ.data
  end

  def test_find_node
    root = Node.new(5)
    Node.insert_node(root, 4)
    Node.insert_node(root, 3)
    Node.insert_node(root, 2)
    Node.insert_node(root, 1)
    assert_equal true, Node.find_node(root, 5)
    assert_equal true, Node.find_node(root, 4)
    assert_equal true, Node.find_node(root, 3)
    assert_equal true, Node.find_node(root, 2)
    assert_equal true, Node.find_node(root, 1)
    assert_equal false, Node.find_node(root, 0)
  end

  def test_delete_node
    root = Node.new(5)
    Node.insert_node(root, 4)
    Node.insert_node(root, 3)
    Node.insert_node(root, 2)
    Node.insert_node(root, 1)
    Node.delete_node(root, 4)
    assert_equal false, Node.find_node(root, 4)
    Node.delete_node(root, 1)
    assert_equal false, Node.find_node(root, 1)
  end

  def test_list_length
    root = Node.new(5)
    Node.insert_node(root, 4)
    Node.insert_node(root, 3)
    Node.insert_node(root, 2)
    Node.insert_node(root, 1)
    assert_equal 5, Node.length(root)
  end

  def test_ammend_nodes
    root1 = Node.new(2)
    Node.insert_node(root1, 5)
    root2 = Node.new(3)
    Node.insert_node(root2, 10)
    Node.ammend_nodes(root1, root2)
    assert_equal 5, root1.data
    assert_equal 2, root1.succ.data
    assert_equal 10, root1.succ.succ.data
    assert_equal 3, root1.succ.succ.succ.data
  end
end