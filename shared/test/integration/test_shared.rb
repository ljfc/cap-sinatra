require 'minitest/autorun'
require_relative 'support_for_db'
require_relative '../../lib/shared'

class TestSharedIntegration < Minitest::Test

  def test_find_parent
    DB[:parents].insert name: 'Foo'
    parent = Shared::Person.find_parent('Foo')
    assert_equal 'Foo', parent.name
    DB[:parents].where { name =~ 'Foo' }.delete
  end

  def test_find_parent_not_found
    assert_raises Sequel::NoMatchingRow do
      Shared::Person.find_parent('This will not be found')
    end
  end
end
