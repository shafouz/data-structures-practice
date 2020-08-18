# frozen_string_literal: true

class Node
attr_accessor :left, :right, :value
attr_reader :left, :right, :value

def initialize(value)
  @value = value
end

def self.median(array)
  length = (array.length - 1)
  medio = array[length / 2]
  medio = (array[(length / 2)] + array[(array.length / 2)]) / 2 if length.even?
  medio
end

def self.push_node(node, value)
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

def self.in_order_traversal(node, array)
  return if node.nil?

  in_order_traversal(node.left, array)
  array << node.value
  in_order_traversal(node.right, array)
end

array = [4, 2, 5, 3]
arr = []
root = Node.new(1)
array.each {|i| push_node(root, i)}
in_order_traversal(root, arr)

end
