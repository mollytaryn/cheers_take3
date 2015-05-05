require_relative '../test_helper'
require_relative '../../lib/birthday_parser'

class TestBirthdayParser < Minitest::Test
  def test_birthday_exists
    expected = true
    assert_equal expected, output
  end
end
