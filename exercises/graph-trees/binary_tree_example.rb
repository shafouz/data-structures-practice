# frozen_string_literal: true

# poop
class Node
  attr_accessor :root, :left, :right, :value

  def initialize(value)
    @value = value
  end
end

def push_node(node, value)
  if value > node.value
    if node.right
      push_node(node.right, value)
    else
      node.right = Node.new(value)
    end
  else
    if node.left
      push_node(node.left, value)
    else
      node.left = Node.new(value)
    end
  end
end

def median(array)
  array.sort!
  length = (array.length - 1)
  medio = array[length / 2]
  medio = (array[(length / 2)] + array[(array.length / 2)]) / 2 if length.even?
  medio
end

def in_order_traversal(node, array)
  return if node.nil?

  in_order_traversal(node.left, array)
  array << node.value
  in_order_traversal(node.right, array)
end

def find_node(node, value)
  return false unless node
  return true if node.value == value

  find_node(node.left, value) || find_node(node.right, value)
end

array = []
(0..10).each do |i|
  array[i] = rand(100)
end
p "median #{median(array)}"
root = Node.new(median(array))
array.each { |j| push_node(root, j) }
in_order_traversal(root, array)
