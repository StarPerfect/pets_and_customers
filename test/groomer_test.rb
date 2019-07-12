require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/groomer.rb'

class GroomerTest < Minitest::Test
  def setup
    @groomer = Groomer.new('Grace', {dog_mom: ['Spaz', 'Sativa'], cat_mom: ['Lucy Loo', 'Cindy Who'], both_mom: ['Kitty', 'Puppy']})
  end
  def test_groomer_exists
    assert_instance_of Groomer, @groomer
  end
end
