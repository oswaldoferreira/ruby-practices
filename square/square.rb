class Square
  attr_accessor :side_meters

  def initialize side_meters=0
    @side_meters = side_meters
  end

  def calculate_area_meters
    @side_meters ** 2
  end
end