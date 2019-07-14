require './lib/customer'
require './lib/pet'

class ServiceCharge
  attr_reader :service, :customer, :pet, :amount

  def initialize(details)
    @service = details[:service]
    @customer = details[:customer]
    @pet = details[:pet]
    @amount = details[:amount]
  end
end
