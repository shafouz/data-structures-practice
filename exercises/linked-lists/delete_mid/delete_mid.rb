require_relative '../linked_list/linked_list.rb'

def delete_mid_node(node)
  temp = [node.succ.data, node.succ.succ]
  node.data = temp[0]
  node.succ = temp[1]
end