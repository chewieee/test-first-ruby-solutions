# 10_temeperature_object

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
