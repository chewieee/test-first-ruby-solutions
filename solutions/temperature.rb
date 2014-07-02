# 10_temeperature_object

class Temperature

  def initialize(opts = {})

    if opts.has_key?(:f)

     # @c_degrees = (opts[:f] - 32) * 5.0/9.0 - subbed class method
       @c_degrees = Temperature.ftoc(opts[:f])
    
    else

      @c_degrees = opts[:c]

    end

  end


  def in_fahrenheit

    # (@c_degrees * 9.0/5.0) + 32 -subbed class method
    Temperature.ctof(@c_degrees)

  end


  def in_celsius
    @c_degrees
  end


  # Factory Method
  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end


  # Factory Method
  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end


  def self.ftoc(temp)
    (temp - 32) * 5.0/9.0
  end


  def self.ctof(temp)
    (temp * 9.0/5.0) + 32
  end


end



class Celsius < Temperature

  def initialize(arg)
    super(:c => arg)
  end

end

class Fahrenheit < Temperature

  def initialize(arg)
    super(:f => arg)
  end

end
