require 'minitest/autorun'
require 'minitest/reporters'
require_relative './stack.rb'
Minitest::Reporters.use!

class NodeTest < Minitest::Test
  def test_push_stack_and_peek
    root = Node.new(5)
    stack = Stack.new
    stack.push(root)
    assert_equal 5, stack.peek.data
    assert_equal root, stack.peek
  end
  
  def test_is_empty?
    stack = Stack.new
    assert_nil stack.data
  end

  def test_stack_pop
    root = Node.new(2)
    node1 = Node.insert_node(root, 8)
    stack = Stack.new
    stack.push(root)
    stack.push(node1)
    stack.pop
    assert_equal 8, stack.peek.data
    stack.pop
    assert_nil stack.data
  end
end