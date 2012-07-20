require "bundler/setup"
require "test/unit"
require "rr"

class Test::Unit::TestCase
  include RR::Adapters::TestUnit
end

class FooTest < Test::Unit::TestCase
  def test_foo
    o = mock!
    o.expects(:foo)
  end
end
