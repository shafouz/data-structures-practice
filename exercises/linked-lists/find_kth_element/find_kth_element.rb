require_relative '../linked_list/linked_list.rb'

def find_to_last_element(node, position)
  length = Node.length(node)
  return nil if node.data.nil?
  return nil if position >= length
  return node if position == 0
  (0..length-position-1).each do
    node = node.succ
  end
  return node
end

root = Node.new(10)
Node.insert_node(root, 2)
Node.insert_node(root, 1)
Node.insert_node(root, 4)
Node.insert_node(root, 3)
Node.insert_node(root, 8)

pp find_to_last_element(root, 3)