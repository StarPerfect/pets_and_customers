require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/charge'

class ChargeTest < Minitest::Test
  def test_charge_exists
    twenty = Charge.new(20)

    assert_instance_of Charge, twenty
  end

  def test_charge
    twenty = Charge.new(20)

    assert_equal 20, twenty.amount
  end
end
