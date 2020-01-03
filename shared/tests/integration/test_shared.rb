require 'minitest/autorun'
require_relative 'support_for_db'

class TestShared < Minitest::Test
  def test_something
    DB[:parents].insert name: 'Integrated Name'
    assert_equal 1, DB[:parents].count
  end
end
