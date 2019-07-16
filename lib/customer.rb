require './lib/pet'
require './lib/charge'
require './lib/service'

class Customer
  attr_reader :name, :id, :pets, :outstanding_balance

  def initialize(name, id)
    @name = name
    @id = id
    @pets = []
    @outstanding_balance = 0
  end

  def adopt(pet)
    @pets << pet
  end

  def charge(service)
    require "pry"; binding.pry
    @outstanding_balance += service.charge
  end
end
