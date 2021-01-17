# frozen_string_literal: true

# nodoc
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

  def inspect
    { @value => @next }
  end
end
