class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} -->"
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(val)
    previous = @data
    @data = LinkedListNode.new(val.value, @data)
  end

  def pop
    popped = @data
    @data = popped.next_node
    popped
  end

  def empty?
    @data == nil
  end
end

node1 = LinkedListNode.new(44)
node2 = LinkedListNode.new(38, node1)
node3 = LinkedListNode.new(12, node2)

stack = Stack.new
