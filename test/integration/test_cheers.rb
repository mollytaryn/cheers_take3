require_relative '../test_helper'

class TestCheers < Minitest::Test

  def test_happy_path
    shell_output = ""
    expected = ""
    IO.popen('./cheers', 'r+') do |pipe|
      expected << "Hello, what's your name?\n"
      pipe.puts "Ed"
      #cheers then cheers:
      expected << "Give me an.. E\n"
      expected << "Give me a.. D\n"
      expected << "Ed's just GRAND!\n"
      #cheers then asks:
      expected << "Hey Ed, what's your birthday? (mm/dd)\n"
      pipe.puts "05/06"
      #cheers outputs: "Awesome! Your birthday is in 1 day! Happy Birthday in advance!"
      pipe.close_write
      shell_output = pipe.read
    end
    assert_equal expected, shell_output
  end

  def test_no_input
    shell_output = ""
    expected = ""
    IO.popen('./cheers', 'r+') do |pipe|
      expected << "Hello, what's your name?\n"
      pipe.puts ""
      #cheers then cheers:
      expected << "Give me an.. E\n"
      expected << "Give me a.. D\n"
      expected << "Ed's just GRAND!\n"
      #cheers then asks:
      expected << "Hey Ed, what's your birthday? (mm/dd)\n"
      pipe.puts "05/06"
      #cheers outputs: "Awesome! Your birthday is in 1 day! Happy Birthday in advance!"
      pipe.close_write
      shell_output = pipe.read
    end
    assert_equal expected, shell_output
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
