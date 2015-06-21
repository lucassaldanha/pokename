require 'helper'

class TestPokename < Test::Unit::TestCase
  should "have 150 pokemon names" do
    assert_equal(150, Pokename.names.count)
  end

  should "return a name when call select_random_name" do
    @name = Pokename.select_random_name
    assert_not_empty(@name)
    assert_true(Pokename.names.include? @name)
  end

end
