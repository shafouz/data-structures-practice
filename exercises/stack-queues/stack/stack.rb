require_relative '../../linked-lists/linked_list/linked_list.rb'

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = Node.new(value, @data)
  end

  def pop
    @data = data.succ
  end

  def peek
    data = @data.data
  end

  def is_empty?
    @data == nil
  end
end
