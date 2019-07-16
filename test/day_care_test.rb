require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/day_care'
require './lib/customer'
require './lib/pet'

class DayCareTest < Minitest::Test

  def setup
    @daycare = DayCare.new('AAA DayCare')
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
    @daycare = DayCare.new('AAA DayCare')
  end

  def test_daycare_exists
    assert_instance_of DayCare, @daycare
  end

  def test_attributes
    assert_equal 'AAA DayCare', @daycare.name
    assert_equal [], @daycare.customers
  end

  def test_add_customers
    @daycare.add_customer(@dog_mom)

    assert_equal [@dog_mom], @daycare.customers
  end

  def test_find_customer_by_id
    @daycare.add_customer(@dog_mom)
    @daycare.add_customer(@cat_mom)

    assert_equal @dog_mom, @daycare.find(1)
  end

  def test_find_unfed
    @daycare.add_customer(@dog_mom)
    @spaz.feed

    assert_equal [@sativa], @daycare.find_unfed
  end
end
