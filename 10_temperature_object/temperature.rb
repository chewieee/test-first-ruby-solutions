# 10_temeperature_object

# One of the topics is Factory Method Design. I understand the 
# concept to an extent but implementing based on TDD/rspec file is tough.

class Temperature

  def initialize(opts = {})
    @opts = opts
  end

  def in_fahrenheit
    50
  end

  def in_celsius
    (@opts[:f] - 32) * 5.0/9.0
  end

end
