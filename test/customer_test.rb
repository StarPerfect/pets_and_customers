require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/customer'
require './lib/pet'

class CustomerTest < Minitest::Test
  def setup
    @joel = Customer.new('Joel', 2)
  end

  def test_customer_exists
    assert_instance_of Customer, @joel
  end

  def test_attributes
    assert_equal 'Joel', @joel.name
    assert_equal 2, @joel.id
    assert_equal [], @joel.pets
  end

  def test_customer_can_adopt
    samson = Pet.new({name: "Samson", type: :dog})
    lucy = Pet.new({name: "Lucy", type: :cat})
    @joel.adopt(samson)
    @joel.adopt(lucy)

    assert_equal [samson, lucy], @joel.pets
  end

  def test_initial_outstanding_balance
    assert_equal 0, @joel.outstanding_balance
  end

  def test_add_charges
    
    @joel.charge()
    @joel.charge(7)

    assert_equal 22, @joel.outstanding_balance
  end
end
