require_relative '../test_helper'

class TestCheers < Minitest::Test

  def test_no_input
    fail
  end

  def test_bad_birthday_format
    fail
  end

  def test_happy_path_with_birthday_in_future
    fail
  end

  def test_happy_path_with_recent_birthday
    fail
  end

  def test_bad_birthday_format
    fail
  end
  
  def test_helper_message
    output = `./cheers`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [MM/DD Birthday]`
EOS
    assert_equal expected, output
  end
end
