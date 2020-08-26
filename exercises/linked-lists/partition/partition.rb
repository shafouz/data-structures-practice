require_relative '../linked_list/linked_list.rb'

  def list_partition(node, value)
    small = nil
    big = nil
    while true
      if node.data < value
        if small == nil
          small = Node.new(node.data) 
        else
          Node.insert_node(small, node.data)
        end
      elsif node.data >= value
        if big == nil
          big = Node.new(node.data)
        else
          if node.data == value
            Node.insert_node(big, node.data)
          else
            Node.append_node(big, node.data)
          end
        end
      end
      break if node.succ == nil
      node = node.succ
    end

    Node.ammend_nodes(small, big)
    return small
  end
