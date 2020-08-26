require 'minitest/autorun'
require 'minitest/reporters'
require_relative './add_reverse.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_add_reverse
    list1 = Node.new(3)
    Node.insert_node(list1, 2)
    Node.insert_node(list1, 8)
    Node.insert_node(list1, 9)

    list2 = Node.new(5)
    Node.insert_node(list2, 5)
    Node.insert_node(list2, 1)
    Node.insert_node(list2, 7)

    assert_equal [6, 0, 8, 8], add_reverse(list1, list2)
  end
end