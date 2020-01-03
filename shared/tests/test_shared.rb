require 'minitest/autorun'

require_relative '../lib/shared'

class TestShared < Minitest::Test
  def setup
    @person = Shared::Person.new('Foo')
  end

  def test_something
    assert true
  end

  def test_person_name
    assert @person.name == 'Foo'
  end

  def test_person_digest
    assert_equal 'HL7HN/hj5JIs7mPMLrv6r80c/4t5DYz9LmpdVQtkivo=', @person.digest
  end

  def test_to_json
    assert_equal(
      {
        :name => 'Foo',
        :digest => 'HL7HN/hj5JIs7mPMLrv6r80c/4t5DYz9LmpdVQtkivo=',
        :from_shared => true
      }.to_json,
      @person.to_json
    )
  end
end
