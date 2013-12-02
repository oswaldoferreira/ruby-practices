require 'date'

class SecondCalculator
  def initialize(day, hour, minute, second)
    @day, @hour, @minute, @second = day, hour, minute, second
  end

  def convert_all_to_sec
    self.convertion_hash.values.inject(:+) + @second
  end
  
  def convertion_hash
    { 
      :day_to_sec => @day * 24 * 60 * 60,
      :hour_to_sec => @hour * 60 * 60,
      :minute_to_sec => @minute * 60,
    }
  end
end
