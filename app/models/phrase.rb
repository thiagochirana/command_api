class Phrase < ApplicationRecord
  def self.random
    Phrase.order("RANDOM()").first
  end
end
