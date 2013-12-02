class Student
  attr_accessor :registration, :name, :registration_date, :grade, :registered

  def initialize registration, name, registration_date
    @registration = registration
    @name = name
    @registration_date = registration_date
    @grade = nil
    @registered = false
  end

  def register
    @registered = true
  end
end