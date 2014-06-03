# 11_dictionary

class Dictionary

def initialize
  @entries = {}
end

def entries
  @entries 
end

def add(arg)
  # Makes argument a key with nil as value
  if arg.class == String
    @entries[arg] = nil
  else
    @entries = entries.merge(arg)
  end
end

def keywords
  @entries.keys.sort
end

def include?(arg)
  @entries.key?(arg)
end

def find(arg)
  # Stirng method start_with? checks string keys for arg string
  @entries.select{ |key, value| key.start_with? arg }

end

def printable
  @entries.sort.map do |key,value|
  "[#{key}] \"#{value}\""

    end.join("\n")
  end
end
