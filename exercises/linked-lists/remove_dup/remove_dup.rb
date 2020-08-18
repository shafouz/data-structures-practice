require_relative '../linked_list/linked_list.rb'

  def remove_dup(node)
    while !node.data.blank? && !node.succ.blank? do
      temp_node = node
      while !temp_node.succ.blank? do
        if node.data == temp_node.succ.data
          dup = temp_node.succ
          temp_node.succ = temp_node.succ.succ
        else
          temp_node = temp_node.succ
        end
      end
      node = node.succ
    end
  end
