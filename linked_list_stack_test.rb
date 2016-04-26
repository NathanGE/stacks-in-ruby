require 'minitest/autorun'
require_relative 'linked_list_stack'

class LinkedListStackTest < Minitest::Unit::TestCase
  def test_stack_methods
    node1 = LinkedListNode.new(44)
    node2 = LinkedListNode.new(38, node1)
    node3 = LinkedListNode.new(12, node2)
    stack = Stack.new
    stack.push(node1)
    stack.push(node2)
    stack.push(node3)
    assert_equal print_values(node3), print_values(stack.pop)
    assert_equal print_values(node2), print_values(stack.peek)
    assert_equal print_values(node2), print_values(stack.pop)
    assert_equal print_values(node1), print_values(stack.pop)
    assert_equal true, stack.empty?
  end
end