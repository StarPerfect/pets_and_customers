require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/groomer'
require './lib/customer'
require './lib/pet'
require './lib/service'
require './lib/charge'

class ServiceTest < Minitest::Test
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
    @wash_and_dry = Service.new('Wash & Dry', 20)
  end

  def test_service_exists
    assert_instance_of Service, @wash_and_dry
  end

  def test_attributes
    assert_equal 20, @wash_and_dry.charge.amount
    assert_equal 'Wash & Dry', @wash_and_dry.service
  end
end
