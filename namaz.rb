require 'solareventcalculator'

class Namaz
  attr_accessor :day, :latitude, :longitude

  def initialize(day, latitude, longitude)
    @day, @latitude, @longitude = day, latitude, longitude
  end

  def time_for(which)

  end
end
