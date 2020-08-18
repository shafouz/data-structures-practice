require 'minitest/autorun'
require 'minitest/reporters'
require_relative './compress.rb'
Minitest::Reporters.use!

class CompressTest < Minitest::Test
  def test_results
    assert_equal '', Compress.compress_string('')
    assert_equal 'AABBCC', Compress.compress_string('AABBCC')
    assert_equal 'A3BC2D4E', Compress.compress_string('AAABCCDDDDE')
    assert_equal 'BA3C2D4', Compress.compress_string('BAAACCDDDD')
    assert_equal 'A3BA2C2D4', Compress.compress_string('AAABAACCDDDD')
  end
end