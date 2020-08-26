require_relative '../linked_list/linked_list.rb'

def add_reverse(list1, list2)
  return nil if (list1 || list2).nil?
  length = Node.length(list1) > Node.length(list2) ? Node.length(list1) : Node.length(list2)
  sum = []
  surplus = 0
  (0..length-1).each do |i|
    if (list1.data + list2.data + surplus) <= 9
      sum[i] = list1.data + list2.data + surplus
      surplus = 0
    else
      sum[i] = (list1.data + list2.data + surplus) % 10
      surplus = (list1.data + list2.data + surplus) / 10
    end

    list1 = list1.succ
    list2 = list2.succ    
  end
  sum.push(surplus) if surplus != 0
  return sum
end
