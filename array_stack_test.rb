require 'minitest/autorun'
require_relative 'array_stack'

class ArrayStackTest < Minitest::Unit::TestCase
  def test_stack_methods
    stack = Stack.new
    stack.push(5)
    stack.push(9)
    stack.push(12)
    assert_equal (puts 12), (puts stack.pop)
    assert_equal (puts 9), (puts stack.peek)
    assert_equal (puts 9), (puts stack.pop)
    assert_equal (puts 5), (puts stack.pop)
    assert_equal (puts true), (puts stack.empty?)
  end
end