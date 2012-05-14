require 'minitest/autorun'

# Assertions: http://bfts.rubyforge.org/minitest/MiniTest/Assertions.html

class TestBoolean < MiniTest::Unit::TestCase

  def test_true_is_true
    @boolean = true
    assert_equal @boolean, true
  end
end
