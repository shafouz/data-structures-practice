require 'minitest/autorun'
require 'minitest/reporters'
require_relative './palindrome.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_is_palindrome?
    array = []
    root = Node.new(22)
    Node.return_data(root, array)
    assert_equal true, is_palindrome?(array)
    Node.insert_node(root, 2)
    Node.return_data(root, array)
    assert_equal true, is_palindrome?(array)
    Node.insert_node(root, "2")
    Node.return_data(root, array)
    assert_equal true, is_palindrome?(array)
  end
end