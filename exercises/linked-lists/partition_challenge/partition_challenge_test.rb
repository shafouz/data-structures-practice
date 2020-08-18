require 'minitest/autorun'
require 'minitest/reporters'
require_relative './remove_dup.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def setup
    @array = []
  end
  
  def test_remove_dup_on_empty_list?
    root = Node.new
    remove_dup(root)
    assert_equal "", root.data
  end

  def test_remove_dup_on_single_element?
    root = Node.new(22)
    remove_dup(root)
    assert_equal 22, root.data
  end

  def test_remove_dup_on_no_duplicates?
    root = Node.new(22)
    Node.insert_node(root, 1)
    Node.insert_node(root, 2)
    Node.insert_node(root, 3)
    remove_dup(root)
    Node.return_data(root, @array)
    assert_equal true, @array.sort == [22, 1, 2, 3].sort
  end

  def test_remove_dup_on_duplicates?
    root = Node.new(22)
    Node.insert_node(root, 2)
    Node.insert_node(root, 2)
    Node.insert_node(root, 3)
    Node.insert_node(root, 3)
    remove_dup(root)
    Node.return_data(root, @array)
    assert_equal true, @array.sort == [22, 2, 3].sort
  end

  def teardown
    root = nil
  end
end