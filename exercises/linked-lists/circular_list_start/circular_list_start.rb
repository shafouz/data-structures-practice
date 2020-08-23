require_relative '../linked_list/linked_list.rb'

  def circular_list(node)
    first = node
    while true
      if node.succ == nil
        node.succ = first
        break
      end
      node = node.succ
    end
  end

  def find_start(node)
    fast = nil
    slow = nil
    count = 0
    (0..10).each do
      if slow != fast  
        slow = node.succ
        (0..1).each do
          fast = node.succ
        end
      else
        slow = node.succ
        # length of loop
        count += 1
      end
    end
    
    10.times {slow = node.succ}
    while true
      slow = node.succ
      (0..1).each do
        fast = node.succ
      end
      return slow if slow == fast
    end
  end
