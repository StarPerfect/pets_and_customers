class DayCare
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find(id)
    @customers.find{|customer| customer.id == id}
  end

  def find_unfed
    @customers.map do |customer|
      customer.pets.find_all{|pet| pet.fed? == false}
    end.flatten
  end
end
