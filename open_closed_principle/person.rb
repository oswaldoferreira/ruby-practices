class Person
  attr_reader :stamina

  def initialize(attributes)
    @stamina = attributes.fetch(:stamina)
  end

  def walk(loss)
    if @stamina >= loss
      @stamina -= loss
      true
    else
      false
    end
  end

  def run(loss)
    if @stamina >= loss
      @stamina -= loss
      true
    else
      false
    end
  end
end