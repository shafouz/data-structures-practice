require 'minitest/autorun'
require 'minitest/reporters'
require_relative './find_kth_element.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_empty_list
    root = Node.new
    assert_nil find_to_last_element(root, 1)
  end

  def test_equal_or_higher_than_length
    root = Node.new(2)
    assert_nil find_to_last_element(root, 2)
  end

  def test_one_element
    root = Node.new(3)
    assert_equal root, find_to_last_element(root, 0)
  end

  def test_kth_element
    root = Node.new(5)
    Node.insert_node(root, 51)
    Node.insert_node(root, 7)
    Node.insert_node(root, 98)
    Node.insert_node(root, 22)
    Node.insert_node(root, 10)
    assert_equal 5, find_to_last_element(root, 1).data
  end
end