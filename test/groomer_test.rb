require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/groomer'
require './lib/customer'
require './lib/pet'

class GroomerTest < Minitest::Test
  def setup
    @spaz = Pet.new({name: 'Spaz', type: 'Boxer'})
    @sativa =  Pet.new({name: 'Sativa', type: 'Boxer'})
    @dog_mom = Customer.new('Corina', 1)
    @dog_mom.adopt(@spaz)
    @dog_mom.adopt(@sativa)
    @lucy_loo = Pet.new({name: 'Lucy Loo', type: 'Scottish Fold'})
    @cindy_who = Pet.new({name: 'Cindy Who', type: 'Munchkin Cat'})
    @cat_mom = Customer.new('Kesley', 2)
    @cat_mom.adopt(@lucy_loo)
    @cat_mom.adopt(@cindy_who)
    @kitty = Pet.new({name: 'Kitty', type: 'Exotic Shorthair'})
    @puppy = Pet.new({name: 'Puppy', type: 'Chow Chow'})
    @generic_mom = Customer.new('Elizabeth', 3)
    @generic_mom.adopt(@kitty)
    @generic_mom.adopt(@puppy)
    @groomer = Groomer.new('Grace', [@dog_mom, @cat_mom, @generic_mom])
  end
  def test_groomer_exists
    assert_instance_of Groomer, @groomer
  end

  def test_groomer_finds_outstanding_balances
    @cat_mom.charge(50)
    @generic_mom.charge(150)

    assert_equal [@cat_mom, @generic_mom], @groomer.find_outstanding_balances
  end

  def test_groomer_can_count_types
    assert_equal 2, @groomer.how_many('Boxer')
  end
end
