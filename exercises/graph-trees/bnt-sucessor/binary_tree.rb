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
  
  def self.max(*values)
    values.max
  end
  
  def self.tree_height(node)
    if node.nil?
      return -1
    else
      return max(tree_height(node.left), tree_height(node.right)) + 1
    end
  end

  def self.find_highest_node(node)
    if node.right.nil?
      return node.value
    else
      return find_highest_node(node.right)
    end
  end

  def self.find_second_highest(node)
    if node.right.nil?
      return find_highest_node(node.left)
    elsif node.right.value == find_highest_node(node)
      return node.value
    else
      return find_second_highest(node.right)
    end
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
    
  array = [3, 8, 2, 4, 6, 12, 1, 7, 10, 15, 9]
  arr = []
  root = Node.new(5)
  array.each {|i| Node.push_node(root, i)}
  p get_next(root, 3)

  end
  