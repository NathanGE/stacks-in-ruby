class Stack
  attr_reader :data

  def initialize
    @data = []
  end

  def push(value)
    @data.push(value)
  end

  def pop
    @data.pop
  end

  def empty?
    @data.empty?
  end

  def peek
    @data[-1]
  end
end
