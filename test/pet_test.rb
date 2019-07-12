require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/pet'

class PetTest < Minitest::Test
  def setup
    @samson = Pet.new({name: "Samson", type: :dog})
  end

  def test_pet_exists
    assert_instance_of Pet, @samson
  end

  def test_pet_attributes
    assert_equal "Samson", @samson.name
    assert_equal :dog, @samson.type
    refute @samson.fed?

    @samson.feed
    assert @samson.fed?
  end
end
