require "wordgen/version"

module Wordgen

  WORDS = [
    "table",
    "chair",
    "buffalo",
    "coffee",
    "redbull"
    ].freeze

  def self.random
    WORDS.sample
  end
end
