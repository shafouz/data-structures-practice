# frozen_string_literal: true

require "active_support"
require "active_support/core_ext/object/blank"

class Node
  attr_accessor :succ, :data
  attr_reader :succ, :data

  def initialize(data=nil, succ=nil)
    @data, @succ = data, succ
  end
  
  # Inserts a node in the first position
  def self.insert_node(node, data)
    temp = [node.data, node.succ]
    node.data = data
    node.succ = Node.new(temp[0], temp[1])
  end

  # Inserts a node in the last position
  def self.append_node(node, data)
    if node.succ.blank?
      node.succ = Node.new(data)
      return
    end
    append_node(node.succ, data)
  end

  # Search for node data, and return true or false
  def self.find_node(node, data)
    return true if node.data == data
    return false if node.succ.blank?
    find_node(node.succ, data)
  end
  
  # Delete a node
  def self.delete_node(node, data)
    if node.succ.data == data
      node.succ = node.succ.succ
      return
    end
    if node.data == data
      node.data = node.succ.data
      node.succ = node.succ.succ
      return
    end
    return if node.succ.blank?
    delete_node(node.succ, data)
  end

  # Find the length of a list. It will return 1 if the list is empty or has only one node.
  def self.length(node, count=1)
    return count if node.succ.blank?
    length(node.succ, count+1)
  end

  def self.return_data(node, array=[])
    array << node.data
    return array if node.succ.blank?
    return_data(node.succ, array)
  end

  def self.ammend_nodes(node1, node2)
    while true
      if node1.data != nil && node1.succ == nil
        node1.succ = node2
        return
      end
      node1 = node1.succ
    end
  end
end
