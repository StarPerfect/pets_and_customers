class Groomer
  attr_reader :name, :customers

  def initialize(name, customers)
    @name = name
    @customers = customers
  end

  def find_outstanding_balances
    @customers.select{ |customer| customer.outstanding_balance != 0 }
  end

  def how_many(type)
    @customers.map do |customer|
      customer.pets.select{|pet| pet.type == type}.count
    end.sum
  end
end
