require 'minitest/autorun'
require 'minitest/reporters'
require_relative './compress.rb'
Minitest::Reporters.use!

class CompressTest < Minitest::Test
  def test_results
    assert_equal '', Compress.compress_string('')
    assert_equal 'AABBCC', Compress.compress_string('AABBCC')
    assert_equal 'A3BCCD4', Compress.compress_string('AAABCCDDDD')
    assert_equal 'aaBCCEF4KKM6P ta3mmanlaar4 se9k to3', Compress.compress_string('aaBCCEFFFFKKMMMMMMP taaammanlaarrrr seeeeeeeeek tooo')
  end
end