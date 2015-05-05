require_relative '../test_helper'
require_relative '../../lib/cheer'

class TestCheerGenerator < Minitest::Test
  def test_cheer_exists
    expected = true
    assert_equal expected, output
  end
end
