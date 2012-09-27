require 'minitest/autorun'

# Expectations:  http://bfts.rubyforge.org/minitest/MiniTest/Expectations.html

describe "Trying Minitest spec" do
  it "true should be true" do
    @boolean = true
    @boolean.must_equal true
  end
end
