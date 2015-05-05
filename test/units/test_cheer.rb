require_relative '../test_helper'
require_relative '../../lib/cheer'

class TestCheerGenerator < Minitest::Test
  def test_happy_path_name
    actual = Cheer.for_person("Ed")
    expected = "Give me an.. E!\n" +
               "Give me a... D!\n" +
               "Ed's just Grand!\n"
    assert_equal expected, actual
  end
end
