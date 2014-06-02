# 11_dictionary

class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(arg)
    @entries = arg
  end

  def keywords
    @entries.keys
  end

end
