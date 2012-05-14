require 'minitest/autorun'

describe "Trying Minitest spec" do
  it "true should be tree" do
    @boolean = true
    @boolean.must_equal true
  end
end
