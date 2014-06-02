# 11_dictionary

class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(arg)
    if arg.class == String
      entries[arg] = nil
    elsif entries = arg.each do |key, value|
      @entries[key] = value
      end
    end
  end

  def keywords
    entries.keys
  end

  def include?(key)
    entries.has_key?(key)
  end

  def find(word)
    # Having trouble here. Terminal error says undefined 
    # method 'empty?' for nil:NilClass.
    # When adding a hash method to check whether a key exists
    # the error changes to undefined method 'empty?' for false:FalseClass
  end


end
