require "test_helper"

class WordgenTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Wordgen::VERSION
  end

  def test_random_returns_a_string
    random = Wordgen.random

    assert !random.nil?
    assert random.is_a?(String)
  end

  def test_all_words_are_not_the_same
    words = (1..5).map do
      Wordgen.random
    end

    puts "words = #{words}"

    assert words.uniq.length > 1, "Expected at least one word to be different"
  end
end
