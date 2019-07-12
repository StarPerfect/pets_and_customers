class Groomer
  attr_reader :name, :customers

  def initialize(name, customers)
    @name = name
    @customers = customers
  end
end
