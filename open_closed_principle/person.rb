class Person
  attr_reader :stamina, :actions

  def initialize(attributes)
    @stamina = attributes.fetch(:stamina, 8)
    @actions = attributes.fetch(:actions, {})
  end

  def do(action_name, loss)
    @actions[action_name].induce(loss)
  end
end