# frozen_string_literal: true

# integers only
# :nodoc
class Main < StandardError; end
# :nodoc
class Main
  def self.get(hash, key)
    hash[key]
  end

  def self.set(hash, key, value)
    hash[key] = value
  end

  def self.remove(hash, key)
    hash[key] = nil
  end
end
