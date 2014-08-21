module Stacker
  def stack
    @stack ||= []
  end

  def add generic_objects
    stack << generic_objects
    stack.flatten!
  end

  def remove
    stack.pop
  end
end